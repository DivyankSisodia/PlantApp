import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plantapp/constants/app_theme.dart';
import 'package:plantapp/widgets/Custom_Clipper.dart';
import 'package:plantapp/widgets/buttons_widget.dart';

import '../../widgets/text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CustomClip(),
            child: Container(
              width: double.infinity,
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/plant_signIn.jpg'),
                  fit: BoxFit.cover,
                  // opacity: 0.9,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          Column(
            children: [
              Text(
                "Sign Up",
                style: GoogleFonts.ubuntu(
                  textStyle: AppTheme.signUpTitle,
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
              Text(
                "Create your new account",
                style: GoogleFonts.ubuntu(
                    textStyle: AppTheme.smallTextTitle,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const Gap(10),
          const TextFieldWidget(
            title: "Full Name",
            icon: Icons.person,
          ),
          const TextFieldWidget(
            title: "Testemail@gmail.com",
            icon: Icons.mail,
          ),
          const TextFieldWidget(
            title: "Password",
            icon: Iconsax.password_check,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/7123025_logo_google_g_icon.png',
                    height: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/5296499_fb_facebook_facebook logo_icon.png',
                    height: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/104490_apple_icon.png',
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.ubuntu(
                      textStyle: AppTheme.smallTextMisc,
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.ubuntu(
                        textStyle: AppTheme.smallTextMisc,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
