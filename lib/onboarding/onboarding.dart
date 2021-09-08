import 'package:dog_application/main.dart';
import 'package:dog_application/onboarding/sliders/slider1.dart';
import 'package:dog_application/onboarding/sliders/slider2.dart';
import 'package:dog_application/onboarding/sliders/slider3.dart';
import 'package:dog_application/screens/signIn_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0,);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      duration: Duration(milliseconds: 100),
      height: 25.0,
      width: isActive ? 30.0 : 20.0,
      decoration: BoxDecoration(
        color: isActive ? MyApp.colors.white : MyApp.colors.blackGrey,
        shape: BoxShape.circle,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Column(
              children: [
               Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Container(
                            child: PageView(
                              physics: ClampingScrollPhysics(),
                              controller: _pageController,
                              onPageChanged: (int page) {
                                setState(() {
                                  _currentPage = page;
                                });
                              },
                              children: [
                                Slider1(),
                                Slider2(),
                                Slider3(),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _buildPageIndicator(),
                            ),
                          ),
                        ],
                      )
                    ),

            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Too tired to walk your dog? \nLet's help you!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyApp.colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 25,),
                      InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
                                    'Join Our Community',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: MyApp.colors.white,
                                    fontSize: 17
                                  ),
                                ),
                              ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already a member?",
                            style: TextStyle(
                              color: MyApp.colors.white,
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 15.0, fontWeight: FontWeight.w800),
                              ))
                        ],
                      ),
                    ],
                  ),
                ) ,
              ),
            ),

          ]),
        ),
    );
  }
}

