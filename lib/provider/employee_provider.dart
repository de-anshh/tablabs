import 'dart:convert';
import 'package:flutter/cupertino.dart';
import'package:tablabs/model/employee_model.dart';

import 'package:tablabs/utils/appApiConstant.dart';
import 'package:http/http.dart' as http;
class EmployeeMasterProvider with ChangeNotifier {
   Content? userDetails;
   var response;
  bool isLoading = false;
  loginUsingEmailId(String emailId, String password,String os, String deviceId) async {
    String myUrl = ApiConstants.login+'emailId?emailId=${emailId}&password=${password}&os=${os}&deviceId=${deviceId}';
   print(myUrl);
    var req = await http.post(Uri.parse(myUrl));
    response = json.decode(req.body);
    var res =  EmployeeMaster.fromJson(response);
    userDetails = null;
    userDetails = res.data;
    notifyListeners();
    return response;
  }
}