import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'profile_screen.dart';
import 'progress_screen.dart';

class TrainerScreen extends StatelessWidget {
  const TrainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      const CustomBottomNavBar(currentIndex: 2),

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18),

              child: Column(
                children: [

                  // Header
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [

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
                              const ProgressScreen(),
                            ),
                          );
                        },
                      ),

                      const Text(
                        "Trainer Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

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
                              const ProfileScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Profile Section with card behind image
                  Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [

                      // White design card behind image
                      Container(
                        margin:
                        const EdgeInsets.only(
                            top: 60),
                        width: double.infinity,
                        padding:
                        const EdgeInsets.only(
                          top: 80,
                          left: 20,
                          right: 20,
                          bottom: 25,
                        ),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(
                              30),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.black12,
                            ),
                          ],
                        ),

                        child: const Column(
                          children: [
                            Text(
                              "John Carter",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 8),

                            Text(
                              "Professional Fitness Trainer",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Online trainer image
                      CircleAvatar(
                        radius: 65,
                        backgroundColor:
                        Colors.white,

                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage:
                          NetworkImage(
                            'https://images.unsplash.com/photo-1566753323558-f4e0952af115?w=500',
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // Experience card
                  trainerCard(
                    title:
                    "Training Experience",
                    subtitle:
                    "More than 10+ years",
                  ),

                  const SizedBox(height: 15),

                  // Categories card
                  Container(
                    width: double.infinity,
                    padding:
                    const EdgeInsets.all(
                        18),

                    decoration:
                    BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(
                          20),
                    ),

                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                      children: [

                        const Text(
                          "Training Categories",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),

                        const SizedBox(
                            height: 15),

                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            chip("Cycling"),
                            chip("Gym"),
                            chip("Weight Loss"),
                            chip("Cardio"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Location card
                  trainerCard(
                    title: "Location",
                    subtitle:
                    "Kathmandu, Nepal",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget chip(String text) {
    return Container(
      padding:
      const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius:
        BorderRadius.circular(12),
        border: Border.all(
          color: Colors.purple,
        ),
      ),

      child: Text(
        text,
        style: const TextStyle(
          fontWeight:
          FontWeight.bold,
        ),
      ),
    );
  }

  Widget trainerCard({
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: double.infinity,
      padding:
      const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.orange,
              fontWeight:
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}