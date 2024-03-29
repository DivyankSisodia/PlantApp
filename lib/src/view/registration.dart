import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/src/view/sign_in_view.dart';
import '../constants/app_theme.dart';
import '../widgets/buttons_widget.dart';
import 'sign_up_view.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                'The Best App\nFor your Plants',
                style: GoogleFonts.ibmPlexSans(
                  textStyle: AppTheme.displayCustom,
                ),
              ),
            ),
            // image
            Image.asset('assets/images/image_plant.jpeg'),
            const Gap(20),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogInScreen(),
                      ),
                    );
                  },
                  child: const ButtonsWidget(
                    buttonColor: primaryColor,
                    title: 'Sign In',
                    borderColor: primaryColor,
                    textColor: Colors.white,
                    textsize: 24,
                  ),
                ),
                const Gap(12),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const ButtonsWidget(
                    buttonColor: Colors.white,
                    title: 'Create An Account',
                    borderColor: primaryColor,
                    textColor: primaryColor,
                    textsize: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
