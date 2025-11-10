import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCompletedBookingsScreen extends StatelessWidget {
  const ListCompletedBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Text("Heloo"),
    );
  }
}
