import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransformDemo(),
    );
  }
}

class TransformDemo extends StatefulWidget {
  TransformDemo() : super();


  @override
  TransformDemoState createState() => TransformDemoState();
}

class TransformDemoState extends State<TransformDemo> {

  double sliderVal = 0;

  @override
  initState() {
    super.initState();
    sliderVal = 0;
  }

  Slider slider() {
    return Slider(
      value: sliderVal,
      min: 0,
      max: 100,
      onChanged: (val) {
        setState(() {
          sliderVal = val;
        });
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            slider(),
            Container(
              child: Transform.rotate(
                angle: sliderVal,
                origin: Offset(0.0, 0.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        )
    );
  }
}