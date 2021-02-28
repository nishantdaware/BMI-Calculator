import 'package:flutter/material.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatefulWidget {
  @override
  _BmiAppState createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {

double height,weight,result;
String status;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('BMI Calculator')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Enter Your Height (in meters)",style: TextStyle(
                fontSize: 20
              ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  height = double.parse(value);
                },
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("Enter Your Weight (in kilograms)",style: TextStyle(
                  fontSize: 20
              ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  weight = double.parse(value);
                },
              ),
            ),
            SizedBox(height: 20,),
            FloatingActionButton(backgroundColor: Colors.green,child: Text("BMI"),onPressed: () {
              setState(() {
                result = weight/(height*height);
                if(result<18)
                  {
                    status = "You are Underweighted";
                  }
                else if(result>26)
                  {
                    status = "You are Overweighted";
                  }
                else
                  {
                    status = "You are Normal";
                  }
              });
            }),
            SizedBox(height: 20,),
            Center(
              child: Text("Your BMI : ${result.toStringAsFixed(2)} \n\nStatus : $status ",style: TextStyle(
                fontSize: 20
              ),),
            )
          ],
        ),
      ),
    );
  }
}

