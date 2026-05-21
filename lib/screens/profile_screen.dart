import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'trainer_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      const CustomBottomNavBar(currentIndex: 3),

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
              padding:
              const EdgeInsets.all(18),

              child: Column(
                children: [

                  // Header
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
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
                              builder:
                                  (context) =>
                              const TrainerScreen(),
                            ),
                          );
                        },
                      ),

                      const Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Profile card
                  Stack(
                    alignment:
                    Alignment.topCenter,
                    clipBehavior:
                    Clip.none,
                    children: [

                      // White card
                      Container(
                        width:
                        double.infinity,
                        margin:
                        const EdgeInsets.only(
                            top: 60),

                        padding:
                        const EdgeInsets.only(
                          top: 80,
                          left: 20,
                          right: 20,
                          bottom: 25,
                        ),

                        decoration:
                        BoxDecoration(
                          color:
                          Colors.white,
                          borderRadius:
                          BorderRadius
                              .circular(
                              30),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius:
                              10,
                              color: Colors
                                  .black12,
                            ),
                          ],
                        ),

                        child:
                        const Column(
                          children: [

                            Text(
                              "Emma Watson",
                              style:
                              TextStyle(
                                fontSize:
                                28,
                                fontWeight:
                                FontWeight
                                    .bold,
                              ),
                            ),

                            SizedBox(
                                height:
                                8),

                            Text(
                              "Fitness Enthusiast",
                              style:
                              TextStyle(
                                color:
                                Colors
                                    .grey,
                                fontSize:
                                16,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Girl profile image
                      CircleAvatar(
                        radius: 65,
                        backgroundColor:
                        Colors.white,

                        child:
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                          NetworkImage(
                            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500',
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                      height: 35),

                  // Profile Buttons
                  profileButton(
                    icon:
                    Icons.person,
                    title:
                    "My Profile",
                  ),

                  const SizedBox(
                      height: 15),

                  profileButton(
                    icon:
                    Icons.pie_chart,
                    title:
                    "Progress",
                  ),

                  const SizedBox(
                      height: 15),

                  profileButton(
                    icon:
                    Icons.settings,
                    title:
                    "Settings",
                  ),

                  const SizedBox(
                      height: 30),

                  // Logout button
                  Container(
                    width: 220,
                    padding:
                    const EdgeInsets
                        .symmetric(
                      vertical: 15,
                    ),

                    decoration:
                    BoxDecoration(
                      gradient:
                      const LinearGradient(
                        colors: [
                          Colors.orange,
                          Colors.deepOrange,
                        ],
                      ),
                      borderRadius:
                      BorderRadius
                          .circular(
                          15),
                    ),

                    child:
                    const Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                      children: [

                        Icon(
                          Icons.logout,
                          color:
                          Colors
                              .white,
                        ),

                        SizedBox(
                            width:
                            10),

                        Text(
                          "Logout",
                          style:
                          TextStyle(
                            fontSize:
                            24,
                            color: Colors
                                .white,
                            fontWeight:
                            FontWeight
                                .bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget profileButton({
    required IconData icon,
    required String title,
  }) {
    return Container(
      width: double.infinity,
      padding:
      const EdgeInsets.all(20),

      decoration:
      BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(
            18),
      ),

      child: Row(
        children: [

          CircleAvatar(
            backgroundColor:
            Colors.purple.shade100,
            child: Icon(
              icon,
              color:
              Colors.purple,
            ),
          ),

          const SizedBox(
              width: 20),

          Text(
            title,
            style:
            const TextStyle(
              fontSize: 22,
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const Spacer(),

          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}