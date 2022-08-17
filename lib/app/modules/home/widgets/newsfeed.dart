import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaapp/app/modules/home/controllers/home_controller.dart';

class NewsFeed extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(45),
                                    child: Image.network(
                                        "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/male/45.png"),
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
                                      Text("Lorem ipsum"),
                                      SizedBox(height: 15),
                                      1 != null
                                          ? ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              child: Image.network(
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnD2fzLttfBh7Hrh31jROQz5KcbZDrDrFqRA&usqp=CAU"),
                                            )
                                          : SizedBox(),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Row(
                                              children: [
                                                Icon(Icons.favorite_border),
                                                SizedBox(width: 4),
                                                Text("502k"),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            child: Row(
                                              children: [
                                                Icon(Icons.loop),
                                                SizedBox(width: 4),
                                                Text("420"),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            child: Row(
                                              children: [
                                                Icon(Icons.reply),
                                                SizedBox(width: 4),
                                                Text("5205"),
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
                }),
          ],
        ),
      ),
    );
  }
}
