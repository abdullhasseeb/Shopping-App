

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  // keep final which do not want to update
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });


  /// static function to create an empty user model
  static UserModel empty() => UserModel(id: "", firstName: "", lastName: "", username: "", email: "", phoneNumber: "", profilePicture: "");

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'firstName' : firstName,
      'lastName' : lastName,
      'username' : username,
      'email' : email,
      'phoneNumber' : phoneNumber,
      'profilePicture' : profilePicture
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    if(document.data() != null){
      final data = document.data()!;
      return UserModel(
          id: document.id,
          firstName: data['firstName'] ?? '',
          lastName: data['lastName'] ?? '',
          username: data['username'] ?? '',
          email: data['email'] ?? '',
          phoneNumber: data['phoneNumber'] ?? '',
          profilePicture: data['profilePicture'] ?? ''
      );
    }else{
      return UserModel.empty();
    }
  }

}