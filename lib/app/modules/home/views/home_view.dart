import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:mediaapp/app/modules/home/controllers/navigation_controller.dart';
import 'package:mediaapp/app/modules/home/widgets/drawer.dart';
import 'package:mediaapp/app/modules/home/widgets/newsfeed.dart';
import 'package:mediaapp/app/modules/inbox/views/inbox_view.dart';
import 'package:mediaapp/app/modules/notification/views/notification_view.dart';
import 'package:mediaapp/app/modules/personal_post/views/personal_post_view.dart';
import 'package:mediaapp/app/modules/search/views/search_view.dart';
import 'package:mediaapp/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  NavigationController navigationController = Get.put(NavigationController());
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Builder(builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                    child: Image.network((() {
                      if (controller.currentUser.value.profilePicUrl != null) {
                        return controller.currentUser.value.profilePicUrl!;
                      }

                      return "https://picsum.photos/250?image=9";
                    })()),
                  ),
                );
              }),
            ),
            title: Icon(Icons.music_note, size: 32),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.star_border_rounded)),
              )
            ],
          ),
          drawer: CustomDrawer(),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                Get.toNamed(Routes.TWEET_CREATE);
              },
              child: const Icon(Icons.insert_comment)),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: navigationController.pageIndex.value,
              selectedItemColor: Colors.cyan,
              unselectedItemColor: Colors.black,
              onTap: (index) {
                navigationController.changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.mail_outline), label: "")
              ]),
          body: IndexedStack(
              index: navigationController.pageIndex.value,
              children: [
                NewsFeed(),
                SearchView(),
                NotificationView(),
                InboxView()
              ]),
        ));
  }
}
