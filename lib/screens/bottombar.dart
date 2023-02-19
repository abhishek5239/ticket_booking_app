import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_booking_app/screens/home_screen.dart';
import 'package:ticket_booking_app/screens/search_screen.dart';
import 'package:ticket_booking_app/screens/tickets_screen.dart';
import 'package:ticket_booking_app/screens/profile_screen.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  //all vairable here

  int current_index = 0;
  final List<Widget> list_bottom_navingation = [
    homescreen(),
    Searchscreen(),
    Ticket_screen(),
    profile_screen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: (index) => setState(() {
          current_index = index;
        }),
        elevation: 11,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526480),
        items: [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "airplane ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "person"),
        ],
      ),
      body: list_bottom_navingation[current_index],
    );
  }
}
