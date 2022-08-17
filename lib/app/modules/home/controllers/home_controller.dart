import 'package:get/get.dart';
import 'package:mediaapp/app/data/remote_service.dart';
import 'package:mediaapp/app/models/tweet.model.dart';
import 'package:mediaapp/app/models/user.model.dart';

class HomeController extends GetxController {
  var followingList = <User>[].obs;
  var currentUser = User().obs;

  @override
  void onInit() {
    super.onInit();
    getCurrentUser();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchFollowing() async {
    var following = await RemoteService.fetchFollowingByUser("96479162");
    followingList.assignAll(following.results);
  }

  void getCurrentUser() async {
    currentUser.value = await RemoteService.getUserDetails("omarmhaimdat");
  }
}
