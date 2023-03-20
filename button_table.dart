import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttontable extends StatefulWidget {
  const buttontable({Key? key, String? title}) : super(key: key);

  @override
  State<buttontable> createState() => _buttontableState();
}

class _buttontableState extends State<buttontable> {
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),)
              ),
              controller: myController,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                print(myController.text);
              });
            }, child: Text("OK")),
            FloatingActionButton(onPressed: (){}, child:Text("OK"), ),
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(child: Text("Cell Value1")),
                    TableCell(child: Text("Cell Value2")),
                    TableCell(child: Text("Cell Value3"))
                  ]
                ),
                TableRow(
                    children: [
                      TableCell(child: Text("Cell Value1")),
                      TableCell(child: Text("Cell Value2")),
                      TableCell(child: Text("Cell Value3 ukdhcsd hoidhodshfoisdhfoisdhfios")),
                    ]
                ),
              ],
            )
          ],
        )),
      )
    );
  }
}
