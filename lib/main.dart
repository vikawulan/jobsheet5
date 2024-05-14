import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hallo World App',
      home: StudentList(),
    );
  }
}

class Student {
  final String name;
  final String nim;

  Student(this.name, this.nim);
}

class StudentList extends StatelessWidget {
  final List<Student> students = [
    Student("DEA AVILA", "NIM. STI202102252"),
    Student("DEFI ANDRIANI", "NIM. STI202102253"),
    Student("VIKA WULANDARI", "NIM.STI202102280"),
    Student("FIRSTA ZULFATUN YANUARSIH", "NIM.STI202102281"),
    Student("ATHIROH QOTHRUN NADA", "NIM.STI202102295"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo World"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: students.map((student) {
            int index = students.indexOf(student);

            return Container(
              color: index == 2 ? Colors.green : Colors.transparent,
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    student.name,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    student.nim,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
