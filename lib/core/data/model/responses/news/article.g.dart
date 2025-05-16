// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      title: json['title'] as String,
      urlToImage: json['urlToImage'] as String?,
      sourceName: json['sourceName'] as String?,
      publishedAt: json['publishedAt'] as String?,
      category: json['category'] as String?,
      content: json['content'] as String?,
      author: json['author'] as String?,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'title': instance.title,
      'urlToImage': instance.urlToImage,
      'sourceName': instance.sourceName,
      'publishedAt': instance.publishedAt,
      'category': instance.category,
      'content': instance.content,
      'author': instance.author,
    };
