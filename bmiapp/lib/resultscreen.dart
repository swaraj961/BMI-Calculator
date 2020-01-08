import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultScreen extends StatelessWidget {
  final b1;
  ResultScreen({
    this.b1
  }
    
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
      width: 200,
      height: 200,
      child: b1.isnormal ? SvgPicture.asset('assets/images/happy.svg',fit:BoxFit.contain,):SvgPicture.asset('assets/images/sad.svg',fit:BoxFit.contain,),
              ),
               Text(" Your BMI s ${b1.bmi} ",style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.w900),)
            ],
          ),
        ),
      ),
    );
      
    
  }
}