
import 'package:api_data/homepage/demo_api_data.dart';
import 'package:api_data/homepage/get_post_data.dart';
import 'package:get/get.dart';

mixin Routes{
  static const defaultTransition = Transition.rightToLeft;
  static const String demoApiData = '/DemoApiData';
  static const String getPostData = '/GetPostData';
  static List<GetPage<dynamic>> pages = [

    GetPage(
      name: demoApiData,
      page: () =>  DemoApiData(),
    ),
    GetPage(
      name: getPostData,
      page: () =>  GetPostData(),
    ),


  ];
}