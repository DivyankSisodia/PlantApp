import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plantapp/constants/app_theme.dart';
import 'package:plantapp/widgets/buttons_widget.dart';
import 'package:plantapp/widgets/clipped_image.dart';
import '../screens/Auth/bottom_text.dart';
import '../screens/Auth/heading.dart';
import '../widgets/text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
            const TextFieldWidget(
              title: "Testemail@gmail.com",
              icon: Icons.mail,
            ),
            const Gap(15),
            const TextFieldWidget(
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
            const ButtonsWidget(
              btnheight: 60,
              title: 'Log In',
              borderColor: primaryColor,
              textColor: Colors.white,
              buttonColor: primaryColor,
            ),
            const Gap(80),
            BottomText(
              firstText: 'Already have an account?',
              secondText: 'Sign In',
              textBtnPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
