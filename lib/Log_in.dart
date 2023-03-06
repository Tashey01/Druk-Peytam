import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/AboutUs.dart';
import 'package:first_app/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//class LogIn {
  class LogIn extends StatefulWidget{
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
    final _emailControllerText = TextEditingController();

    final _passwordControllerText = TextEditingController();

    bool pwVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
          child: Column(
            children: <Widget>[

              Container(
                  padding: EdgeInsets.all(10),
                  child: FractionallySizedBox(
                    widthFactor: 0.30,
                    child: Image.asset('asset/logo.png'),
                  )

              ),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
                  child: Text('Learn Proverbs for Free. Forever.')
              ),

              Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text('Login to Continue')
              ),

              Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
                  child: TextFormField(
                    controller: _emailControllerText,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                    ),
                  )
              ),

              Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
                  child: TextField(
                    controller: _passwordControllerText,
                    obscureText: pwVisible,
                    decoration: InputDecoration(
                        hintText: 'password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        suffixIcon: InkWell(
                          child: Icon(pwVisible
                             ? Icons.visibility
                             : Icons.visibility_off
                          ),
                          onTap: () {
                            setState(()
                                    {
                                      pwVisible = !pwVisible;
                                    }
                            );
                          },
                        )
                    ),
                  )
              ),

              Container(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: ()
                    {
                      FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailControllerText.text, password: _passwordControllerText.text).then((value)
                      {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUs(), ));
                      });

                    },
                    child: Text('Log In',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                        backgroundColor: MaterialStateProperty.all(Colors.yellow[700]),
                        minimumSize: MaterialStateProperty.all(Size(300, 40)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                        )
                    ),
                  )
              ),

              Container(
                padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                child: Text('Forgot Password?'),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: Text('-----------OR-----------'),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Text("Don't have an account?"),
              ),

              Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        )
                      );
                    },
                    child: Text('Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                        backgroundColor: MaterialStateProperty.all(Colors.yellow[700]),
                        minimumSize: MaterialStateProperty.all(Size(300, 40)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                        )
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }
}
//}