// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_theme.dart';
import '../../../view/sign_up_view.dart';
import '../../../widgets/buttons_widget.dart';
import '../../../widgets/custom_clipper.dart';
import '../bottom_text.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  String email = "";
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password reset link sent to your email'),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No user found for that email.'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ClipPath(
              clipper: CustomClip(),
              child: Image.asset(
                'assets/images/pexels-pixabay-35196.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Enter your email to reset your password',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 103, 103, 103),
                  ),
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(CupertinoIcons.mail_solid),
                        prefixIconColor: secondaryColor,
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // Border when focused
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: secondaryColor,
                          ), // Dark green border color when focused
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        email = emailController.text;
                      });
                    }
                    resetPassword();
                  },
                  child: const ButtonsWidget(
                    title: 'Send Email',
                    borderColor: primaryColor,
                    textColor: Colors.white,
                    buttonColor: primaryColor,
                    textsize: 20,
                  ),
                ),
                BottomText(
                  firstText: 'Don\'t have an account?',
                  secondText: 'Create One',
                  textBtnPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
