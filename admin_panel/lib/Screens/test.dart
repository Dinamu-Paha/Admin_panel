import 'dart:convert';
import 'dart:html';
import 'dart:js';
import 'package:admin_panel/Components/colors.dart';
import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DataTable(
            columns: [
              DataColumn(
                label: Text('ID'),
              ),
              DataColumn(
                label: Text('Question'),
              ),
              DataColumn(
                label: Text(''),
              ),
              DataColumn(
                label: Text(''),
              ),
            ],
            rows: [

              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Arshik')),
                DataCell(IconButton(onPressed: (){}, icon: Icon(Icons.edit)),),
                DataCell(IconButton(onPressed: (){}, icon: Icon(Icons.delete)),),
              ])
            ])
    );
  }
}
