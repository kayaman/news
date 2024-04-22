import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/config/routes/routes.dart';
import 'package:news/config/theme/app_theme.dart';
import 'package:news/features/news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:news/features/news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news/features/news/presentation/pages/home/news.dart';
import 'package:news/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => serviceLocator()..add(const GetArticles()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          home: const News()),
    );
  }
}
