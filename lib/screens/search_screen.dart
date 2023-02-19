import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/widgets_reusable/big_small_text_view.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getwidth(20),
            vertical: Applayout.getheight(20)),
        children: [
          Gap(40),
          Text(
            "What are \nyou looking for?",
            style: Styles.headlinestyle1.copyWith(fontSize: 35),
          ),
          Gap(20),
          Container(
            // padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50)),
                  ),
                  width: size.width * 0.44,
                  child: Center(
                    child: Text(
                      "Airlines Tickets",
                      style: Styles.textStyle.copyWith(color: Colors.black54),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                  width: size.width * 0.44,
                  child: Center(
                    child: Text(
                      "Hotels",
                      style: Styles.textStyle.copyWith(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Color(0xFFF4F6FD),
                borderRadius: BorderRadius.circular(50)),
          ),
          Gap(30),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: Icon(
                Icons.flight_takeoff_rounded,
                color: Color(0xFFBFC2DF),
              ),
              title: Text(
                "Departure",
                style: Styles.textStyle.copyWith(color: Colors.black54),
              ),
            ),
          ),
          Gap(20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: Icon(
                Icons.flight_land_rounded,
                color: Color(0xFFBFC2DF),
              ),
              title: Text(
                "Arrival",
                style: Styles.textStyle.copyWith(color: Colors.black54),
              ),
            ),
          ),
          Gap(20),
          TextButton(
            onPressed: () {},
            child: Text(
              "find tickets",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xD91130CE),
              padding: EdgeInsets.all(15),
            ),
          ),
          Gap(40),
          bigsmalltext(bigtext: "Upcoming Flights", smalltext: "View all"),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 425,
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey.shade200,
                          spreadRadius: 1),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: Applayout.getheight(190),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/sit.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Gap(10),
                    Text(
                      "20% \ndiscount on early booking on flight\.Don't miss",
                      style: Styles.headlinestyle2
                          .copyWith(fontSize: 22, color: Colors.blueGrey),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 200,
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                          color: Color(0XFF3AB8B8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount \nfor Survey",
                              style: Styles.headlinestyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(10),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headlinestyle2.copyWith(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -30,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0XFF189999))),
                          )),
                    ],
                  ),
                  Gap(20),
                  Container(
                      width: size.width * 0.44,
                      height: 210,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0XFFEC6545)),
                      child: Column(
                        children: [
                          Text(
                            "Take love",
                            style: Styles.headlinestyle2.copyWith(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(15),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 38),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 38),
                            ),
                          ])),
                        ],
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
