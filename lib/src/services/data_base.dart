import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethods{
  Future addUser(String UserId, Map<String, dynamic> userMap) async {
    return FirebaseFirestore.instance.collection('Users').doc(UserId).set(userMap);
  }
}