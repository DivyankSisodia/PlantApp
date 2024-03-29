// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plantapp/src/services/auth.dart';
import 'package:plantapp/src/view/home_page_view.dart';
import '../constants/app_theme.dart';
import '../screens/Auth/bottom_text.dart';
import '../screens/Auth/forgot_pass/forgot_password.dart';
import '../screens/Auth/heading.dart';
import '../screens/Auth/social_media_btn.dart';
import '../widgets/buttons_widget.dart';
import '../widgets/clipped_image.dart';
import '../widgets/text_field.dart';
import 'sign_in_view.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email = '';
  String password = '';
  String fullName = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  final _key = GlobalKey<FormState>();

  registration() async {
    if (emailController.text != "" &&
        fullNameController.text != "null") {
      try {
        UserCredential usercredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Registration Successful'),
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AppHomePage(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('The password provided is too weak.'),
            ),
          );
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('The account already exists for that email.'),
            ),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('An error occurred'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ClippedImage(),
            const Gap(10),
            const RegistrationHeading(
              title: 'Sign Up',
              subTitle: 'Create your new account',
            ),
            const Gap(10),
            Form(
              key: _key,
              child: Column(
                children: [
                  TextFieldWidget(
                    controller: fullNameController,
                    title: "Full Name",
                    icon: Icons.person,
                  ),
                  TextFieldWidget(
                    controller: emailController,
                    title: "Testemail@gmail.com",
                    icon: Icons.mail,
                  ),
                  TextFieldWidget(
                    controller: passwordController,
                    title: "Password",
                    icon: Iconsax.password_check,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Rememeber me',
                  style: GoogleFonts.ubuntu(
                    textStyle: AppTheme.smallTextMisc,
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.ubuntu(
                      textStyle: AppTheme.smallTextMisc,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                if (_key.currentState!.validate()) {
                  setState(() {
                    email = emailController.text;
                    password = passwordController.text;
                    fullName = fullNameController.text;
                  });
                }
                registration();
              },
              child: const ButtonsWidget(
                textsize: 24,
                btnheight: 50,
                title: 'Sign Up',
                borderColor: primaryColor,
                textColor: Colors.white,
                buttonColor: primaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1, // Adjust the height of the divider line
                  width: 100, // Adjust the width of the divider line
                  color: Colors.grey, // Adjust the color of the divider line
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Or Continue with',
                    style: GoogleFonts.ubuntu(
                      textStyle: AppTheme.smallTextMisc,
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  height: 1, // Adjust the height of the divider line
                  width: 100, // Adjust the width of the divider line
                  color: Colors.grey, // Adjust the color of the divider line
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    AuthMethods().signInWithGoogle(context);
                  },
                  child: const SocialMediaBtn(
                    image: 'assets/images/7123025_logo_google_g_icon.png',
                    btnheight: 40,
                    btnwidth: 40,
                  ),
                ),
                const SocialMediaBtn(
                    image:
                        'assets/images/5296499_fb_facebook_facebook logo_icon.png',
                    btnheight: 28,
                    btnwidth: 28),
                GestureDetector(
                  onTap: () {
                    AuthMethods().signInWithApple();
                  },
                  child: const SocialMediaBtn(
                    image: 'assets/images/104490_apple_icon.png',
                    btnheight: 32,
                    btnwidth: 32,
                  ),
                ),
              ],
            ),
            const Gap(20),
            BottomText(
              firstText: 'Already have an account?',
              secondText: 'Sign In',
              textBtnPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
