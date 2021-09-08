import 'package:dog_application/main.dart';
import 'package:flutter/material.dart';

class MomentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Welcome to Moments',style: TextStyle(fontSize: 30,color: MyApp.colors.blackText,fontWeight: FontWeight.w700),)),
            TextButton(onPressed: (){}, child: Text('Explore',style: TextStyle(fontSize: 25),))
          ],
        ),
      ),
    );
  }
}
