import 'package:get/get.dart';
import 'package:teste/app/repository/client/rest_client.dart';
import 'package:teste/app/repository/interface/i_user_repository.dart';
import 'package:teste/app/repository/repositorie/user_repository.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
    Get.put<IUserRepository>(UserRepository(Get.find()));
    Get.put(HomeController(Get.find()));
  }
}
