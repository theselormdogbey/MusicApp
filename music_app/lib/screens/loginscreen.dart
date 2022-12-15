import 'package:flutter/material.dart';
import 'package:music_app/data/theme/colors.dart';
import 'package:music_app/screens/forgotten_screen.dart';
import 'package:music_app/screens/nav_screen.dart';
import 'package:music_app/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //text Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage(Assets.blend),
                ),

                //Username Container
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),

                    //User Textfield
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavScreen(),
                        ),
                      );
                    },

                    //LogIn Buttom
                    child: GestureDetector(
                      onTap: signIn,
                      child: Container(
                        padding: EdgeInsets.all(25),
                        child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProximaSoft',
                                fontSize: 18),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Text(
                  '- or- ',
                  style: TextStyle(
                    color: white,
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            child: Image(
                              image: AssetImage(Assets.google),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Text(
                              'Log In in with Google',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProximaSoft',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        color: white,
                        fontFamily: 'ProximaSoft',
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp_Screen()));
                      },
                      child: Text(
                        'Sign Up.',
                        style: TextStyle(
                          color: primary,
                          fontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 38,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgottenScreen()));
                  },
                  child: Text(
                    'Forgotten your password',
                    style: TextStyle(
                      color: primary,
                      fontFamily: 'ProximaSoft',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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
