import 'package:get/get.dart';

import '../controllers/tweet_create_controller.dart';

class TweetCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TweetCreateController>(
      () => TweetCreateController(),
    );
  }
}
