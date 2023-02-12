import 'package:news_app/models/articles.dart';

class TopNews {
  TopNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Articles> articles;

  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
      status: json["status"],
      totalResults: json["totalResults"],
      articles: List<Articles>.from(
        (json["articles"]).map((e) => Articles.fromJson(e)),
      ),
    );
  }
}
