import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plantapp/constants/app_theme.dart';
import 'package:plantapp/view/home_page_view.dart';
import 'package:plantapp/view/sign_up_view.dart';
import 'package:plantapp/widgets/buttons_widget.dart';
import 'package:plantapp/widgets/clipped_image.dart';
import '../screens/Auth/bottom_text.dart';
import '../screens/Auth/heading.dart';
import '../widgets/text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  String email = '';
  String password = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap your Column with SingleChildScrollView
        child: Column(
          children: [
            const ClippedImage(),
            const Gap(20),
            const RegistrationHeading(
              title: 'Sign In',
              subTitle: 'Log in to your account',
            ),
            const Gap(20),
            TextFieldWidget(
              controller: emailController,
              title: "Testemail@gmail.com",
              icon: Icons.mail,
            ),
            const Gap(15),
            TextFieldWidget(
              controller: passwordController,
              title: "Password",
              icon: Iconsax.password_check,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Remember me',
                  style: GoogleFonts.ubuntu(
                    textStyle: AppTheme.smallTextMisc,
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
                TextButton(
                  onPressed: () {},
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
            const Gap(20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppHomePage(),
                  ),
                );
              },
              child: const ButtonsWidget(
                textsize: 24,
                btnheight: 60,
                title: 'Log In',
                borderColor: primaryColor,
                textColor: Colors.white,
                buttonColor: primaryColor,
              ),
            ),
            const Gap(80),
            BottomText(
              firstText: 'Already have an account?',
              secondText: 'Log In',
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
    );
  }
}
