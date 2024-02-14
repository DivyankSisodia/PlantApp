// ignore_for_file: await_only_futures, no_leading_underscores_for_local_identifiers, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:plantapp/services/data_base.dart';
import 'package:the_apple_sign_in/the_apple_sign_in.dart';

import '../view/home_page_view.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;

  getCyrrentUser() async {
    return await auth.currentUser;
  }

  signInWithGoogle(BuildContext context) async {
    final FirebaseAuth _firebaseauth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    UserCredential result =
        await _firebaseauth.signInWithCredential(credential);

    User? userDetails = result.user;

    if (result != null) {
      Map<String, dynamic> userInfoMap = {
        "email": userDetails!.email,
        "username": userDetails.displayName,
        "profilePic": userDetails.photoURL,
        "id": userDetails.uid,
      };
      await DataBaseMethods()
          .addUser(userDetails.uid, userInfoMap)
          .then((value) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AppHomePage(),
          ),
        );
      });
    }
  }

  Future<User> signInWithApple({List<Scope> scope = const []}) async {
    final result = await TheAppleSignIn.performRequests(
        [AppleIdRequest(requestedScopes: scope)]);
    switch (result.status) {
      case AuthorizationStatus.authorized:
        final appleIdCredential = result.credential!;
        final oAuthProvider = OAuthProvider('apple.com');
        final credential = oAuthProvider.credential(
          idToken: String.fromCharCodes(appleIdCredential.identityToken!),
        );
        final userCredential = await auth.signInWithCredential(credential);
        final firebaseUser = userCredential.user!;
        if (scope.contains(Scope.fullName)) {
          final fullName = appleIdCredential.fullName;
          if(fullName!=null && fullName.givenName!=null && fullName.familyName!=null){
            await firebaseUser.updateProfile(displayName: '${fullName.givenName} ${fullName.familyName}');
          }
        }
        return firebaseUser;
      case AuthorizationStatus.error:
        throw FirebaseAuthException(
          message: result.error.toString(),
          code: 'ERROR_AUTHORIZATION_DENIED',
        );
      case AuthorizationStatus.cancelled:
        throw FirebaseAuthException(
          message: 'User cancelled',
          code: 'ERROR_ABORTED_BY_USER',
        );
      default:
        throw UnimplementedError();
    }
  }
}
