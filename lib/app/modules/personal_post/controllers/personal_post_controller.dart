import 'package:get/get.dart';
import 'package:mediaapp/app/data/remote_service.dart';
import 'package:mediaapp/app/models/tweet.model.dart';

class PersonalPostController extends GetxController {
  final tweetList = <Tweet>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchTweet();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchTweet() async {
    var result = await RemoteService.fetchTweetByUser("omarmhaimdat");
    tweetList.assignAll(result);
  }
}
