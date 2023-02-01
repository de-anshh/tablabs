class AuthModel {
  String? message;
  User? data;
  bool? success;

  AuthModel({this.message, this.data, this.success});

  AuthModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new User.fromJson(json['data']) : null;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['success'] = this.success;
    return data;
  }
}

class User {
  int? id;
  String? mobileNumber;
  String? emailId;
  String? firstName;
  String? lastName;
  String? otp;
  String? password;
  String? deviceId;
  String? os;
  Null? ratings;
  int? numberOfTasksCompleted;
  Null? profilePicture;
  String? gender;
  String? dateOfBirth;
  int? isAdmin;

  User(
      {this.id,
      this.mobileNumber,
      this.emailId,
      this.firstName,
      this.lastName,
      this.otp,
      this.password,
      this.deviceId,
      this.os,
      this.ratings,
      this.numberOfTasksCompleted,
      this.profilePicture,
      this.gender,
      this.dateOfBirth,
      this.isAdmin});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    mobileNumber = json['mobileNumber']??"";
    emailId = json['emailId']??"";
    firstName = json['firstName']??"";
    lastName = json['lastName']??"";
    otp = json['otp']??"";
    password = json['password']??"";
    deviceId = json['deviceId']??"";
    os = json['os']??"";
    ratings = json['ratings']??"";
    numberOfTasksCompleted = json['numberOfTasksCompleted']??0;
    profilePicture = json['profilePicture']??"";
    gender = json['gender']??"";
    dateOfBirth = json['dateOfBirth']??"";
    isAdmin = json['isAdmin']??0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['mobileNumber'] = this.mobileNumber;
    data['emailId'] = this.emailId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['otp'] = this.otp;
    data['password'] = this.password;
    data['deviceId'] = this.deviceId;
    data['os'] = this.os;
    data['ratings'] = this.ratings;
    data['numberOfTasksCompleted'] = this.numberOfTasksCompleted;
    data['profilePicture'] = this.profilePicture;
    data['gender'] = this.gender;
    data['dateOfBirth'] = this.dateOfBirth;
    data['isAdmin'] = this.isAdmin;
    return data;
  }
}