import 'package:cloud_firestore/cloud_firestore.dart';

class LoginModel {
  final String? id;

  final String email;

  final String password;

  const LoginModel({
    this.id,
    required this.email,
    required this.password,

  });

  toJson() {
    return {

      'Email': email,

      'Password': password,
    };
  }

  //map user fetched from firebase to LoginModel
  factory LoginModel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>>document) {
    final data=document.data()!;
    return LoginModel(
      id:document.id,
      email: data['Email'],
      password: data['Password'],
    );
  }
}
