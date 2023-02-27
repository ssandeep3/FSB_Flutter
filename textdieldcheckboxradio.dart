import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textcheckradio extends StatefulWidget {
  const textcheckradio({Key? key, required String title}) : super(key: key);
  @override
  State<textcheckradio> createState() => _textcheckradioState();
}

class _textcheckradioState extends State<textcheckradio> {
  bool? c1=false, c2=false;
  String? choice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Center(
          child:
          SafeArea(
            child: Column(
              children: [
                SizedBox(height:50),
                TextField(
                  // obscureText: true,
                  decoration:   InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Name",
                        ),
                  onSubmitted: (String value){
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        content: Text("Text: $value"),
                      );
                    }
                    );
                  }
                ),
                Checkbox(value: this.c1,activeColor: Colors.red,  onChanged: (value){
                  setState((){this.c1=value;});}),
                Checkbox(value: c2, onChanged: (value){setState(() {
                  c2 = value;
                  print(c2);
                }); }),
                Row(
                  children: [
                    Text("Tea"),
                    Radio(value: "Tea",  groupValue: choice, onChanged: (value){
                      setState(() {
                        choice = value;
                        print(choice);
                      });
                    }),
                    Text("Coffee"),
                    Radio(value: "Coffee", groupValue: choice, onChanged: (value){
                      setState(() {
                        choice = value;
                        print(choice);
                      });
                    }),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
