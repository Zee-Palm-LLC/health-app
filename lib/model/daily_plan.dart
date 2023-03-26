class DailyPlan {
  bool isChecked;
  String title;
  String time;
  DailyPlan({
    required this.isChecked,
    required this.title,
    required this.time,
  });
}

List<DailyPlan> dailyPlanList = [
  DailyPlan(isChecked: true, title: "Vitamin mix 2", time: '1 PM'),
  DailyPlan(isChecked: false, title: "Fiber mix", time: '2 PM'),
  DailyPlan(isChecked: false, title: "Vitamin mix 1", time: '4 PM'),
];
