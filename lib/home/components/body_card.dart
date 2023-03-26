import 'package:flutter/material.dart';
import 'package:health_app/model/daily_plan.dart';

class BodyCard extends StatefulWidget {
  const BodyCard({super.key});

  @override
  State<BodyCard> createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: dailyPlanList.length,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemBuilder: (ctx, index) {
            return ListTile(
              onTap: () {
                setState(() {
                  dailyPlanList[index].isChecked =
                      !dailyPlanList[index].isChecked;
                });
              },
              contentPadding: EdgeInsets.zero,
              dense: true,
              minLeadingWidth: 10,
              leading: Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: dailyPlanList[index].isChecked
                          ? Colors.orange
                          : Colors.grey.withOpacity(0.3)),
                  child: dailyPlanList[index].isChecked
                      ? const Icon(
                          Icons.check,
                          size: 15,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.check,
                          size: 15,
                          color: Colors.transparent,
                        )),
              title: Text(
                dailyPlanList[index].title,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
              subtitle: Text(
                dailyPlanList[index].time,
                style: const TextStyle(color: Colors.red, fontSize: 12),
              ),
            );
          }),
    );
  }
}
