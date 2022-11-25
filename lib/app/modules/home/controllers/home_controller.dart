 
import '../../../models/models.dart';
 
import 'package:get/get.dart';

import '../../../services/services.dart';

 

class HomeController extends GetxController {
  RxList shoppingCart = [].obs;
 
  RxBool isLoading = false.obs;
  
  User user = User();

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    isLoading.value = true;
    await getRestaurant();
  
    isLoading.value = false;
  }

  /// Trae el usuario que inicia sesión
  getRestaurant() async {
    user = (await userService.getCurrentUser())!;
  }

 

  
 
}