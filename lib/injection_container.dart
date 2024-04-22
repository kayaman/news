import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news/features/news/data/data_sources/local/app_database.dart';
import 'package:news/features/news/data/data_sources/remote/news_api_service.dart';
import 'package:news/features/news/data/repository/article_repository_impl.dart';
import 'package:news/features/news/domain/repository/article_repository.dart';
import 'package:news/features/news/domain/usecases/get_article.dart';
import 'package:news/features/news/presentation/bloc/article/remote/remote_article_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  serviceLocator.registerSingleton<Dio>(Dio());

  final database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  serviceLocator.registerSingleton<AppDatabase>(database);

  serviceLocator
      .registerSingleton<NewsApiService>(NewsApiService(serviceLocator()));

  serviceLocator.registerSingleton<ArticleRepository>(
      ArticleRepositoryImpl(serviceLocator(), serviceLocator()));

  serviceLocator.registerSingleton(GetArticleUseCase(serviceLocator()));

  serviceLocator.registerFactory<RemoteArticlesBloc>(
      () => RemoteArticlesBloc(serviceLocator()));
}
