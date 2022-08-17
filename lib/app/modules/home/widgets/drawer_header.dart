import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaapp/app/modules/home/controllers/home_controller.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeController>();
    var currentUser = controller.currentUser.value;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              child: Image.network((() {
                if (currentUser.profilePicUrl != null) {
                  return currentUser.profilePicUrl!;
                }

                return "https://picsum.photos/250?image=9";
              })())),
          Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                controller.currentUser.value.name!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('@${currentUser.username!}')),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Text(
                  currentUser.followingCount.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(' following'),
                SizedBox(
                  width: 8,
                ),
                Text(
                  currentUser.followerCount.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(' follower'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
