import 'package:api_data/homepage/api/api_model.dart';
import 'package:api_data/homepage/controller/datacontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class GetPostData extends StatefulWidget {



   GetPostData({Key? key}) : super(key: key);

  @override
  State<GetPostData> createState() => _GetPostDataState();
}

class _GetPostDataState extends State<GetPostData> {
  ResultController resultController=Get.find();
late  ApiModel data ;
  @override
  void initState() {
    // TODO: implement initState
    data = Get.arguments;
    print('---->${data.jwt}');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(children: [

        Text("${data.jwt}"),

        SizedBox(height: 10.h,),
        Text("${data.user?.username}"),
        SizedBox(height: 10.h,),
        Text("${data.user?.blocked}"),
      ]),


    );
  }
}
