import 'package:food_apps/data/API/api_client.dart';
import 'package:get/get.dart';

class PopularFoodRepository extends GetxService{
  final ApiClient apiClient;
  PopularFoodRepository({required this.apiClient});
  Future<Response> getPopularProductList() async {
   // have to built url
   return await apiClient.getData("end point url");
}
}