import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  final HomeRepo homeRepo;

  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(
        NewestBooksFailure(failure.errorMessage),
      ),
      (books) => emit(
        NewestBooksSuccess(books),
      ),
    );
  }
}
