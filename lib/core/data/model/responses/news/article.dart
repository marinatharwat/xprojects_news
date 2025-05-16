import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  final String title;
  final String? urlToImage;
  final String? sourceName;
  final String? publishedAt;
  final String? category;
  final String? content;
  final String?author;
  Article(  {
    required this.title,
    this.urlToImage,
    this.sourceName,
    this.publishedAt,
    this.category,
    this.content,
    this.author,
  });
  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

