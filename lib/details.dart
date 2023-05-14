import 'package:flutter/material.dart';
import 'package:project_one/dataInfo.dart';
import 'package:project_one/funFacts.dart';
import 'package:project_one/main.dart';

class details extends StatefulWidget {
  final String title;
  final int ind;
  const details ({Key? key, required this.title, required this.ind}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) =>
                    MyHome(title: 'Homepage')));
          },
        ),
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
                myAssets[widget.ind],
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
                myDesc[widget.ind],
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
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => funFacts(title: 'chinatown', ind: widget.ind)));
        },
      ),




    );
  }
}
