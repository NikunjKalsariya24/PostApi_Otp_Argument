import 'dart:async';
import 'dart:developer';
import 'package:api_data/homepage/api/api_model.dart';

import 'package:api_data/homepage/api/api_service.dart';
import 'package:api_data/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultController extends GetxController {
//  RxList<ApiModel> resultRoundOneModel = <ApiModel>[].obs;
   Rx<ApiModel> resultRoundOneModel = ApiModel().obs;
  RxBool isLoading = false.obs;

  TextEditingController phoneNo=TextEditingController();
   TextEditingController otp=TextEditingController();
  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }

  // Future postResultRound({String? phone,String? otp}) async {
  //   try {
  //     isLoading.value = true;
  //     resultRoundOneModel.value = await ResultService.resultRound(phone: phone,otp:otp  );
  //
  //
  //     log("getResultRound${resultRoundOneModel.value.user}");
  //     isLoading.value = false;
  //
  //     return resultRoundOneModel.value;
  //   } catch (e,st) {
  //     log("getresult===================$e $st");
  //     rethrow;
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }

// Verify otp
  Future postResultRound({String? phone,String? otp}) async {
    try {
      isLoading.value = true;
      final result = await ResultService.resultRound(phone: phone,otp:otp  );
      if(result['error']!=null){
        Get.snackbar(" ${result['error']['name']}", " ${result['error']['message']}", backgroundColor: Colors.deepOrange, snackPosition: SnackPosition.TOP);

      }
      else
      {
        resultRoundOneModel.value=ApiModel.fromJson(result);
        Get.toNamed(Routes.getPostData,arguments: resultRoundOneModel.value);
      }


      log("getResultRound${resultRoundOneModel.value.user}");
      isLoading.value = false;

      return resultRoundOneModel.value;
    } catch (e,st) {
      log("getresult===================$e $st");
      rethrow;
    } finally {
      isLoading.value = false;
    }
  }



}




