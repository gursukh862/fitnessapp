import 'package:flutter/material.dart';
import 'category_screen.dart';
import 'bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9C27FF),

      bottomNavigationBar:
      const CustomBottomNavBar(currentIndex: 0),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 18,
            ),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                // TOP BAR
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius:
                        BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius:
                        BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                              const CategoryScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // HEADER TEXT
                const Text(
                  'Hello, User 👋',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  'Find Your Workout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                // SEARCH BAR
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color:
                        Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:
                      'Search workout or trainer',
                      prefixIcon:
                      const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // TRENDING
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Trending Courses',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // COURSE CARDS
                Row(
                  children: [
                    Expanded(
                      child: courseCard(
                        'Cross Fit',
                        'https://images.unsplash.com/photo-1517838277536-f5f99be501cd?w=500',
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: courseCard(
                        'Cycling',
                        'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=500',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // EXPLORE BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      Colors.deepOrange,
                      padding:
                      const EdgeInsets.symmetric(
                        vertical: 18,
                      ),
                      shape:
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Explore Now',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // DISCOUNT CARD
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(20),
                    gradient:
                    const LinearGradient(
                      colors: [
                        Color(0xff4A90E2),
                        Color(0xff6A5AE0),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                        Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [

                      ClipRRect(
                        borderRadius:
                        BorderRadius.circular(15),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?w=500',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              '40% Discount',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 6),

                            Text(
                              'On all fitness programs this week!',
                              style: TextStyle(
                                color:
                                Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
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

  Widget courseCard(
      String title,
      String imageUrl,
      ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius:
        BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Container(
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 15,
              left: 15,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}