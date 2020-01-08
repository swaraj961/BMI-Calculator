import 'package:bmiapp/bmimodels.dart';
import 'package:bmiapp/resultscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main () => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: BmiCalculatorScreen()
    ); 
      
    
  }
}
class BmiCalculatorScreen extends StatefulWidget {
  @override
  _BmiCalculatorScreenState createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  double heightofuser = 100.0; //default height
  double weightofuser = 40.0;
 BMIModel b1; //obj of the modelbmi
  double bmi= 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
child: Container( //root container
  width: double.infinity,
  padding: EdgeInsets.all(40),
  child: Column( //1st container for heart images
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Container(
      width: 200,
      height: 200,
      child: SvgPicture.asset('assets/images/heart.svg',fit:BoxFit.contain,),
      

    ),
    SizedBox( //same works as padding or space allingment
      height: 8,
    ),
    Text("BMI Calculator",style: TextStyle(color: Colors.red[700],fontSize: 34,fontWeight: FontWeight.w700),),
     Text("We care about your health",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),),
     SizedBox(
       height: 32,
     ),
      Text("Height (cm) ",style: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.w500),),
      Container( //for slide view input from user 
padding: EdgeInsets.only(left: 16,right: 16),
child: new Slider(
  min:80.0 , //start point of slider
  max:250.0, // end point of slider
 onChanged: (slidevalue){
   setState(() {
     heightofuser = slidevalue;  
   });
 },
 value: heightofuser,
 divisions: 100,
 activeColor: Colors.pink,
label: "$heightofuser", //reference of height to user for lable
  
),

      ),
       Text("$heightofuser cm ",style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.w900),), //display height

//for weight display slider
SizedBox( //padding
  height:24 ,
),
 Text("weight (kg) ",style: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.w500),),
      Container( //for slide view input from user 
padding: EdgeInsets.only(left: 16,right: 16),

child: new Slider(
  min:30.0 , //start point of slider
  max:150.0, // end point of slider
 onChanged: (slidevalue){
   setState(() {
     weightofuser = slidevalue;  
   });
 },
 value: weightofuser,
 divisions: 100,
 activeColor: Colors.pink,
label: "$weightofuser", //reference of height to user
  
),

      ),
       Text("$weightofuser kg ",style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.w900),),
       SizedBox(
         height: 8,
       ),
Container(
  width: double.infinity,
  padding: EdgeInsets.only(left: 16,right: 16),
  child: FlatButton.icon(
    label: new Text("CALCULATE")  ,
  icon: Icon(Icons.favorite,color:Colors.white),
  color: Colors.pink,
  
  onPressed: (){

    setState((
  
    ) {
      bmi = weightofuser/(heightofuser/100)*(heightofuser/100);
      
      if(bmi>=18.5 && bmi <= 25)
      { b1=BMIModel(bmi: bmi,isNormal:true,comments: "You are Fit");
     
      } else if ( bmi<18.5) {
b1=BMIModel(bmi: bmi,isNormal:false,comments: "You are Underweighted");
      }

      else if (bmi>25 && bmi<=30){
        b1=BMIModel(bmi: bmi,isNormal:false,comments: "You are Overweighted");

      } else(
        b1=BMIModel(bmi: bmi,isNormal:false,comments: "You are Obesed")
      ); 
      Navigator.push(context, MaterialPageRoute(
        builder: (context )=> ResultScreen(b1: b1,),
         //passing the screen we want to go so used the navigator tool
      ))  ; 
  },

);
  }

  ),
)
  ],
  ),
  ),
      ),
    );
    
  }
}