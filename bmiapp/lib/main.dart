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
  double weightofuser =40.0;
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
 onChanged: (height){
   setState(() {
     heightofuser = height;  
   });
 },
 value: heightofuser,
 divisions: 100,
label: "$heightofuser", //reference of height to user
  
),

      ),
       Text("$heightofuser cm ",style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.w900),),
//for weight
SizedBox(
  height:24 ,
),
 Text("weight (kg) ",style: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.w500),),
      Container( //for slide view input from user 
padding: EdgeInsets.only(left: 16,right: 16),

child: new Slider(
  min:30.0 , //start point of slider
  max:150.0, // end point of slider
 onChanged: (height){
   setState(() {
     weightofuser = height;  
   });
 },
 value: weightofuser,
 divisions: 100,
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
  onPressed: (){
    
  },
  label: new Text("CALCULATE")  ,
  icon: Icon(Icons.favorite,color:Colors.white),
  color: Colors.red,

)
,

)
  ],
),

)
      )
    );
    
  }
}