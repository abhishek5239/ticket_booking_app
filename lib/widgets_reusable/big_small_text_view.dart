import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class bigsmalltext extends StatelessWidget {
  bigsmalltext({required this.bigtext, required this.smalltext});
  final String bigtext;
  final String smalltext;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${bigtext}",
          style: Styles.headlinestyle2,
        ),
        InkWell(
          onTap: () {
            // print("object");
          },
          child: Text(
            "${smalltext}",
            style: Styles.textStyle.copyWith(color: Styles.primarycolor),
          ),
        )
      ],
    );
  }
}
