import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:mediaapp/app/models/tweet.model.dart';
import 'package:mediaapp/app/models/user.model.dart';

class RemoteService {
  static const _authority = "twitter154.p.rapidapi.com";
  static const Map<String, String> _headers = {
    "x-rapidapi-key": "3bbee3d8e8mshe1f529257d85f8fp157a28jsn7b47fd31dfd6",
    "x-rapidapi-host": "twitter154.p.rapidapi.com",
  };

  static Future<List<Tweet>> fetchTweetByUser(String username) async {
    var query = {"username": username};
    var path = "/user/tweets";
    Uri uri = Uri.https(_authority, path, query);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      var result = resultFromJson(response.body);
      return result.tweet!;
    } else {
      throw Exception(
          "API call returned: ${response.statusCode} ${response.reasonPhrase}");
    }
  }

  static Future<UserList> fetchFollowingByUser(String userID) async {
    var query = {"user_id": userID};
    var path = "user/following";
    Uri uri = Uri.https(_authority, path, query);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      return userListFromJson(response.body);
    } else {
      throw Exception(
          "API call returned: ${response.statusCode} ${response.reasonPhrase}");
    }
  }

  static Future<User> getUserDetails(String username) async {
    var query = {"username": username};
    var path = "user/details";
    Uri uri = Uri.https(_authority, path, query);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      return userFromJson(response.body);
    } else {
      throw Exception(
          "API call returned: ${response.statusCode} ${response.reasonPhrase}");
    }
  }
}
