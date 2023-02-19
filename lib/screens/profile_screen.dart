import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/utils/ticket_screen_codes.dart';

class profile_screen extends StatelessWidget {
  const profile_screen({Key? key}) : super(key: key);

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
          Row(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/img_1.png")),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Gap(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Ticketes",
                    style: Styles.headlinestyle2,
                  ),
                  Text(
                    "New York",
                    style: Styles.headlinestyle4,
                  ),
                  Gap(10),
                  Container(
                    height: 25,
                    width: 145,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFFEF4F3)),
                    child: Row(
                      children: [
                        Gap(3),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          height: 21,
                          width: 21,
                          child: Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(5),
                        Text(
                          "Premium status",
                          style: Styles.textStyle.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF526799)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Gap(80),
              Column(
                children: [
                  Text(
                    "Edit",
                    style: Styles.headlinestyle3
                        .copyWith(color: Styles.primarycolor),
                  ),
                  Gap(50)
                ],
              )
            ],
          ),
          Gap(20),
          Container(
            height: 1,
            // width: 100,
            color: Colors.grey.shade300,
          ),
          Gap(20),
          Stack(
            children: [
              Positioned(
                right: -35,
                top: -30,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF6782B4), Colors.transparent],
                    ),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 27,
                        color: Styles.primarycolor,
                      ),
                    ),
                    Gap(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(7),
                        Text(
                          "You've got a new reward",
                          style: Styles.headlinestyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(5),
                        Text(
                          "You have 150 flights in a year",
                          style: Styles.textStyle.copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(20),
          Text(
            "Accumulated miles",
            style: Styles.headlinestyle2,
          ),
          Gap(20),
          Text(
            "192802",
            textAlign: TextAlign.center,
            style: Styles.headlinestyle1.copyWith(fontSize: 45),
          ),
          Gap(30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Styles.bgcolor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1)
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: Styles.headlinestyle3
                          .copyWith(color: Colors.grey.shade500),
                    ),
                    Text(
                      "23 May 2021",
                      style: Styles.headlinestyle3
                          .copyWith(color: Colors.grey.shade500),
                    )
                  ],
                ),
                Gap(15),
                Container(
                  height: 1,
                  // width: 100,
                  color: Colors.grey.shade300,
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "23 042",
                          style: Styles.headlinestyle3,
                        ),
                        Text(
                          "Miles",
                          style: Styles.headlinestyle3
                              .copyWith(color: Colors.grey.shade500),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Airline CO",
                          style: Styles.headlinestyle3,
                        ),
                        Text(
                          "Received from",
                          style: Styles.headlinestyle3
                              .copyWith(color: Colors.grey.shade500),
                        )
                      ],
                    )
                  ],
                ),
                Gap(10),
                Container(
                    height: 12,
                    width: 700,
                    // width: 100,
                    // color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    // decoration: BoxDecoration(color: Colors.white),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    height: 2,
                                    width: 5,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300),
                                    ),
                                  )),
                        );
                      },
                    )), //dashed
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "24",
                          style: Styles.headlinestyle3,
                        ),
                        Text(
                          "Miles",
                          style: Styles.headlinestyle3
                              .copyWith(color: Colors.grey.shade500),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "McDonal's",
                          style: Styles.headlinestyle3,
                        ),
                        Text(
                          "Received from",
                          style: Styles.headlinestyle3
                              .copyWith(color: Colors.grey.shade500),
                        )
                      ],
                    )
                  ],
                ),
                Gap(10),
                Container(
                    height: 12,
                    width: 700,
                    // width: 100,
                    // color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    // decoration: BoxDecoration(color: Colors.white),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    height: 2,
                                    width: 5,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300),
                                    ),
                                  )),
                        );
                      },
                    )),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "52 340",
                          style: Styles.headlinestyle3,
                        ),
                        Text(
                          "Miles",
                          style: Styles.headlinestyle3
                              .copyWith(color: Colors.grey.shade500),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Exuma",
                          style: Styles.headlinestyle3,
                        ),
                        Text(
                          "Received from",
                          style: Styles.headlinestyle3
                              .copyWith(color: Colors.grey.shade500),
                        )
                      ],
                    )
                  ],
                ),
                Gap(30),
                Text(
                  "How to get more miles",
                  style: Styles.textStyle.copyWith(color: Styles.primarycolor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
