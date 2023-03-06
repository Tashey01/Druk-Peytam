import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//class AboutUs {
  class AboutUs extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(0,0, 0, 5),
                              child: Text('Druk Paytam was created by a group of final year students from College of Science and Technology. It is a product of the final year project. ')),

                          Container(
                              margin: EdgeInsets.fromLTRB(0,0, 0, 5),
                              child: Text('Druk Paytam app contains the intellectual sayings and proverbs that has been passed down from generations.')),

                          Container(
                              margin: EdgeInsets.fromLTRB(0,0, 0, 5),
                              child: Text('The main aim is to promote and preserve the cultural aspect of our country, Bhutan'))

                        ])),

                Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                        Container(

                            margin: EdgeInsets.fromLTRB(0,0, 0, 5),
                            child: Text('Developers',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                        ),

                        Container(
                            child : Text('Tashi Wangchuk')
                        ),

                        Container(
                            child : Text('Tashi Pelden')
                        ),

                        Container(
                            child : Text('Namagay Wangchuk')
                        )

                      ],
                    )
                ),

                Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(0,0, 0, 5),
                            child: Text('Project Guide',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))),

                        Container(
                            child : Text('Mrs.Kezang Dema')
                        ),
                      ],
                    )
                ),

                Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(0,0, 0, 5),
                            child: Text('Special Thanks to:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))),

                        Container(
                            child : Text('Dr.Dorji Thinley')
                        ),
                      ],
                    )
                )

              ]
          ),
        )
    );
  }
}
//}