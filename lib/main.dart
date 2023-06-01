import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: loginPage(),
    );
  }
}
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: h*0.3,
            width: w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image:AssetImage("assets/I2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text('Sign into your account',
                  style: TextStyle(
                    fontSize: 25,
                   color: Colors.grey
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 4,
                        offset: Offset(1, 1)
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(.2),
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 4,
                            offset: Offset(1, 1)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(.2),
                            )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text('Forget Password',
                      style: TextStyle(fontSize: 25,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: h*0.08,
            width: w*.5,
            decoration: BoxDecoration(
              color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
            ),
            child: Center(child: Text('Sign In',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            ),
          ),
          SizedBox(height: 50,),

          RichText(text: TextSpan(
            text: 'Don\'t have account? ',
            style: TextStyle(fontSize: 20, color: Colors.grey,),
            children: [
              TextSpan(
                text: 'Create',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                )
              )
            ]
           ),
          ),
        ],
      ),
    );
  }
}
