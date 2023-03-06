import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//class Quiz{
  void main(){
    runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz-Level I'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text('Time: ')
                  ),

                  Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('+30s',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                            backgroundColor: MaterialStateProperty.all(Colors.white70),
                            minimumSize: MaterialStateProperty.all(Size(30, 30)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                )
                            )
                        ),
                      )
                  ),

                ]
              )
            ),

            Container(
              child: Text('Question I: '),
            ),

            Container(
              child: Text('---------question---------'),
              margin: EdgeInsets.all(10),
            ),

            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('A Option',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,

                    ),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      backgroundColor: MaterialStateProperty.all(Colors.white24),
                      minimumSize: MaterialStateProperty.all(Size(300, 20)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )
                      )
                  ),
                )
            ),

            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('B Option',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      backgroundColor: MaterialStateProperty.all(Colors.white24),
                      minimumSize: MaterialStateProperty.all(Size(300, 20)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )
                      )
                  ),
                )
            ),

            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('C Option',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      backgroundColor: MaterialStateProperty.all(Colors.white24),
                      minimumSize: MaterialStateProperty.all(Size(300, 20)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )
                      )
                  ),
                )
            ),

            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('D Option',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      backgroundColor: MaterialStateProperty.all(Colors.white24),
                      minimumSize: MaterialStateProperty.all(Size(300, 20)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )
                      )
                  ),
                )
            ),

            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('NEXT',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      minimumSize: MaterialStateProperty.all(Size(50, 20)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )
                      )
                  ),
                )
            ),

          ],
        ),
        ),
      ),
    ));
  }
//}