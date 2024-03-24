import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.errorMessage)),
      (books) => emit(
        SimilarBooksSuccess(books),
      ),
    );
  }
}
