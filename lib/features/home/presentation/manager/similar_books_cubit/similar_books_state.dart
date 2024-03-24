import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksStates extends Equatable {
  const SimilarBooksStates();
  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksStates {}

class SimilarBooksLoading extends SimilarBooksStates {}

class SimilarBooksSuccess extends SimilarBooksStates {
  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);
}

class SimilarBooksFailure extends SimilarBooksStates {
  final String errorMessage;

  const SimilarBooksFailure(this.errorMessage);
}
