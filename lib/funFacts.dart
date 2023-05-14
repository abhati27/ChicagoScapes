import 'package:flutter/material.dart';
import 'package:project_one/dataInfo.dart';
import 'package:project_one/details.dart';

class funFacts extends StatefulWidget {
  final String title;
  final int ind;
  const funFacts ({Key? key, required this.title, required this.ind}) : super(key: key);

  @override
  State<funFacts> createState() => _funState();
}

class _funState extends State<funFacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 150,
        title: Center(
            child: Text(
              myTitles[widget.ind],
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
      ),
      body:
      Align(
        alignment: Alignment.center,
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                funimg[widget.ind],
                fit:BoxFit.fill,
                width: 250.0,
                height: 250.0,
              ),

              new Text(
                myTitles[widget.ind],
                style: new TextStyle(fontSize:20.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              ),

              new Text(
                myfun[widget.ind],
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:24.0,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              ),

              new Text(
                myAddr[widget.ind],
                style: new TextStyle(fontSize:24.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              )
            ]

        ),

      ),
      floatingActionButton: FloatingActionButton (
        child: Text(textAlign: TextAlign.center,"Click me",style: TextStyle(color:Colors.greenAccent,fontSize:15)),
        onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => details(title: '', ind: widget.ind)));
        },
      ),




    );
  }
}
