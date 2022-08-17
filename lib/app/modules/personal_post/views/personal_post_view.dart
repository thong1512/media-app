import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/personal_post_controller.dart';

class PersonalPostView extends GetView<PersonalPostController> {
  const PersonalPostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() => ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.tweetList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: CircleAvatar(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(45),
                                      child: Image.network(controller
                                          .tweetList[index]
                                          .user!
                                          .profilePicUrl!),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    flex: 9,
                                    child: Column(
                                      children: [
                                        Text(controller.tweetList[index].text!),
                                        SizedBox(height: 15),
                                        controller.tweetList[index].mediaUrl !=
                                                null
                                            ? ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                child: Image.network(controller
                                                    .tweetList[index]
                                                    .mediaUrl![0]),
                                              )
                                            : SizedBox(),
                                        SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            GestureDetector(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.favorite_border),
                                                  SizedBox(width: 4),
                                                  Text(controller
                                                      .tweetList[index]
                                                      .favoriteCount
                                                      .toString()),
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.loop),
                                                  SizedBox(width: 4),
                                                  Text(controller
                                                      .tweetList[index]
                                                      .retweetCount
                                                      .toString()),
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.reply),
                                                  SizedBox(width: 4),
                                                  Text(controller
                                                      .tweetList[index]
                                                      .replyCount
                                                      .toString()),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ]),
                        ),
                        const Divider(
                          height: 20,
                        )
                      ],
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
