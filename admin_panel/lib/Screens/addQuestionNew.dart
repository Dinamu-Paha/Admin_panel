import 'package:flutter/material.dart';

class addQuestionNew extends StatefulWidget {
  const addQuestionNew({Key? key}) : super(key: key);

  @override
  State<addQuestionNew> createState() => _addQuestionNewState();
}

class _addQuestionNewState extends State<addQuestionNew> {


  _addSection(){

  }

  _addAnswer(){

  }



  @override
  Widget build(BuildContext context) {
    Future<void> openDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Container(
              width: 1000,
              height:1000,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: Column(
                children: [
                  Text("Add Text Field or Image"),
                  Column(
                    children: [
                      Text("Text Field"),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                          filled: true,
                          hintText: 'Type Here',
                          border: OutlineInputBorder(),
                          // contentPadding:
                          // EdgeInsets.only(left: 10.0, top: 20.0),

                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:
                              Color(0xFF4B506D).withOpacity(0.4)),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("Image"),
                    ],
                  ),
                ],
              )

            ),
          );
        },
      );
    }

    return Container(
      child: Column(
        children: [
          Text("Add Question"),
          Container(
              child: Row(
                children: [
                  Text("Question"),
                  FloatingActionButton(
                    onPressed: _addSection,
                    tooltip: 'Add',
                    child: Icon(Icons.add),
                  ),
                ],
              )
          ),
          Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Answers"),
                    ],
                  ),

                  Row(
                    children: [
                      Text("Answer1"),
                      FloatingActionButton(
                        onPressed: _addAnswer,
                        tooltip: 'Add',
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text("Answer2"),
                      FloatingActionButton(
                        onPressed: _addAnswer,
                        tooltip: 'Add',
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text("Answer3"),
                      FloatingActionButton(
                        onPressed: _addAnswer,
                        tooltip: 'Add',
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),

          ),
          Container(
              child: Row(
                children: [
                  Text("Correct Answer"),
                  FloatingActionButton(
                    onPressed: openDialog,
                    tooltip: 'Add',
                    child: Icon(Icons.add),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }




}
