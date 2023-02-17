import 'package:food_apps/data/API/api_client.dart';
import 'package:food_apps/data/repository/popular_food_repository.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularFoodRepository popularFoodRepository;

  PopularProductController({required this.popularFoodRepository});
 List<dynamic> _popularProductList=[];
 List<dynamic> get popularProductList=> _popularProductList;

 Future<void> getPopularProductList()async {
     Response response= await popularFoodRepository.getPopularProductList();
     if(response.statusCode==200){
       _popularProductList=[];
       // _popularProductList.addAll(iterable);
       update();
     }else{

     }
 }
}