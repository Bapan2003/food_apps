import 'package:food_apps/controller/popular_product_controllar.dart';
import 'package:food_apps/data/API/api_client.dart';
import 'package:food_apps/data/repository/popular_food_repository.dart';
import 'package:get/get.dart';


Future<void> init()async {
  Get.lazyPut(()=>ApiClient(appBaseUrl: "https://"));
  Get.lazyPut(() => PopularFoodRepository(apiClient:Get.find()));
  Get.lazyPut(() => PopularProductController(popularFoodRepository:Get.find()));

}