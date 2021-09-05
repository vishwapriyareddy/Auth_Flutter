import 'package:flutter/material.dart';
import 'package:roi_app/colors.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
bool isHiddenPassword = true;

  late String name, email, phone;

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Form(
        key: _key,
        child: ListView(
          children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  autofocus: true,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey[800],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Enter name",
                      fillColor: Colors.white70),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    name = value!;
                  },
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey[800],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Enter email",
                      fillColor: Colors.white70),
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
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.grey[800],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter phone number",
                    fillColor: Colors.white70),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter phone no ';
                  } else if (value.length < 10) {
                    return 'Please enter 10 digit number';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  phone = value!;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                obscureText:  isHiddenPassword,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.grey[800],
                      
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    suffixIcon: InkWell(
                        onTap: _togglePassword,
                        child: Icon(
                          isHiddenPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey[800],
                        )),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter password",
                    fillColor: Colors.white70),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please a Enter Password';
                  } else if (value.length < 6) {
                    return 'Please enter more than 6 characters';
                  }
                  return null;
                },
                
              ),
            ),
            // Container(
            //   margin: EdgeInsets.all(20.0),
            //   child: TextFormField(
            //     obscureText: true,
            //     decoration: InputDecoration(
            //         icon: Icon(
            //           Icons.lock,
            //           color: Colors.grey[800],
            //         ),
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(30.0),
            //         ),
            //         filled: true,
            //         hintStyle: TextStyle(color: Colors.grey[800]),
            //         hintText: "Confirm password",
            //         fillColor: Colors.white70),
            //     validator: (String? value) {
            //       if (value!.isEmpty) {
            //         return 'Please re-enter password';
            //       } else if (password.text != confirmPassword.text) {
            //         return "Password does not match";
            //       }

            //       return null;
            //        //print(password.text);

            //      // print(confirmPassword.text);
            //     },

            //   ),
            // ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  elevation: 20,
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                  color: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      print("successful");

                      return null;
                    }
                  },
                  child: Center(
                      child: Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  )),
                ),
              ),
            ),
          ],
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


