import 'package:flutter/material.dart';
import 'recommendation_screen.dart';
import 'bottom_navbar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9C27FF),

      bottomNavigationBar:
      const CustomBottomNavBar(currentIndex: 1),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                // HEADER
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello 👋",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "user",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    CircleAvatar(
                      radius: 25,
                      backgroundColor:
                      Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color:
                          Colors.deepPurple,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // SEARCH BAR
                Container(
                  padding:
                  const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText:
                      "Search workouts...",
                      border: InputBorder.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // HERO BANNER
                Container(
                  padding:
                  const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.deepPurple,
                        Colors.purpleAccent,
                      ],
                    ),
                    borderRadius:
                    BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                "Build Your\n",
                                style:
                                TextStyle(
                                  fontSize: 30,
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                  color:
                                  Colors.white,
                                ),
                              ),
                              TextSpan(
                                text:
                                "Dream Body 💪",
                                style:
                                TextStyle(
                                  fontSize: 24,
                                  color:
                                  Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ClipRRect(
                        borderRadius:
                        BorderRadius.circular(
                            20),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=500',
                          height: 120,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                // HORIZONTAL SCROLL CATEGORY
                SizedBox(
                  height: 140,
                  child: ListView(
                    scrollDirection:
                    Axis.horizontal,
                    children: [
                      categoryItem(
                        'Running',
                        Icons.directions_run,
                        'https://images.unsplash.com/photo-1552674605-db6ffd4facb5?w=500',
                      ),

                      categoryItem(
                        'Push Up',
                        Icons.fitness_center,
                        'https://images.unsplash.com/photo-1518611012118-696072aa579a?w=500',
                      ),

                      categoryItem(
                        'Yoga',
                        Icons.self_improvement,
                        'https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=500',
                      ),

                      categoryItem(
                        'Cycling',
                        Icons.pedal_bike,
                        'https://images.unsplash.com/photo-1517649763962-0c623066013b?w=500',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Today Activity',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),

                activityCard(
                  'Daily Walking',
                  '20 minutes a day',
                  0.7,
                  'https://images.unsplash.com/photo-1551632811-561732d1e306?w=500',
                ),

                const SizedBox(height: 15),

                activityCard(
                  'Daily Push Up',
                  '10 minutes a day',
                  0.9,
                  'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=500',
                ),

                const SizedBox(height: 15),

                activityCard(
                  'Meditation',
                  '15 minutes a day',
                  0.6,
                  'https://images.unsplash.com/photo-1508672019048-805c876b67e2?w=500',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // CATEGORY CARD
  Widget categoryItem(
      String title,
      IconData icon,
      String image,
      ) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            child: Image.network(
              image,
              height: 80,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 8),

          Icon(icon,
              color: Colors.deepPurple),

          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // ACTIVITY CARD
  Widget activityCard(
      String title,
      String subtitle,
      double progress,
      String image,
      ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(20),
      ),
      child: Row(
        children: [

          ClipRRect(
            borderRadius:
            BorderRadius.circular(15),
            child: Image.network(
              image,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                Text(subtitle),

                const SizedBox(height: 8),

                LinearProgressIndicator(
                  value: progress,
                  borderRadius:
                  BorderRadius.circular(
                      20),
                ),
              ],
            ),
          ),

          Text(
            "${(progress * 100).toInt()}%",
            style: const TextStyle(
              fontWeight:
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}