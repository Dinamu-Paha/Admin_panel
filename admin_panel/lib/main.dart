
import 'package:admin_panel/Screens/addQuestionNew.dart';
import 'package:admin_panel/Screens/addQuestions.dart';
import 'package:flutter/material.dart';
import 'Screens/adminDashboardPage.dart';
import 'Screens/addAdmin.dart';



import 'Screens/SignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        
      ),
      home: AdminDashPage(),
    );
  }
}