import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myslider extends StatefulWidget {
  const myslider({Key? key, required String title}) : super(key: key);
  @override
  State<myslider> createState() => _mysliderState();
}

class _mysliderState extends State<myslider> {
  double _currentvalue=10.0;
  double _value1 = 0.0;
  @override
  void initState() {
    this._currentvalue=100;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Slider(min:0, max: 200, label:_currentvalue.round().toString(),divisions: 10, value: _currentvalue, onChanged: (d){setState((){_currentvalue = d;});}),
              Text("Value is $_value1", style: TextStyle(fontSize: 30)),
              // Image.network(scale:0.1, "https://i.pinimg.com/originals/f2/a5/be/f2a5bee6b217e7276a00feacdc09e391.jpg"),
              // SizedBox(height: 50),
              Slider(min:0, max:100,label:_value1.round().toString(), value: _value1, onChanged: (value){setState((){_value1 = value ;_value1.round();});})
            ],
          ),
        ),
      )
    );
  }
}
