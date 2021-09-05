// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:roi_app/colors.dart';
// import 'package:roi_app/forgotPassword.dart';
// import 'package:roi_app/register.dart';

// class LoginContent extends StatefulWidget {
//   const LoginContent({Key? key}) : super(key: key);

//   @override
//   _LoginContentState createState() => _LoginContentState();
// }

// class _LoginContentState extends State<LoginContent> {
//     late String name, phone;
//   final GlobalKey<FormState> _formkey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//       child: Container(
//         //  margin: EdgeInsets.only(bottom: 20.0),
//         padding: EdgeInsets.all(20.0),
//         // width: double.infinity,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 stops: [
//               0.1,
//               0.7,
//               0.9
//             ],
//                 colors: [
//               primaryColor,
//               Colors.blue[300]!,
//               Colors.blue[200]!,
//             ])),
//         child: Form(
//           key: _formkey,
//           child: ListView(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(10),
//                 width: MediaQuery.of(context).size.width * 0.5,
//                 height: MediaQuery.of(context).size.height * 0.4,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(8.0),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.black12,
//                           offset: Offset(0.0, 15.0),
//                           blurRadius: 15.0),
//                       BoxShadow(
//                           color: Colors.black12,
//                           offset: Offset(0.0, -10.0),
//                           blurRadius: 10.0),
//                     ]),
//                 child: Column(children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Center(
//                       child: Text(
//                         "Login",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 30,
//                             fontStyle: FontStyle.normal,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 50.0,
//                   ),
//                   TextFormField(
//                     cursorColor: Colors.blue,
//                     //keyboardType: TextInputType.emailAddress,
//                     textInputAction: TextInputAction.next,
//                     autofocus: true,
//                     decoration: InputDecoration(
//                         icon: Icon(
//                           Icons.person,
//                           color: Colors.blue,
//                         ),
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey),
//                           //  when the TextFormField in unfocused
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Colors.blue),
//                           //  when the TextFormField in focused
//                         ),
//                         border: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.blue)),

//                         //labelStyle: TextStyle(color: Colors.blue),
//                         hintText: "Enter name",
//                         hintStyle: TextStyle(color: Colors.grey)),
//                     validator: (String? value) {
//                       if (value!.isEmpty) {
//                         return 'Please Enter Name';
//                       }
//                       return null;
//                     },
//                     onSaved: (String? value) {
//                       name = value!;
//                     },
//                   ),
//                   SizedBox(
//                     height: 30.0,
//                   ),
//                   TextFormField(
//                     cursorColor: Colors.blue,
//                     keyboardType: TextInputType.phone,
//                     inputFormatters: [
//                       LengthLimitingTextInputFormatter(10),
//                     ],
//                     decoration: InputDecoration(
//                         icon: Icon(
//                           Icons.phone,
//                           color: Colors.blue,
//                         ),
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey),
//                           //  when the TextFormField in unfocused
//                         ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Colors.blue),
//                           //  when the TextFormField in focused
//                         ),
//                         border: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.blue)),
//                         hintText: "Enter phone number",
//                         hintStyle: TextStyle(color: Colors.grey)),
//                     validator: (String? value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter phone number ';
//                       } else if (value.length < 10) {
//                         return 'Please enter 10 digit number';
//                       }
//                       return null;
//                     },
//                     onSaved: (String? value) {
//                       phone = value!;
//                     },
//                   ),
//                 ]),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Center(
//                     child: InkWell(
//                   child: Text(
//                     "Forgot Password?",
//                     style: TextStyle(
//                         color: Colors.black54,
//                         fontStyle: FontStyle.italic,
//                         fontSize: 15.0,
//                         decoration: TextDecoration.underline),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ForgotPassword()));
//                   },
//                 )),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               RaisedButton(
//                 elevation: 20,
//                 padding:
//                     EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
//                 color: Colors.black87,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(30))),
//                 onPressed: () {
//                   if (_formkey.currentState!.validate()) {
//                     print("successful");

