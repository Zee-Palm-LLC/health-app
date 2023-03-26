import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class AlarmRingingScreen extends StatefulWidget {
  const AlarmRingingScreen({super.key});

  @override
  State<AlarmRingingScreen> createState() => _AlarmRingingScreenState();
}

class _AlarmRingingScreenState extends State<AlarmRingingScreen> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.3),
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text("Alarm Ringing",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              height: 360,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(150),
                  image: const DecorationImage(
                    image: AssetImage('assets/alarm_ringing.png'),
                  )),
            ),
            const SizedBox(height: 30),
            const Text(
              "Its Time for your Vitamins",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 44),
            ),
            const SizedBox(height: 30),
            const Text(
              "Time for Vitamin mix 2",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),
            SwipeableButtonView(
                buttonText: "SWIPE TO DISMISS",
                buttonWidget: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                ),
                activeColor: Colors.pink.withOpacity(0.3),
                isFinished: isFinished,
                onWaitingProcess: () {
                  Future.delayed(Duration(seconds: 2), () {
                    setState(() {
                      isFinished = true;
                    });
                  });
                },
                onFinish: () async {
                  setState(() {
                    isFinished = false;
                  });
                })
          ],
        ),
      ),
    );
  }
}
