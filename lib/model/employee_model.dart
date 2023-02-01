class EmployeeMaster {
 late final  List<Content>? content;
  late final bool? last;
  late final int? totalPages;
  late final int? totalElements;
  late final Null? sort;
  late final bool? first;
  late final int? numberOfElements;
  late final int? size;
  late final int? number;

  EmployeeMaster(
      {required this.content,
      required this.last,
     required this.totalPages,
      required this.totalElements,
     required this.sort,
     required this.first,
     required this.numberOfElements,
     required this.size,
    required  this.number});

  EmployeeMaster.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(Content.fromJson(v));
      });
    }
    last = json['last'];
    totalPages = json['totalPages'];
    totalElements = json['totalElements'];
    sort = json['sort'];
    first = json['first'];
    numberOfElements = json['numberOfElements'];
    size = json['size'];
    number = json['number'];
  }

  Content? get data => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (content != null) {
      data['content'] = content!.map((v) => v.toJson()).toList();
    }
    data['last'] = last;
    data['totalPages'] = totalPages;
    data['totalElements'] = totalElements;
    data['sort'] = sort;
    data['first'] = first;
    data['numberOfElements'] = numberOfElements;
    data['size'] = size;
    data['number'] = number;
    return data;
  }
}

class Content {
  late final int id;
  late final String mobileNumber;
  late final String emailId;
  late final String firstName;
  late final String lastName;
  late final String otp;
  late final String password;
  late final String deviceId;
  late final String os;
  late final Null ratings;
  late final int numberOfTasksCompleted;
  late final Null profilePicture;
  late final String gender;
  late final String dateOfBirth;
  late final int isAdmin;

  Content(
      {required this.id,
      required this.mobileNumber,
     required this.emailId,
     required this.firstName,
     required this.lastName,
     required this.otp,
     required this.password,
     required this.deviceId,
     required this.os,
     required this.ratings,
     required this.numberOfTasksCompleted,
     required this.profilePicture,
     required this.gender,
     required this.dateOfBirth,
     required this.isAdmin});

  Content.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{} ;
    data['id'] = id;
    data['mobileNumber'] = mobileNumber;
    data['emailId'] = emailId;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['otp'] = otp;
    data['password'] = password;
    data['deviceId'] = deviceId;
    data['os'] = os;
    data['ratings'] = ratings;
    data['numberOfTasksCompleted'] = numberOfTasksCompleted;
    data['profilePicture'] = profilePicture;
    data['gender'] = gender;
    data['dateOfBirth'] = dateOfBirth;
    data['isAdmin'] = isAdmin;
    return data;
  }
}