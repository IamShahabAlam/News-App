
import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable(nullable: false)

class Article {

  Article(); // default instructor

  @JsonKey(name: "author")
  late String author;

  @JsonKey(name: "description")
  late String desc;

  @JsonKey(name: "title")
  late String title;

  @JsonKey(name: "content")
  late String content;

  @JsonKey(name: "url")
  late String url;

  @JsonKey(name: "urlToImage")
  late String imageUrl;

  @JsonKey(name: "publishedAt")
  late String publishedAt;

  DateTime get getPublishedAtDate => DateTime.parse(publishedAt);


// BoilerPlate Code from pub.dev 
  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  // Now Go to Terminl and run 
  // flutter pub run build_runner build
}
