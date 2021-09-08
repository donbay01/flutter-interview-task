import 'package:dog_application/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dashboard.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading == false ? (
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          icon: Icon(FontAwesomeIcons.arrowLeft, size: 30,),
                          onPressed: () {
                            return Navigator.pop(context);
                          }),
                      SizedBox(height: 20,),
                      Text("Let's start here", style: TextStyle(fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: MyApp.colors.blackText,),),
                      SizedBox(height: 10,),
                      Text('Fill in your details to begin', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: MyApp.colors.grey)),
                      SizedBox(height: 50,),
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: 'Full name',
                          hintText: 'Cristian',
                          fillColor: Colors.grey[300],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.deepOrange, width: 1.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          hintText: 'Cristiande13@gmail.com',
                          fillColor: Colors.grey[300],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.deepOrange, width: 1.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'xxxxxxxxxx',
                          fillColor: Colors.grey[300],
                          filled: true,
                          suffixIcon: IconButton(
                            onPressed: () {
                              _toggle();
                            },
                            icon: Icon(Icons.remove_red_eye),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.deepOrange, width: 1.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          // if (emailController.text.isEmpty) {
                          //   displayToastMessage(
                          //       "Kindly Provide an email address,",
                          //       context);
                          // } else if (!emailController.text.contains("@")) {
                          //   displayToastMessage(
                          //       "Enter a valid email address,", context);
                          // }
                          // else if (passwordController.text.isEmpty) {
                          //   displayToastMessage(
                          //       "Kindly Provide a Password,", context);
                          // }
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: LinearGradient(
                                  colors: [
                                    MyApp.colors.orange2,
                                    MyApp.colors.orange1,
                                  ]
                              )
                          ),
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Sign up',style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: MyApp.colors.white,
                                fontSize: 17
                            ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "By signing in,I agree with",
                            style: TextStyle(
                              color: MyApp.colors.grey,
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                          Text(
                                ' Terms of Use',
                                style: TextStyle(
                                    fontSize: 15.0, fontWeight: FontWeight.w600),
                              ),
                        ],
                      ),
                      Center(child: Text("and Privacy Policy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),
            )
        ) : Center(child: CircularProgressIndicator())
    );
  }
}

displayToastMessage(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black),
    ),
    backgroundColor: MyApp.colors.orange1,
  ));
}