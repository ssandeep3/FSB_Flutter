import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firestoredemo extends StatefulWidget {
  const firestoredemo({Key? key, required String title}) : super(key: key);

  @override
  State<firestoredemo> createState() => _firestoredemoState();

}

class _firestoredemoState extends State<firestoredemo> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  CollectionReference s1 = FirebaseFirestore.instance.collection("s1");
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        Center(
          child: SafeArea(
            child: Column(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() async {
                    await
                    s1.add({"name": "Michal", "rollno":"20CS200"}).then((value)=> print("Student Added.."));
                  });
                }, child: Text("Add Data")),
                ElevatedButton(onPressed: (){
                  s1.get().then(
                        (querySnapshot) {
                      print("Successfully completed");
                      for (var docSnapshot in querySnapshot.docs) {
                        print('${docSnapshot.id} => ${docSnapshot.data()}');
                      }
                    },
                    onError: (e) => print("Error completing: $e"),
                  );

                }, child: Text("Display Data"))
              ],
            ),
          ),
        )
    );
  }
}