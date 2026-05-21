import 'package:flutter/material.dart';
import 'nutrition_screen.dart';
import 'bottom_navbar.dart';

class RecommendationScreen extends StatelessWidget {
  const RecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      // Bottom Navbar
      bottomNavigationBar:
      const CustomBottomNavBar(currentIndex: 0),

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          'Workout Recommendation',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                  const NutritionScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.deepPurpleAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:
              const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 10),

                  // Main Title
                  Center(
                    child: Text(
                      'Recommended Workout',
                      style: TextStyle(
                        fontSize:
                        MediaQuery.of(context)
                            .size
                            .width *
                            0.07,
                        color: Colors.white,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Workout Image
                  ClipRRect(
                    borderRadius:
                    BorderRadius.circular(
                        25),

                    child: Image.network(
                      'https://images.unsplash.com/photo-1599058917765-a780eda07a3e?auto=format&fit=crop&w=1000&q=80',

                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,

                      loadingBuilder:
                          (context, child,
                          loadingProgress) {
                        if (loadingProgress ==
                            null) {
                          return child;
                        }

                        return const SizedBox(
                          height: 250,
                          child: Center(
                            child:
                            CircularProgressIndicator(),
                          ),
                        );
                      },

                      errorBuilder:
                          (context, error,
                          stackTrace) {
                        return Container(
                          height: 250,
                          decoration:
                          BoxDecoration(
                            color:
                            Colors.white24,
                            borderRadius:
                            BorderRadius
                                .circular(
                                25),
                          ),
                          child:
                          const Center(
                            child: Text(
                              'Image failed to load',
                              style:
                              TextStyle(
                                color: Colors
                                    .white,
                                fontSize:
                                18,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Workout Title
                  const Center(
                    child: Text(
                      'Battle Rope Workout',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Workout Details
                  Container(
                    padding:
                    const EdgeInsets
                        .symmetric(
                      vertical: 20,
                    ),

                    decoration:
                    BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius
                          .circular(25),
                    ),

                    child: const Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceAround,
                      children: [

                        Column(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 32,
                            ),
                            SizedBox(
                                height: 5),
                            Text(
                              '20 min',
                              style:
                              TextStyle(
                                fontWeight:
                                FontWeight
                                    .bold,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Icon(
                              Icons
                                  .local_fire_department,
                              size: 32,
                            ),
                            SizedBox(
                                height: 5),
                            Text(
                              '300 kcal',
                              style:
                              TextStyle(
                                fontWeight:
                                FontWeight
                                    .bold,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Icon(
                              Icons
                                  .fitness_center,
                              size: 32,
                            ),
                            SizedBox(
                                height: 5),
                            Text(
                              'Medium',
                              style:
                              TextStyle(
                                fontWeight:
                                FontWeight
                                    .bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Description Container
                  Container(
                    width: double.infinity,
                    padding:
                    const EdgeInsets
                        .all(25),

                    decoration:
                    BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius
                          .circular(35),

                      boxShadow: const [
                        BoxShadow(
                          color:
                          Colors.black26,
                          blurRadius: 10,
                          offset:
                          Offset(0, 5),
                        ),
                      ],
                    ),

                    child: const Column(
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                      children: [

                        Text(
                          'Description',
                          style:
                          TextStyle(
                            fontSize: 28,
                            fontWeight:
                            FontWeight
                                .bold,
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          'A high-intensity full-body workout that uses heavy ropes to build strength, endurance, and cardiovascular fitness. Battle rope training improves muscle power, burns calories, and enhances stamina.',

                          style:
                          TextStyle(
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Start Workout Button
                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(
                      style:
                      ElevatedButton
                          .styleFrom(
                        backgroundColor:
                        Colors.white,

                        padding:
                        const EdgeInsets
                            .symmetric(
                          vertical: 18,
                        ),

                        shape:
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius
                              .circular(
                              20),
                        ),
                      ),

                      onPressed: () {
                        ScaffoldMessenger.of(
                            context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Workout Started!',
                            ),
                          ),
                        );
                      },

                      child: const Text(
                        'Start Workout',
                        style: TextStyle(
                          fontSize: 20,
                          color:
                          Colors.purple,
                          fontWeight:
                          FontWeight
                              .bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}