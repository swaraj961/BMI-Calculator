import 'package:flutter/material.dart';

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

            ],
          ),
        ),
      ),
    );
      
    
  }
}