import 'package:get/get.dart';
import 'package:mediaapp/app/data/remote_service.dart';
import 'package:mediaapp/app/models/tweet.model.dart';

class PersonalPostController extends GetxController
    with StateMixin<List<Tweet>> {
  RemoteService remoteService = RemoteService();
  final tweetList = <Tweet>[].obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    fetchTweet();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchTweet() async {
    try {
      change(null, status: RxStatus.loading());
      remoteService.fetchTweetByUser("omarmhaimdat").then((value) {
        tweetList.assignAll(value);
        change(tweetList, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (exception) {
      change(null, status: RxStatus.error(exception.toString()));
    }
  }
}
