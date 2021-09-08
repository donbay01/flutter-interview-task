import 'package:dog_application/model/walker_model.dart';
import 'package:dog_application/screens/walker_details.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Home",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: MyApp.colors.blackText),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: LinearGradient(colors: [
                                MyApp.colors.orange2,
                                MyApp.colors.orange1,
                              ])),
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: MyApp.colors.white,
                                ),
                                Text(
                                  'Book a walk',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: MyApp.colors.white,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Explore dog walkers",
                    style: TextStyle(
                        fontSize: 20,
                        color: MyApp.colors.grey,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.location_on_outlined,
                  color: MyApp.colors.lightGrey,
                ),
                hintText: 'Kiyv, Ukraine',
                suffixIcon: Icon(Icons.sort),
                fillColor: MyApp.colors.mainGrey,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Near you',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(products.length, (index) {
                      ProductModel myProducts = products[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> WalkerDetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 50),
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: MediaQuery.of(context).size.height * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(myProducts.image),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                myProducts.name,
                                style: TextStyle(
                                    color: MyApp.colors.blackText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: MyApp.colors.blackText,
                                  ),
                                  child: Center(
                                      child: Text(
                                    '\$' + myProducts.price,
                                    style: TextStyle(color: MyApp.colors.white),
                                  )),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: MyApp.colors.lightGrey,
                                size: 17,
                              ),
                              Text(
                                myProducts.distance + ' from you',
                                style: TextStyle(
                                    color: MyApp.colors.lightGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      );
                    })),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    height: 1,
                    color: MyApp.colors.lightGrey,
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Suggested',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(products.length, (index) {
                      ProductModel myProducts = products[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> WalkerDetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 50),
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: MediaQuery.of(context).size.height * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(myProducts.image),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                myProducts.name,
                                style: TextStyle(
                                    color: MyApp.colors.blackText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: MyApp.colors.blackText,
                                  ),
                                  child: Center(
                                      child: Text(
                                    '\$' + myProducts.price,
                                    style: TextStyle(color: MyApp.colors.white),
                                  )),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: MyApp.colors.lightGrey,
                                size: 17,
                              ),
                              Text(
                                myProducts.distance + ' from you',
                                style: TextStyle(
                                    color: MyApp.colors.lightGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      );
                    })),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
