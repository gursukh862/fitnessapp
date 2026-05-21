import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() =>
      _SignupScreenState();
}

class _SignupScreenState
    extends State<SignupScreen> {

  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xff6A0572),
      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
              MediaQuery.of(context)
                  .size
                  .height,
            ),
            child: Column(
              children: [

                // TOP BUTTONS
                Padding(
                  padding:
                  const EdgeInsets.all(
                      15),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(
                              context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color:
                          Colors.white,
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color:
                          Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                    height: 10),

                // ONLINE IMAGE
                Center(
                  child: ClipOval(
                    child:
                    Image.network(
                      'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=500',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,

                      loadingBuilder:
                          (
                          context,
                          child,
                          loadingProgress,
                          ) {
                        if (loadingProgress ==
                            null) {
                          return child;
                        }

                        return const SizedBox(
                          width: 150,
                          height: 150,
                          child: Center(
                            child:
                            CircularProgressIndicator(),
                          ),
                        );
                      },

                      errorBuilder:
                          (
                          context,
                          error,
                          stackTrace,
                          ) {
                        return const CircleAvatar(
                          radius: 75,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(
                    height: 20),

                // MAIN CONTAINER
                Container(
                  width:
                  double.infinity,
                  padding:
                  const EdgeInsets
                      .all(25),
                  decoration:
                  const BoxDecoration(
                    color:
                    Color(0xffEDEDED),
                    borderRadius:
                    BorderRadius.only(
                      topLeft:
                      Radius.circular(
                          35),
                      topRight:
                      Radius.circular(
                          35),
                    ),
                  ),

                  child: Column(
                    children: [

                      const Text(
                        'Sign Up',
                        style:
                        TextStyle(
                          fontSize: 36,
                          fontWeight:
                          FontWeight
                              .bold,
                        ),
                      ),

                      const SizedBox(
                          height: 10),

                      const Text(
                        'Enter your info to keep it going!',
                        style:
                        TextStyle(
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(
                          height: 30),

                      // NAME
                      TextField(
                        decoration:
                        InputDecoration(
                          hintText:
                          'Name',
                          prefixIcon:
                          const Icon(
                            Icons.person,
                          ),
                          border:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(
                                15),
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 20),

                      // EMAIL
                      TextField(
                        decoration:
                        InputDecoration(
                          hintText:
                          'Email',
                          prefixIcon:
                          const Icon(
                            Icons.email,
                          ),
                          border:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(
                                15),
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 20),

                      // PASSWORD
                      TextField(
                        obscureText:
                        obscurePassword,
                        decoration:
                        InputDecoration(
                          hintText:
                          'Password',
                          prefixIcon:
                          const Icon(
                            Icons.lock,
                          ),
                          suffixIcon:
                          IconButton(
                            icon: Icon(
                              obscurePassword
                                  ? Icons
                                  .visibility_off
                                  : Icons
                                  .visibility,
                            ),
                            onPressed:
                                () {
                              setState(
                                      () {
                                    obscurePassword =
                                    !obscurePassword;
                                  });
                            },
                          ),
                          border:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(
                                15),
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 30),

                      // SIGN UP BUTTON
                      SizedBox(
                        width: double
                            .infinity,
                        height: 55,
                        child:
                        ElevatedButton(
                          style:
                          ElevatedButton
                              .styleFrom(
                            backgroundColor:
                            Colors
                                .orange,
                            shape:
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(
                                  12),
                            ),
                          ),
                          onPressed:
                              () {
                            ScaffoldMessenger.of(
                                context)
                                .showSnackBar(
                              const SnackBar(
                                content:
                                Text(
                                  'Signup Successful!',
                                ),
                              ),
                            );
                          },
                          child:
                          const Text(
                            'Sign Up',
                            style:
                            TextStyle(
                              fontSize:
                              24,
                              color: Colors
                                  .white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 20),

                      // LOGIN HERE
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                              context);
                        },
                        child:
                        const Text.rich(
                          TextSpan(
                            text:
                            'Already have an account? ',
                            children: [
                              TextSpan(
                                text:
                                'Login here',
                                style:
                                TextStyle(
                                  color:
                                  Colors
                                      .purple,
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 20),

                      const Text(
                        'Or Login With',
                        style:
                        TextStyle(
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(
                          height: 20),

                      // SOCIAL ICONS
                      const Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors
                                .blue,
                          ),
                          SizedBox(
                              width:
                              20),
                          Icon(
                            Icons
                                .g_mobiledata,
                            color: Colors
                                .orange,
                            size: 35,
                          ),
                          SizedBox(
                              width:
                              20),
                          Icon(
                            Icons.apple,
                            color: Colors
                                .black,
                          ),
                        ],
                      ),

                      const SizedBox(
                          height: 20),
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