import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:photo_translator/ui/main/main_screen.dart';
import 'package:photo_translator/ui/splash/splash_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 1500), () {
     // Get.to(() => MainScreen(), preventDuplicates: true);
      Get.off(() => MainScreen());
    });
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {}

  @override
  void dispose() {}

  @override
  void onClose() {}
}
