import 'dart:convert';

UserList userListFromJson(String str) => UserList.fromJson(json.decode(str));

String userListToJson(UserList data) => json.encode(data.toJson());

User userFromJson(String str) => User.fromJson(json.decode(str));

class UserList {
  UserList({
    required this.results,
    required this.continuationToken,
  });

  List<User> results;
  String continuationToken;

  factory UserList.fromJson(Map<String, dynamic> json) => UserList(
        results: List<User>.from(json["results"].map((x) => User.fromJson(x))),
        continuationToken: json["continuation_token"],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "continuation_token": continuationToken,
      };
}

class User {
  User({
    this.creationDate,
    this.userId,
    this.username,
    this.name,
    this.followerCount,
    this.followingCount,
    this.isPrivate,
    this.isVerified,
    this.location,
    this.profilePicUrl,
    this.description,
    this.externalUrl,
    this.numberOfTweets,
    this.bot,
    this.timestamp,
  });

  String? creationDate;
  String? userId;
  String? username;
  String? name;
  int? followerCount;
  int? followingCount;
  bool? isPrivate;
  bool? isVerified;
  String? location;
  String? profilePicUrl;
  String? description;
  String? externalUrl;
  int? numberOfTweets;
  bool? bot;
  int? timestamp;

  factory User.fromJson(Map<String, dynamic> json) => User(
        creationDate: json["creation_date"],
        userId: json["user_id"],
        username: json["username"],
        name: json["name"],
        followerCount: json["follower_count"],
        followingCount: json["following_count"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
        location: json["location"],
        profilePicUrl:
            json["profile_pic_url"] == null ? null : json["profile_pic_url"],
        description: json["description"],
        externalUrl: json["external_url"],
        numberOfTweets: json["number_of_tweets"],
        bot: json["bot"],
        timestamp: json["timestamp"],
      );

  Map<String, dynamic> toJson() => {
        "creation_date": creationDate,
        "user_id": userId,
        "username": username,
        "name": name,
        "follower_count": followerCount,
        "following_count": followingCount,
        "is_private": isPrivate,
        "is_verified": isVerified,
        "location": location,
        "profile_pic_url": profilePicUrl,
        "description": description,
        "external_url": externalUrl,
        "number_of_tweets": numberOfTweets,
        "bot": bot,
        "timestamp": timestamp,
      };
}
