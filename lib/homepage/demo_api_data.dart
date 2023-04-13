import 'package:api_data/homepage/controller/datacontroller.dart';
import 'package:api_data/utils/app_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DemoApiData extends StatelessWidget {
  DemoApiData({Key? key}) : super(key: key);
  ResultController resultController = Get.put(ResultController());
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

//TextEditingController phoneNo=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            SizedBox(
              height: 6.h,
            ),
            TextFormField(
              validator: AppValidator.phoneNoValidator,
              controller: resultController.phoneNo,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "Enter The Mobile No."),
            ),
            SizedBox(
              height: 6.h,
            ),
            TextFormField(
              validator: AppValidator.passwordValidator,
              controller: resultController.otp,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "Enter The Otp."),
            ),
            SizedBox(
              height: 6.h,
            ),
            SizedBox(
              height: 6.h,
            ),
            ElevatedButton(
              onPressed: () {
                if (_form.currentState!.validate()) {
                  resultController.postResultRound(phone: resultController.phoneNo.text, otp: resultController.otp.text);
                }
                // else {
                //   Get.snackbar(" Enter Correct Phone No", " Enter Correct Otp", backgroundColor: Colors.deepOrange, snackPosition: SnackPosition.TOP);
                // }
                // if(resultController.resultRoundOneModel.value.jwt.toString().isNotEmpty && resultController.otp.text==111111)
                //   {
                //     Get.toNamed(Routes.getPostData);
                //   }
                // else
                //   {
                //
                //     Get.snackbar(
                //         " Enter Correct Phone No"," Enter Correct Otp",
                //
                //         backgroundColor: Colors.deepOrange,
                //
                //         snackPosition: SnackPosition.TOP
                //     );
                //
                //   }
                //
              },
              child: Obx(
                () => resultController.isLoading.value ? const CircularProgressIndicator() : Text(" Post Data", style: TextStyle(fontSize: 16.sp)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
