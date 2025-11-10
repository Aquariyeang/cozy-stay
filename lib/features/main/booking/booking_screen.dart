import 'package:cozy_stay/features/main/booking/nav_screens/list_completed_bookings_screen.dart';
import 'package:cozy_stay/features/main/booking/widgets/booking_tab_bar.dart';
import 'package:cozy_stay/utils/helpers/size_calculator.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: MyBookingTabBar(),
        body: Padding(
          padding: EdgeInsets.only(top: MyCalculator.getScreenHeight(5)),
          child: TabBarView(
            children: [
              ListCompletedBookingsScreen(),
              Container(color: Colors.blue),
              Container(color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
