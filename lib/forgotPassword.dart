import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:roi_app/colors.dart';
import 'package:roi_app/register.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
          centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: ListView(
        children: [
          Container(
            child: Text("Forgot Password"),
          )
        ],
      ),
    );
  }
}



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHiddenPassword = true;
  late String email;
  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        //  margin: EdgeInsets.only(bottom: 20.0),
          padding: EdgeInsets.all(20.0),
         // width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                0.1,
                0.7,
                0.9
              ],
                  colors: [
                primaryColor,
                Colors.blue[300]!,
                Colors.blue[200]!,
              ])),
          child: Form(
            key: _formkey,
            child: ListView(
              children: [
              Container(
                padding: EdgeInsets.all(10),
                 width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.height* 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 15.0),
                    blurRadius: 15.0
                  ),
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, -10.0),
                    blurRadius: 10.0
                  ),
                ]
              ),
                child: Column(
                  children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  TextFormField(
                    cursorColor: Colors.blue,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                          enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                //  when the TextFormField in unfocused 
                              ) ,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                //  when the TextFormField in focused 
                              ) ,
                              border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)
                              ),
                        
                        
                        //labelStyle: TextStyle(color: Colors.blue),
                        hintText: "Enter email",
                        hintStyle: TextStyle(color: Colors.grey)),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please a Enter';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please a valid Email';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      email = value!;
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    cursorColor: Colors.blue,
                    obscureText: isHiddenPassword,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                //  when the TextFormField in unfocused 
                              ) ,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                //  when the TextFormField in focused 
                              ) ,
                              border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)
                              ),
                        
                        suffixIcon: InkWell(
                            onTap: _togglePassword,
                            child: Icon(
                              isHiddenPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.blue,
                            )),
                        hintText: "Enter password",
                        hintStyle: TextStyle(color: Colors.grey)),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please a Enter Password';
                      } else if (value.length < 6) {
                        return 'Please enter more than 6 characters';
                      }
                      return null;
                    },
                  ),
                  ]),
              ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                      child: InkWell(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.black54,
                          fontStyle: FontStyle.italic,
                          fontSize: 15.0,
                          decoration: TextDecoration.underline),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                  )),
                ),
                SizedBox(
                  height: 30.0,
                ),
                RaisedButton(
                  elevation: 20,
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                  color: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print("successful");
            
                      return null;
                    }
                  },
                  child: Center(
                      child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text(
                      "Don't have an Account? Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0,
                      ),
                    ),
                  )),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.8),
                              spreadRadius: 7,
                              blurRadius: 5,
                              offset: Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          child: ClipOval(
                              child: InkWell(
                                  child: Image.asset(
                            "images/google.png",
                            width: 30.0,
                            height: 30.0,
                          ))),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                spreadRadius: 7,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: InkWell(
                              child: Image.asset(
                            "images/facebook.png",
                            width: 30.0,
                            height: 30.0,
                          ))),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePassword() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
