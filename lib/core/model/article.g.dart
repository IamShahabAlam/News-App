// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article()
  ..author = json['author'] as String
  ..desc = json['description'] as String
  ..title = json['title'] as String
  ..content = json['content'] as String
  ..url = json['url'] as String
  ..imageUrl = json['urlToImage'] as String
  ..publishedAt = json['publishedAt'] as String;

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'author': instance.author,
      'description': instance.desc,
      'title': instance.title,
      'content': instance.content,
      'url': instance.url,
      'urlToImage': instance.imageUrl,
      'publishedAt': instance.publishedAt,
    };
