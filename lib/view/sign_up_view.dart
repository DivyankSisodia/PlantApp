import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plantapp/constants/app_theme.dart';
import 'package:plantapp/widgets/buttons_widget.dart';
import '../screens/Auth/bottom_text.dart';
import '../screens/Auth/heading.dart';
import '../screens/Auth/social_media_btn.dart';
import 'sign_in_view.dart';
import '../widgets/clipped_image.dart';
import '../widgets/text_field.dart';

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
            const ButtonsWidget(
              textsize: 24,
              btnheight: 50,
              title: 'Sign Up',
              borderColor: primaryColor,
              textColor: Colors.white,
              buttonColor: primaryColor,
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SocialMediaBtn(
                  image: 'assets/images/7123025_logo_google_g_icon.png',
                  btnheight: 40,
                  btnwidth: 40,
                ),
                SocialMediaBtn(
                    image:
                        'assets/images/5296499_fb_facebook_facebook logo_icon.png',
                    btnheight: 28,
                    btnwidth: 28),
                SocialMediaBtn(
                  image: 'assets/images/104490_apple_icon.png',
                  btnheight: 32,
                  btnwidth: 32,
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
