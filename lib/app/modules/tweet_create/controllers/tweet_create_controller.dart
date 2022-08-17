import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TweetCreateController extends GetxController {
  TextEditingController tweetContentController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    tweetContentController.dispose();
    super.dispose();
  }
}
