import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'trainer_screen.dart';
import 'nutrition_screen.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      const CustomBottomNavBar(currentIndex: 2),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff8E2DE2),
              Color(0xff4A00E0),
            ],
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [

                  // HEADER
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [

                      glassButton(
                        icon: Icons.arrow_back,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const NutritionScreen(),
                            ),
                          );
                        },
                      ),

                      const Text(
                        "Your Progress",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      glassButton(
                        icon: Icons.arrow_forward,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const TrainerScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // TITLE
                  const Text(
                    "Weekly Activity",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // DAYS
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children:
                    ["Sun", "Mon", "Tue", "Wed", "Thu"]
                        .map(
                          (e) => Container(
                        padding:
                        const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: e == "Thu"
                              ? Colors.deepOrange
                              : Colors.white24,
                          borderRadius:
                          BorderRadius.circular(15),
                        ),
                        child: Text(
                          e,
                          style: TextStyle(
                            color: e == "Thu"
                                ? Colors.white
                                : Colors.white70,
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ),

                  const SizedBox(height: 35),

                  // GRAPH CARD
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius:
                      BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      crossAxisAlignment:
                      CrossAxisAlignment.end,
                      children: const [
                        ProgressBar(
                            height: 80,
                            label: "S"),
                        ProgressBar(
                            height: 110,
                            label: "M"),
                        ProgressBar(
                            height: 120,
                            label: "T"),
                        ProgressBar(
                            height: 140,
                            label: "W"),
                        ProgressBar(
                            height: 90,
                            label: "T"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // STATS
                  Row(
                    children: [
                      Expanded(
                        child: statCard(
                          "Calories",
                          "1,850",
                          Icons.local_fire_department,
                        ),
                      ),

                      const SizedBox(width: 15),

                      Expanded(
                        child: statCard(
                          "Workout",
                          "5 hrs",
                          Icons.fitness_center,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  statCard(
                    "Steps",
                    "8,940",
                    Icons.directions_walk,
                  ),

                  const SizedBox(height: 35),

                  const Center(
                    child: Text(
                      "Weekly Goal",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // CIRCLE PROGRESS
                  Center(
                    child: Container(
                      padding:
                      const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2),
                            blurRadius: 12,
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 190,
                            width: 190,
                            child:
                            CircularProgressIndicator(
                              value: 0.7,
                              strokeWidth: 15,
                              backgroundColor:
                              Colors.white24,
                              color:
                              Colors.deepOrange,
                            ),
                          ),

                          const Column(
                            mainAxisSize:
                            MainAxisSize.min,
                            children: [
                              Text(
                                "70%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Completed",
                                style: TextStyle(
                                  color:
                                  Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // GLASS BUTTON
  Widget glassButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius:
        BorderRadius.circular(15),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: onTap,
      ),
    );
  }

  // STATS CARD
  Widget statCard(
      String title,
      String value,
      IconData icon,
      ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius:
        BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.orange,
            size: 35,
          ),

          const SizedBox(width: 15),

          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white70,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final double height;
  final String label;

  const ProgressBar({
    super.key,
    required this.height,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
      MainAxisAlignment.end,
      children: [
        Container(
          width: 22,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius:
            BorderRadius.circular(30),
          ),
          alignment:
          Alignment.bottomCenter,
          child: Container(
            height: height * .7,
            decoration: BoxDecoration(
              gradient:
              const LinearGradient(
                colors: [
                  Colors.orange,
                  Colors.deepOrange,
                ],
              ),
              borderRadius:
              BorderRadius.circular(30),
            ),
          ),
        ),

        const SizedBox(height: 8),

        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}