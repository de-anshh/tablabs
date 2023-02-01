import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tablabs/model/authmodel.dart';
import 'package:tablabs/network/api_call.dart';
import 'package:tablabs/utils/appApiConstant.dart';
import 'package:tablabs/utils/appConstant.dart';

class  AuthProvider extends ChangeNotifier {
  User? userDetails;




  loginUsingEmailId(String emailID, String password, String os, String deviceID) async {
    String myUrl = ApiConstants.login + '?emailId=${emailID}&password=${password}&os=${os}&deviceId=${deviceID}';
    print(myUrl);
    APIHelper apiHelper=APIHelper();
    var res = await apiHelper.ApiPostData(myUrl);
    userDetails = null;
    userDetails = res.User;
    notifyListeners();
    print(userDetails);
    return userDetails;
  }
}