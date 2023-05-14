import 'package:flutter/material.dart';
import 'package:project_one/details.dart';

class neighborhoods extends StatefulWidget {
  final String title;
  const neighborhoods({Key? key, required this.title}) : super(key: key);

  @override
  State<neighborhoods> createState() => _neighborhoodsState();
}

class _neighborhoodsState extends State<neighborhoods> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      body:
      Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.blueGrey.shade400,
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: InkWell(
                          // splashColor: Colors.black,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.yellow
                              ),
                              boxShadow:  [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 10,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage('assets/ctwn.jpeg',),
                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => details(title: 'chinatown', ind: 0)));


                          },
                        ),
                      ),

                      new Text(
                        "ChinaTown",
                        style: new TextStyle(fontSize:24.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto"),
                      )
                    ]

                ),
              ),

              Container(
                color: Colors.brown.shade400,
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: InkWell(
                          // splashColor: Colors.black,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 3,
                                  color: Colors.yellow
                              ),
                              boxShadow:  [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 10,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage('assets/rnorth.jpeg',),
                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => details(title: '', ind: 1)));
                          },
                        ),
                      ),

                      new Text(
                        "River North",
                        style: new TextStyle(fontSize:24.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto"),
                      )
                    ]

                ),
              ),

              Container(
                color: Colors.blueGrey.shade400,
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: InkWell(
                          // splashColor: Colors.black,
                          child: Container(
                            width: 100,
                            height: 110,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 3,
                                  color: Colors.yellow
                              ),
                              boxShadow:  [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 10,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage('assets/fmrkt.jpeg',),
                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => details(title: '', ind: 2)));
                          },
                        ),
                      ),

                      new Text(
                        "Fulton Market",
                        style: new TextStyle(fontSize:24.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto"),
                      )
                    ]

                ),
              ),
            ]

        ),
      ),

    );
  }
}
