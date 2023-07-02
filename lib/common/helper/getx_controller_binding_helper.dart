import 'package:flutter_test_favin/domain/interfaces/local/iLocal_db_handler.dart';
import 'package:flutter_test_favin/presentaion/views/home/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';


class GetxControllerBindingHelper implements Bindings {
  @override
  void dependencies() {
   var controller = Get.put(HomeController(localDbHandler: GetIt.instance.get<ILocalDbHandler>()));
  }
}