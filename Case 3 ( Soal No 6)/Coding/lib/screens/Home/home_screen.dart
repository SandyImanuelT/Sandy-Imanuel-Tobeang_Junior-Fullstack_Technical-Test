import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_authentication/screens/Home/body/category_card.dart';
import 'package:flutter_authentication/screens/Home/body/king_deals_card.dart';
import 'package:flutter_authentication/screens/Home/body/model/king_deals.dart';
import 'package:flutter_authentication/screens/Home/body/model/recomended.dart';
import 'package:flutter_authentication/screens/Home/body/recomended_card.dart';
import 'package:flutter_authentication/utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteClr,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            // app bar
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "Hello",
                          style: TextStyle(
                            color: kBlackClr,
                            fontSize: 18,
                          ),
                          children: [
                        TextSpan(
                            text: ", Welcome Back",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ))
                      ]))
                ],
              ),
            ),

            //search section
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Explore Your Menu",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(100),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    color: kWhiteClr, borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Search your Food",
                            prefixIcon: Icon(Icons.search),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundColor: kPrimaryClr,
                        child: Icon(
                          Icons.sort_by_alpha_sharp,
                          color: kWhiteClr,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // category
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 75,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CategoryCard(
                        press: () {},
                        image: "assets/images/food.jpg",
                        title: "Food",
                      ),
                      CategoryCard(
                        press: () {},
                        image: "assets/images/drink.jpg",
                        title: "Drink",
                      ),
                      CategoryCard(
                        press: () {},
                        image: "assets/images/desert.jpg",
                        title: "Desert",
                      ),
                      CategoryCard(
                        press: () {},
                        image: "assets/images/promo.jpg",
                        title: "Promo",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // recomended
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  "Recomended",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),

            Container(
                height: 280,
                child: ListView.builder(
                    itemCount: rec.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            RecomendedCard(
                              recomended: rec[index],
                              press: () {},
                            )
                          ],
                        ),
                      );
                    })),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: const SizedBox(
                width: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 235),
              child: RichText(
                  text: const TextSpan(
                      text: "King",
                      style: TextStyle(
                        color: kBlackClr,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                      children: [
                    TextSpan(
                        text: " Deals",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kBlackClr,
                          fontSize: 26,
                        ))
                  ])),
            ),

            const SizedBox(
              height: 15,
            ),

            Container(
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: kingdeals.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 15),
                        child: Row(
                          children: [
                            KingDealsCard(
                              kingDeals: kingdeals[index],
                              press: () {},
                            )
                          ],
                        ),
                      );
                    }))
          ]),
        ),
      )),
    );
  }
}
