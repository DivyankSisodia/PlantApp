// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:plantapp/view/home_page_view.dart';

class OTPScreen extends StatefulWidget {
  String verificationId;

  OTPScreen({
    Key? key,
    required this.verificationId,
  }) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  // final TextEditingController _pinPutController = TextEditingController();
  // final FocusNode _pinPutFocusNode = FocusNode();

  // BoxDecoration get _pinPutDecoration {
  //   return BoxDecoration(
  //     border: Border.all(color: Color.fromARGB(255, 45, 100, 29)),
  //     borderRadius: BorderRadius.circular(15.0),
  //   );
  // }

  TextEditingController otpcontroller = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Enter OTP',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: otpcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () async {
                  try {
                    // Handle login logic
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                            verificationId: widget.verificationId,
                            smsCode: otpcontroller.text.toString());
                    await FirebaseAuth.instance
                        .signInWithCredential(credential)
                        .then(
                      (value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const AppHomePage(),
                          ),
                        );
                      },
                    );
                  } catch (e) {
                    print(e);
                  }
                },
                child: const Text('Login'),
              ),
              const Gap(20),
              ElevatedButton(
                onPressed: () {
                  // Handle resend OTP logic
                },
                child: const Text('Resend OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Pinput(
//                 defaultPinTheme: PinTheme(
//                   width: 56,
//                   height: 56,
//                   textStyle: TextStyle(
//                       fontSize: 20,
//                       color: Color.fromRGBO(30, 60, 87, 1),
//                       fontWeight: FontWeight.w600),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 focusedPinTheme: PinTheme(
//                   width: 56,
//                   height: 56,
//                   textStyle: TextStyle(
//                       fontSize: 20,
//                       color: Color.fromRGBO(30, 60, 87, 1),
//                       fontWeight: FontWeight.w600),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 submittedPinTheme: PinTheme(
//                   width: 56,
//                   height: 56,
//                   textStyle: TextStyle(
//                       fontSize: 20,
//                       color: Color.fromRGBO(30, 60, 87, 1),
//                       fontWeight: FontWeight.w600),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 validator: (s) {
//                   return s == '2222' ? null : 'Pin is incorrect';
//                 },
//                 pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
//                 showCursor: true,
//                 onCompleted: (pin) => print(pin),
//               ),