//                     return null;
//                   }
//                 },
//                 child: Center(
//                     child: Text(
//                   "Sign In",
//                   style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.white,
//                       fontStyle: FontStyle.italic),
//                 )),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Center(
//                     child: InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Register()));
//                   },
//                   child: Text(
//                     "Don't have an Account? Sign Up",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontStyle: FontStyle.normal,
//                       fontSize: 15.0,
//                     ),
//                   ),
//                 )),
//               ),
//               SizedBox(
//                 height: 25.0,
//               ),
//               Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(80)),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.white.withOpacity(0.8),
//                             spreadRadius: 7,
//                             blurRadius: 5,
//                             offset:
//                                 Offset(0, 0), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: Container(
//                         child: ClipOval(
//                             child: InkWell(
//                                 child: Image.asset(
//                           "images/google.png",
//                           width: 30.0,
//                           height: 30.0,
//                         ))),
//                       ),
//                     ),
//                     Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(80)),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.white.withOpacity(0.8),
//                               spreadRadius: 7,
//                               blurRadius: 5,
//                               offset:
//                                   Offset(0, 0), // changes position of shadow
//                             ),
//                           ],
//                         ),
//                         child: InkWell(
//                             child: Image.asset(
//                           "images/facebook.png",
//                           width: 30.0,
//                           height: 30.0,
//                         ))),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               Spacer()
//             ],
//           ),
//         ),
//       ),
//     ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import 'package:roi_app/loggedInScreen.dart';
import 'package:roi_app/registerScreen.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class LoginScreen extends StatefulWidget {
 LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyOTP = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController numberController = new TextEditingController();
  final TextEditingController otpController = new TextEditingController();

  var isLoading = false;
  var isResend = false;
  var isLoginScreen = true;
  var isOTPScreen = false;
  var verificationCode = '';

  //Form controllers
  @override
  void initState() {
    if (_auth.currentUser != null) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => LoggedInScreen(),
        ),
        (route) => false,
      );
    }
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isOTPScreen ? returnOTPScreen() : returnLoginScreen();
  }

  Widget returnLoginScreen() {
    return Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: Text('Login Screen'),
        ),
        body: ListView(children: [
          new Column(
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: TextFormField(
                          enabled: !isLoading,
                          controller: numberController,
                          keyboardType: TextInputType.phone,
                          decoration:
                              InputDecoration(labelText: 'Phone Number'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter phone number';
                            }
                          },
                        ),
                      )),
                      Container(
                          margin: EdgeInsets.only(top: 40, bottom: 5),
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: !isLoading
                                  ? new ElevatedButton(
                                      onPressed: () async {
                                        if (!isLoading) {
                                          if (_formKey.currentState
                                              !.validate()) {
                                            displaySnackBar('Please wait...');
                                            await login();
                                          }
                                        }
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 15.0,
                                            horizontal: 15.0,
                                          ),
                                          child: new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Expanded(
                                                  child: Text(
                                                "Sign In",
                                                textAlign: TextAlign.center,
                                              )),
                                            ],
                                          )),
                                    )
                                  : CircularProgressIndicator(
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                    ))),
                      Container(
                          margin: EdgeInsets.only(top: 15, bottom: 5),
                          alignment: AlignmentDirectional.center,
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        "No Account ?",
                                      )),
                                  InkWell(
                                    child: Text(
                                      'Sign up',
                                    ),
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterScreen()))
                                    },
                                  ),
                                ],
                              )))
                    ],
                  ))
            ],
          )
        ]));
  }

  Widget returnOTPScreen() {
    return Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: Text('OTP Screen'),
        ),
        body: ListView(children: [
          Form(
            key: _formKeyOTP,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Text(
                            !isLoading
                                ? "Enter OTP from SMS"
                                : "Sending OTP code SMS",
                            textAlign: TextAlign.center))),
                !isLoading
                    ? Container(
                        child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: TextFormField(
                          enabled: !isLoading,
                          controller: otpController,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          initialValue: null,
                          autofocus: true,
                          decoration: InputDecoration(
                              labelText: 'OTP',
                              labelStyle: TextStyle(color: Colors.black)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter OTP';
                            }
                          },
                        ),
                      ))
                    : Container(),
                !isLoading
                    ? Container(
                        margin: EdgeInsets.only(top: 40, bottom: 5),
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: new ElevatedButton(
                              onPressed: () async {
                                if (_formKeyOTP.currentState!.validate()) {
                                  // If the form is valid, we want to show a loading Snackbar
                                  // If the form is valid, we want to do firebase signup...
                                  setState(() {
                                    isResend = false;
                                    isLoading = true;
                                  });
                                  try {
                                    await _auth
                                        .signInWithCredential(
                                            PhoneAuthProvider.credential(
                                                verificationId:
                                                    verificationCode,
                                                smsCode: otpController.text
                                                    .toString()))
                                        .then((user) async => {
                                              //sign in was success
                                              if (user != null)
                                                {
                                                  //store registration details in firestore database
                                                  setState(() {
                                                    isLoading = false;
                                                    isResend = false;
                                                  }),
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          LoggedInScreen(),
                                                    ),
                                                    (route) => false,
                                                  )
                                                }
                                            })
                                        .catchError((error) => setState(() {
                                                isLoading = false;
                                                isResend = true;
                                              }),
                                            );
                                    setState(() {
                                      isLoading = true;
                                    });
                                  } catch (e) {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  }
                                }
                              },
                              child: new Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 15.0,
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Expanded(
                                      child: Text(
                                        "Submit",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )))
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                CircularProgressIndicator(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                )
                              ].where((c) => c != null).toList(),
                            )
                          ]),
                isResend
                    ? Container(
                        margin: EdgeInsets.only(top: 40, bottom: 5),
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: new ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  isResend = false;
                                  isLoading = true;
                                });
                                await login();
                              },
                              child: new Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 15.0,
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Expanded(
                                      child: Text(
                                        "Resend Code",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )))
                    : Column()
              ],
            ),
          )
        ]));
  }

  displaySnackBar(text) {
    final snackBar = SnackBar(content: Text(text));
    _scaffoldKey.currentState!.showSnackBar(snackBar);
  }

  Future login() async {
    setState(() {
      isLoading = true;
    });

    var phoneNumber = '+91 ' + numberController.text.trim();

    //first we will check if a user with this cell number exists
    var isValidUser = false;
    var number = numberController.text.trim();

    await _firestore
        .collection('users')
        .where('cellnumber', isEqualTo: number)
        .get()
        .then((result) {
      if (result.docs.length > 0) {
        isValidUser = true;
      }
    });

    if (isValidUser) {
      //ok, we have a valid user, now lets do otp verification
      var verifyPhoneNumber = _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (phoneAuthCredential) {
          //auto code complete (not manually)
          _auth.signInWithCredential(phoneAuthCredential).then((user) async => {
                if (user != null)
                  {
                    //redirect
                    setState(() {
                      isLoading = false;
                      isOTPScreen = false;
                    }),
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoggedInScreen(),
                      ),
                      (route) => false,
                    )
                  }
              });
        },
        verificationFailed: (FirebaseAuthException error) {
          displaySnackBar('Validation error, please try again later');
          setState(() {
            isLoading = false;
          });
        },
        codeSent: (verificationId, [int? forceResendingToken]) {
          setState(() {
            isLoading = false;
            verificationCode = verificationId;
            isOTPScreen = true;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            isLoading = false;
            verificationCode = verificationId;
          });
        },
        timeout: Duration(seconds: 60),
      );
      await verifyPhoneNumber;
    } else {
      //non valid user
      setState(() {
        isLoading = false;
      });
      displaySnackBar('Number not found, please sign up first');
    }
  }
}
