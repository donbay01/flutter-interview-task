
import 'package:dog_application/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalkerDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/IMAGE.png')
                      )
                    ),
                  ),
                   Positioned(
                     top: 45,
                     left: 30,
                     child: Container(
                       width: 55,
                       decoration: BoxDecoration(
                         color: MyApp.colors.lightGrey.withOpacity(0.5),
                         borderRadius: BorderRadius.circular(50)
                       ),
                         child: IconButton(onPressed: (){
                           Navigator.pop(context);
                         }, icon: Icon(Icons.clear,color: Colors.white,))),
                   ),
                  Positioned(
                    top: 45,
                    right: 30,
                    child: Container(
                        width: 130,
                        height: 60,
                        decoration: BoxDecoration(
                            color: MyApp.colors.lightGrey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Verified',style: TextStyle(color: MyApp.colors.white,fontSize: 17,fontWeight: FontWeight.w700),),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MyApp.colors.mainGrey.withOpacity(0.6)
                              ),
                                child: Icon(FontAwesomeIcons.check,color: MyApp.colors.blackBase,size: 15,)),
                          ],
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.57,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(45),topLeft: Radius.circular(45)),
                        color: MyApp.colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Center(child: Text('Alex Murray',style: TextStyle(color: MyApp.colors.blackText,fontSize: 30,fontWeight: FontWeight.w800),)),
                            SizedBox(height: 20,),
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('5\$/hr',style: TextStyle(color: MyApp.colors.blackText,fontWeight: FontWeight.w600),),
                                  VerticalDivider(
                                    thickness: 1,
                                    color: MyApp.colors.lightGrey,
                                  ),
                                  Text('10 km',style: TextStyle(color: MyApp.colors.blackText,fontWeight: FontWeight.w600),),
                                  VerticalDivider(
                                    thickness: 1,
                                    color: MyApp.colors.lightGrey,
                                  ),
                                  Row(
                                    children: [
                                      Text('4.4'),
                                      Icon(Icons.star,color: MyApp.colors.lightGrey,size: 17,)
                                    ],
                                  ),
                                  VerticalDivider(
                                    thickness: 1,
                                    color: MyApp.colors.lightGrey,
                                  ),
                                  Text('450 walks',style: TextStyle(color: MyApp.colors.blackText,fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              height: 50,
                              color: MyApp.colors.lightGrey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                    color: MyApp.colors.blackBase
                                      ),
                                  height: MediaQuery.of(context).size.height * 0.062,
                                  width: MediaQuery.of(context).size.width * 0.27,
                                  child: Center(
                                    child:Text(
                                          'About',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: MyApp.colors.white,
                                              fontSize: 17),
                                        ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: MyApp.colors.mainGrey
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.062,
                                  width: MediaQuery.of(context).size.width * 0.27,
                                  child: Center(
                                    child:Text(
                                      'Location',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: MyApp.colors.lightGrey,
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: MyApp.colors.mainGrey
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.062,
                                  width: MediaQuery.of(context).size.width * 0.27,
                                  child: Center(
                                    child:Text(
                                      'Reviews',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: MyApp.colors.lightGrey,
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Age',style: TextStyle(color: MyApp.colors.lightGrey,fontSize: 17),),
                                    Text('30 years',style: TextStyle(color: MyApp.colors.blackText,fontSize: 20,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                SizedBox(width: 50,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Experience',style: TextStyle(color: MyApp.colors.lightGrey,fontSize: 17),),
                                    Text('11 Months',style: TextStyle(color: MyApp.colors.blackText,fontSize: 20,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height:20,),
                            Text('Alex has loved dogs since childhood. he is \ncurrently a veterinary student. Visits the \ndog shelter we...',
                            style: TextStyle(color: MyApp.colors.lightGrey,fontSize: 17),),
                            TextButton(onPressed: (){}, child: Text('Read more',style: TextStyle(fontSize: 17),)),
                            SizedBox(height:10,),
                            InkWell(
                              onTap: (){

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
                                    'Check schedule',style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: MyApp.colors.white,
                                      fontSize: 20
                                  ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                    ),
                  )
                ],
        ),
      ),
    );
  }
}
