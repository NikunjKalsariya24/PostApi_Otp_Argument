import 'dart:convert';
import 'dart:developer';

import 'package:api_data/homepage/api/api_model.dart';

import 'package:api_data/network_healper/network_helper.dart';

class ResultService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  ResultService();

  // static Future<ApiModel> resultRound({String? phone, String? otp}) async {
  //   try {
  //
  //     var body = json.encode({"identifier": phone, "otp": otp, "session": "ea6c8656-d445-4b51-8aab-ae02d88b6619"});
  //
  //     var headers = {'Content-Type': 'application/json'};
  //     final result = await _networkAPICall.post("https://tgs-trmt-strapi-bkd.intellihub.ai/api/user/login/mobile", header: headers, body: body);
  //
  //     log("ResultRoundModel result ---> ${result}");
  //     // log("ResultRoundModel result ---> ${jsonEncode(result)}");
  //
  //     //  return apiModelFromJson(jsonEncode(result));
  //     return ApiModel.fromJson(result);
  //   } catch (e, st) {
  //     log("resultService=========$e $st");
  //     rethrow;
  //     // return ApiModel();
  //   }
  // }

  static Future resultRound({String? phone, String? otp}) async {
    try {

      var body = json.encode({"identifier": phone, "otp": otp, "session": "ea6c8656-d445-4b51-8aab-ae02d88b6619"});

      var headers = {'Content-Type': 'application/json'};
      final result = await _networkAPICall.post("https://tgs-trmt-strapi-bkd.intellihub.ai/api/user/login/mobile", header: headers, body: body);

      log("ResultRoundModel result ---> ${result}");
      // log("ResultRoundModel result ---> ${jsonEncode(result)}");

      //  return apiModelFromJson(jsonEncode(result));
      // return ApiModel.fromJson(result);   //post all data
      return result;
    } catch (e, st) {
      log("resultService=========$e $st");
      rethrow;
      // return ApiModel();
    }
  }
}
