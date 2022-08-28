import 'package:flutter/material.dart';

class AdminDashPage extends StatefulWidget {
  const AdminDashPage({Key? key}) : super(key: key);

  @override
  State<AdminDashPage> createState() => _AdminDashPageState();
}

class _AdminDashPageState extends State<AdminDashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: 300,
              color: Colors.white,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-300,
                    height: 70,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
