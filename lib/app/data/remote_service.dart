import 'dart:convert';

import 'package:get/get.dart';
import 'package:mediaapp/app/models/tweet.model.dart';
import 'package:mediaapp/app/models/user.model.dart';

class RemoteService extends GetConnect {
  static const _domain = "https://twitter154.p.rapidapi.com";
  static const Map<String, String> _headers = {
    "x-rapidapi-key": "3bbee3d8e8mshe1f529257d85f8fp157a28jsn7b47fd31dfd6",
    "x-rapidapi-host": "twitter154.p.rapidapi.com",
  };

  Future<List<Tweet>> fetchTweetByUser(String username) async {
    var query = {"username": username};
    var path = "/user/tweets";
    final response = await get(_domain + path, query: query, headers: _headers);
    if (response.statusCode == 200) {
      var result = Result.fromJson(response.body);
      return result.tweet!;
    } else {
      throw Exception("API call returned: ${response.statusCode}");
    }
  }

  Future<UserList> fetchFollowingByUser(String userID) async {
    var query = {"user_id": userID};
    var path = "/user/following";
    final response = await get(_domain + path, headers: _headers, query: query);
    if (response.statusCode == 200) {
      return UserList.fromJson(response.body);
    } else {
      throw Exception("API call returned: ${response.statusCode}");
    }
  }

  Future<User> getUserDetails(String username) async {
    var query = {"username": username};
    var path = "/user/details";
    final response = await get(_domain + path, query: query, headers: _headers);
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    } else {
      throw Exception("API call returned: ${response.statusCode}");
    }
  }
}
