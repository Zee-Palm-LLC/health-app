import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/alarm/alarm_view.dart';
import 'package:health_app/home/components/custom_bottom_bar.dart';

import 'components/body_card.dart';
import 'components/header_card.dart';
import 'components/ingredient_cards.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.withOpacity(0.3),
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
        ),
        title: const Text("Hello David",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
                fontWeight: FontWeight.w600)),
        actions: [
          InkWell(
            onTap: (){
              Get.to(()=>const AlarmRingingScreen());
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child:
                  const Icon(Icons.notifications_outlined, color: Colors.black),
            ),
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderCard(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Daily Plan",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              BodyCard()
            ],
          ),
          const IngredientsCard()
        ],
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
