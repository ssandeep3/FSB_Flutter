import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class feb27button extends StatefulWidget {
  const feb27button({Key? key, required String title}) : super(key: key);

  @override
  State<feb27button> createState() => _feb27buttonState();
}

class _feb27buttonState extends State<feb27button> {
  final myController = TextEditingController();
  void dispose(){
    myController.dispose();
    super.dispose();
}
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
                  controller: myController,
                  // obscureText: true,
                    decoration:   InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter Name"
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
                 FloatingActionButton(onPressed: (){
                   setState(() {
                     print(myController.text);
                   });
                 }, child: Text("OK"),),
                ElevatedButton(onPressed: (){
                  print("Some Message...");
                }, child: Text("Press Button")),
                Table(border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        TableCell(child: Text("Cell1")),
                        TableCell(child: Text("Cell2")),
                        TableCell(child: Text("Cell3")),
                      ]
                    ),
                    TableRow(
                        children: [
                          TableCell(child: Text("Cell4")),
                          TableCell(child: Text("Cell5")),
                          TableCell(child: Text("Cell6")),
                        ]
                    ),
                  ],
                )

                ],

            ),
          ),
    )
    );
  }
}
