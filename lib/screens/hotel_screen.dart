import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';

class HotelSearch extends StatelessWidget {
  HotelSearch({required this.hotel_map});
  final Map<String, dynamic> hotel_map;

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getsize(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: EdgeInsets.only(right: 15, top: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Styles.primarycolor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      width: size.width * 0.6,
      height: Applayout.getheight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Applayout.getheight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primarycolor,
                image: DecorationImage(
                    image: AssetImage("${hotel_map['image']}"),
                    fit: BoxFit.cover)),
          ),
          Gap(20),
          Text(
            "${hotel_map['place']}",
            style: Styles.headlinestyle2.copyWith(color: Colors.grey.shade300),
          ),
          Gap(10),
          Text(
            "${hotel_map['destination']}",
            style: Styles.textStyle.copyWith(color: Colors.white),
          ),
          Gap(10),
          Text(
            "\$${hotel_map['price']}/Night",
            style: Styles.headlinestyle2.copyWith(color: Colors.grey.shade300),
          )
        ],
      ),
    );
  }
}
