import 'package:flutter/material.dart';
import 'package:news/features/news/domain/entities/article.dart';
import 'package:news/features/news/presentation/pages/article_details/article_details.dart';
import 'package:news/features/news/presentation/pages/home/news.dart';
import 'package:news/features/news/presentation/pages/saved_article/saved_article.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const News());

      case '/ArticleDetails':
        return _materialRoute(
            ArticleDetailsView(article: settings.arguments as ArticleEntity));

      case '/SavedArticles':
        return _materialRoute(const SavedArticles());

      default:
        return _materialRoute(const News());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
