import 'package:get/get.dart';

import '../controllers/personal_post_controller.dart';

class PersonalPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalPostController>(
      () => PersonalPostController(),
    );
  }
}
