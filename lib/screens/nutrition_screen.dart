import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'recommendation_screen.dart';
import 'progress_screen.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      const CustomBottomNavBar(currentIndex: 0),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.deepPurpleAccent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Top Navigation Row
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    // Back Arrow → Progress Screen
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const RecommendationScreen(),
                          ),
                        );
                      },
                    ),

                    const Text(
                      "Fitness Nutrition",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Forward Arrow → Recommendation Screen
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const ProgressScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Date Section
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                        const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(
                              12),
                        ),
                        child: const Text(
                          "Friday 1, November",
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding:
                      const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(
                            12),
                      ),
                      child: const Icon(
                        Icons.calendar_month,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Calories Card
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius:
                    BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "1769 of 2100 kcal",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceAround,
                        children: const [
                          NutritionItem(
                            title: "Carbs",
                            value: "28/10g",
                          ),
                          NutritionItem(
                            title: "Proteins",
                            value: "30/40g",
                          ),
                          NutritionItem(
                            title: "Fat",
                            value: "30/40g",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Food Grid
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    children: const [
                      FoodCard(
                        image:
                        "https://images.unsplash.com/photo-1610832958506-aa56368176cf",
                        title: "Fruits",
                      ),
                      FoodCard(
                        image:
                        "https://images.unsplash.com/photo-1622484212850-eb596d769edc",
                        title: "Juices",
                      ),
                      FoodCard(
                        image:
                        "https://images.unsplash.com/photo-1547592180-85f173990554",
                        title: "Meat",
                      ),
                      FoodCard(
                        image:
                        "https://images.unsplash.com/photo-1510130387422-82bed34b37e9",
                        title: "Fish",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NutritionItem extends StatelessWidget {
  final String title;
  final String value;

  const NutritionItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

class FoodCard extends StatelessWidget {
  final String image;
  final String title;

  const FoodCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius:
            BorderRadius.circular(16),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding:
          const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
            BorderRadius.circular(10),
          ),
          child: Text(title),
        ),
      ],
    );
  }
}