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
              width: 350,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height-100,
                    width: 250,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Card(
                          color: Colors.greenAccent,
                          child: ListTile(
                            leading: Icon(Icons.home_outlined),
                            title: Text('Dashboard'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.greenAccent,
                          child: ListTile(
                            leading: Icon(Icons.add_box_outlined),
                            title: Text('Add admin'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.greenAccent,
                          child: ListTile(
                            leading: Icon(Icons.question_answer_outlined),
                            title: Text('Question'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.greenAccent,
                          child: ListTile(
                            leading: Icon(Icons.newspaper),
                            title: Text('Past paper'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.greenAccent,
                          child: ListTile(
                            leading: Icon(Icons.play_lesson),
                            title: Text('Lesson'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.greenAccent,
                          child: ListTile(
                            leading: Icon(Icons.topic),
                            title: Text('Subtopic'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.greenAccent,
                          child: ListTile(
                            leading: Icon(Icons.quiz_outlined),
                            title: Text('Quiz'),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-350,
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
