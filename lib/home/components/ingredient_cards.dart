import 'package:flutter/material.dart';

class IngredientsCard extends StatelessWidget {
  const IngredientsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 220,
            width: 150,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(50)),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.sports_baseball,
                          color: Colors.white, size: 70),
                      Text(
                        "3 Doses of\nVitamin E",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.info_outline, color: Colors.white),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Locking Vitamin E",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 180,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.green.shade700,
                borderRadius: BorderRadius.circular(50)),
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Icon(Icons.place_rounded, color: Colors.white, size: 60),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.3)),
                  child: const Text(
                    "Flower Reset",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
