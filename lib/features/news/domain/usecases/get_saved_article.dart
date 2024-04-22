import 'package:news/core/usecases/usecase.dart';
import 'package:news/features/news/domain/entities/article.dart';
import 'package:news/features/news/domain/repository/article_repository.dart';

class GetSavedArticleUseCase implements UseCase<List<ArticleEntity>, void> {
  final ArticleRepository _articleRepository;

  GetSavedArticleUseCase(this._articleRepository);

  @override
  Future<List<ArticleEntity>> call({void params}) {
    return _articleRepository.getSavedArticles();
  }
}
