import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/constants/app_theme.dart';
import 'package:plantapp/screens/Auth/phone_auth/otp_screen.dart';
import 'package:plantapp/widgets/buttons_widget.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController phoneController = TextEditingController();

  Country country = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );

  phoneReg() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneController.text.toString(),
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (_) =>  OTPScreen(verificationId: '',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/6.jpeg',
                width: MediaQuery.of(context).size.width,
                height: 250,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We need to register your phone without getting started!",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  cursorColor: primaryColor,
                  controller: phoneController,
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: primaryColor),
                      ),
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              countryListTheme: const CountryListThemeData(
                                backgroundColor: Colors.white,
                                textStyle: TextStyle(fontSize: 20),
                                bottomSheetHeight: 400,
                              ),
                              onSelect: (value) {
                                setState(() {
                                  country = value;
                                });
                              },
                            );
                          },
                          child: Text(
                              "${country.flagEmoji} +${country.phoneCode}"),
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ButtonsWidget(
                title: 'Send Code',
                borderColor: primaryColor,
                textColor: Colors.white,
                buttonColor: primaryColor,
                textsize: 24,
                btnheight: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
