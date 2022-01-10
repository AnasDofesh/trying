//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:training/user_model.dart';
import 'dart:convert';
//import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

 /* Future<void>adduser()async{
  await FirebaseFirestore.instance.collection('user').doc('XHgCjacgLlhH3SQzoUEY').get().then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // var decoded = json.decode('["foo", { "bar": 499 }]');

//adduser();

          FirebaseFirestore.instance
              .collection('user')
              .doc('XHgCjacgLlhH3SQzoUEY')
              .get()
              .then((DocumentSnapshot documentSnapshot) {
            if (documentSnapshot.exists) {
              print('Document exists on the database');
            }
          });

          child: const Icon(Icons.android_outlined);
        }
      ),
    );
  }
}
