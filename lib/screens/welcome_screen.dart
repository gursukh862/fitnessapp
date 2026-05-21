import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff6A0572),
              Color(0xffC72CFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [

              const SizedBox(
                  height: 70),

              // TOP ARROW BUTTON
              Align(
                alignment:
                Alignment.topRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                        const LoginScreen(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(
                  height: 20),

              // ONLINE IMAGE
              Center(
                child: ClipOval(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=500',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,

                    // Loading spinner
                    loadingBuilder: (
                        context,
                        child,
                        loadingProgress,
                        ) {
                      if (loadingProgress ==
                          null) {
                        return child;
                      }

                      return const SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child:
                          CircularProgressIndicator(),
                        ),
                      );
                    },

                    // Error handling
                    errorBuilder:
                        (
                        context,
                        error,
                        stackTrace,
                        ) {
                      return const CircleAvatar(
                        radius: 100,
                        child: Icon(
                          Icons.fitness_center,
                          size: 60,
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(
                  height: 40),

              // TITLE
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Make ',
                      style: TextStyle(
                        color:
                        Colors.orange,
                        fontSize: 38,
                        fontWeight:
                        FontWeight
                            .bold,
                      ),
                    ),
                    TextSpan(
                      text:
                      'your body\nhealthy & Fit',
                      style: TextStyle(
                        color:
                        Colors.black,
                        fontSize: 38,
                        fontWeight:
                        FontWeight
                            .bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                  height: 30),

              // DESCRIPTION
              const Text(
                'Track your progress, stay\nconsistent, and unlock your\nfull potential every day.',
                textAlign:
                TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

              const Spacer(),

              // GET STARTED BUTTON
              ElevatedButton(
                style:
                ElevatedButton
                    .styleFrom(
                  backgroundColor:
                  Colors.orange,
                  padding:
                  const EdgeInsets
                      .symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius
                        .circular(
                        12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                      const LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(
                  height: 60),
            ],
          ),
        ),
      ),
    );
  }
}