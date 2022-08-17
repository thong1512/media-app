import 'dart:convert';

import 'package:mediaapp/app/models/user.model.dart';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
  Result({
    this.tweet,
    this.continuationToken,
  });

  List<Tweet>? tweet;
  String? continuationToken;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        tweet: List<Tweet>.from(json["results"].map((x) => Tweet.fromJson(x))),
        continuationToken:
            json["continuation_token"] == null ? null : json["continue_token"],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(tweet!.map((x) => x.toJson())),
        "continuation_token": continuationToken,
      };
}

class Tweet {
  Tweet({
    this.tweetId,
    this.creationDate,
    this.text,
    this.mediaUrl,
    this.user,
    this.language,
    this.favoriteCount,
    this.retweetCount,
    this.replyCount,
    this.quoteCount,
    this.retweet,
    this.timestamp,
    this.videoViewCount,
  });

  String? tweetId;
  String? creationDate;
  String? text;
  List<String>? mediaUrl;
  User? user;
  String? language;
  int? favoriteCount;
  int? retweetCount;
  int? replyCount;
  int? quoteCount;
  bool? retweet;
  int? timestamp;
  dynamic videoViewCount;

  factory Tweet.fromJson(Map<String, dynamic> json) => Tweet(
        tweetId: json["tweet_id"],
        creationDate: json["creation_date"],
        text: json["text"] == null ? null : json["text"],
        mediaUrl: json["media_url"] == null
            ? null
            : List<String>.from(json["media_url"].map((x) => x)),
        user: User.fromJson(json["user"]),
        language: json["language"] == null ? null : json["language"],
        favoriteCount: json["favorite_count"],
        retweetCount: json["retweet_count"],
        replyCount: json["reply_count"],
        quoteCount: json["quote_count"],
        retweet: json["retweet"],
        timestamp: json["timestamp"],
        videoViewCount:
            json["video_view_count"] == null ? null : json["video_view_count"],
      );

  Map<String, dynamic> toJson() => {
        "tweet_id": tweetId,
        "creation_date": creationDate,
        "text": text,
        "media_url": mediaUrl == null
            ? null
            : List<dynamic>.from(mediaUrl!.map((x) => x)),
        "user": user?.toJson(),
        "language": language,
        "favorite_count": favoriteCount,
        "retweet_count": retweetCount,
        "reply_count": replyCount,
        "quote_count": quoteCount,
        "retweet": retweet,
        "timestamp": timestamp,
        "video_view_count": videoViewCount,
      };
}
