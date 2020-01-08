import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResultScreen extends StatelessWidget {
  final b1;

  ResultScreen({this.b1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              height: 200,
              width: 200,
              child: b1.isNormal ? SvgPicture.asset("assets/images/happy.svg", fit: BoxFit.contain,) : SvgPicture.asset("assets/images/sad.svg", fit: BoxFit.contain,) ,
            ),

            SizedBox(
              height: 8,
            ),
            Text("Your BMI is ${b1.bmi.round()}", style: TextStyle(color: Colors.red[700], fontSize: 34, fontWeight: FontWeight.w700),),
            Text("${b1.comments}", style: TextStyle(color: Colors.grey[700], fontSize: 18, fontWeight: FontWeight.w500),),

            SizedBox(height: 16,),

            b1.isNormal ?
            Text("Hurray! Your BMI is Normal.", style: TextStyle(color: Colors.red[700], fontSize: 18, fontWeight: FontWeight.w700),)
                :
            Text("Sadly! Your BMI is not Normal.", style: TextStyle(color: Colors.red[700], fontSize: 18, fontWeight: FontWeight.w700),),
            SizedBox(height: 16,),

            Container(
              child: FlatButton.icon(
                onPressed: (){

                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                label: Text("LET CALCULATE AGAIN"),
                textColor: Colors.white,
                color: Colors.pink,

              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 16, right: 16),
            )

          ],
        ),
      )
    );
  }
}
