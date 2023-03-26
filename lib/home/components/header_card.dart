import 'package:flutter/material.dart';

import 'circular_grapgh.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.pink.withOpacity(0.3),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          RichText(
              text: const TextSpan(
                  text: 'Health Plan\nfor ',
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w200,
                      color: Colors.black),
                  children: [
                TextSpan(
                    text: 'Wednesday',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w500))
              ])),
          const SizedBox(height: 50),
          const Text("Plan Completed"),
          const SizedBox(height: 10),
          CircularGraph(),
        ],
      ),
    );
  }
}
