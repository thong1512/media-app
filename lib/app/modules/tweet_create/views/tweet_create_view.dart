import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/tweet_create_controller.dart';

class TweetCreateView extends GetView<TweetCreateController> {
  const TweetCreateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Text(
              "Cancel",
              style: TextStyle(color: Colors.blue),
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  child: Image.network((() {
                    if (null != null) {
                      return "null";
                    }

                    return "https://picsum.photos/250?image=9";
                  })(), width: 40),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    TextField(
                      controller: controller.tweetContentController,
                      decoration: InputDecoration(
                          hintText: "What's happening?",
                          contentPadding:
                              EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0)),
                      maxLines: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
