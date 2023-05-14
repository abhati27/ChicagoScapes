import 'package:flutter/material.dart';
import 'package:project_one/neighborhoods.dart';
import 'package:project_one/events.dart';
import 'package:project_one/sports.dart';

void main() {
  runApp(MyApp());
}

class MyHome extends StatefulWidget {
  final String title;
  const MyHome({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHome(title: 'Homepage'),
    );
  }
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 150,
          title: Center(
              child: Text(
                "Welcome to Chicago!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueAccent,
                    backgroundColor: Colors.grey.shade900.withOpacity(.7)),
              )),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/chicsky.png"), fit: BoxFit.fill),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(30, 30),
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Neighborhoods'),
              Tab(text: 'Events'),
              Tab(text: 'Sports')
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            neighborhoods(title: 'NEIGHBORHOODS',),
            events(title: 'EVENTS',),
            sports(title: 'SPORTS'),
          ],
        ),

      ),
    );
  }
}
