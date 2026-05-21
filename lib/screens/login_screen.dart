import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool obscurePassword = true;

  final TextEditingController emailController =
  TextEditingController();

  final TextEditingController passwordController =
  TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6A0572),
      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
              MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [

                // TOP BUTTONS
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // ONLINE FITNESS IMAGE
                Center(
                  child: ClipOval(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=500',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,

                      // Loading spinner
                      loadingBuilder: (
                          context,
                          child,
                          loadingProgress,
                          ) {
                        if (loadingProgress == null) {
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

                      // Error image
                      errorBuilder:
                          (context, error, stackTrace) {
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

                const SizedBox(height: 20),

                // MAIN CONTAINER
                Container(
                  width: double.infinity,
                  padding:
                  const EdgeInsets.all(25),
                  decoration:
                  const BoxDecoration(
                    color: Color(0xffEDEDED),
                    borderRadius:
                    BorderRadius.only(
                      topLeft:
                      Radius.circular(35),
                      topRight:
                      Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [

                      const Text(
                        'Welcome back!',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Enter your Email & Password',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(height: 25),

                      // EMAIL FIELD
                      TextField(
                        controller:
                        emailController,
                        decoration:
                        InputDecoration(
                          hintText: 'Email',
                          prefixIcon:
                          const Icon(
                            Icons.email,
                          ),
                          border:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius
                                .circular(
                                15),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // PASSWORD FIELD
                      TextField(
                        controller:
                        passwordController,
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
                            onPressed: () {
                              setState(() {
                                obscurePassword =
                                !obscurePassword;
                              });
                            },
                          ),
                          border:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius
                                .circular(
                                15),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // REMEMBER ME + FORGOT PASSWORD
                      Row(
                        children: [
                          Checkbox(
                            value:
                            rememberMe,
                            onChanged:
                                (value) {
                              setState(() {
                                rememberMe =
                                value!;
                              });
                            },
                          ),

                          const Text(
                            'Remember me',
                          ),

                          const Spacer(),

                          TextButton(
                            onPressed: () {},
                            child:
                            const Text(
                              'Forgot Password?',
                              style:
                              TextStyle(
                                color:
                                Colors
                                    .black,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // LOGIN BUTTON
                      SizedBox(
                        width:
                        double.infinity,
                        height: 55,
                        child:
                        ElevatedButton(
                          style:
                          ElevatedButton
                              .styleFrom(
                            backgroundColor:
                            Colors.orange,
                            shape:
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  12),
                            ),
                          ),
                          onPressed: () {

                            String email =
                            emailController
                                .text
                                .trim();

                            String password =
                            passwordController
                                .text
                                .trim();

                            // LOGIN CHECK
                            if (email ==
                                "test@gmail.com" &&
                                password ==
                                    "test") {

                              Navigator
                                  .pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                  const HomeScreen(),
                                ),
                              );

                            } else {

                              ScaffoldMessenger
                                  .of(
                                  context)
                                  .showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Invalid email or password',
                                  ),
                                ),
                              );
                            }
                          },
                          child:
                          const Text(
                            'Login Here',
                            style:
                            TextStyle(
                              fontSize: 22,
                              color:
                              Colors
                                  .white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Center(
                        child: Text(
                          'Or Login With',
                          style:
                          TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // SOCIAL ICONS
                      const Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                        children: [
                          Icon(
                            Icons.facebook,
                            color:
                            Colors.blue,
                          ),
                          SizedBox(
                              width: 20),
                          Icon(
                            Icons
                                .g_mobiledata,
                            color:
                            Colors.orange,
                            size: 35,
                          ),
                          SizedBox(
                              width: 20),
                          Icon(
                            Icons.apple,
                            color:
                            Colors.black,
                          ),
                        ],
                      ),

                      const SizedBox(height: 30),

                      // SIGN UP
                      Center(
                        child:
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                const SignupScreen(),
                              ),
                            );
                          },
                          child:
                          const Text.rich(
                            TextSpan(
                              text:
                              'Don’t have an account? ',
                              children: [
                                TextSpan(
                                  text:
                                  'Sign Up',
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
                      ),

                      const SizedBox(height: 20),
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