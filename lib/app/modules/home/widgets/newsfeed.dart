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
                                      Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam elementum eros eu sagittis dapibus. Suspendisse ut vulputate erat. Donec eu aliquet eros. Phasellus tempus quis felis eu tincidunt. Cras fringilla cursus dictum. Nam vestibulum porttitor lorem facilisis ultrices. Nam porta eros orci, nec congue lorem lacinia quis. Quisque quis leo aliquam, maximus mauris tincidunt, aliquet velit. Donec commodo neque vitae nisi lacinia sollicitudin. Praesent sodales consectetur ligula et auctor. Proin velit eros, auctor et lorem ut, lobortis pharetra ante. Duis euismod id turpis vitae porttitor. Fusce interdum auctor tortor at accumsan."),
                                      SizedBox(height: 15),
                                      1 != null
                                          ? ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              child: Image.network(
                                                  "https://d32qe1r3a676y7.cloudfront.net/eyJidWNrZXQiOiJibG9nLWVjb3RyZWUiLCJrZXkiOiAiYmxvZy8wMDAxLzAxL2FkNDZkYmI0NDdjZDBlOWE2YWVlY2Q2NGNjMmJkMzMyYjBjYmNiNzkuanBlZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6IDkwMCwiaGVpZ2h0IjowLCJmaXQiOiJjb3ZlciJ9fX0="),
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
