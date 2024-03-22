import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class NewestBooksStates extends Equatable {
  const NewestBooksStates();
  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksStates {}

class NewestBooksLoading extends NewestBooksStates {}

class NewestBooksSuccess extends NewestBooksStates {
  final List<BookModel> books;

  const NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksStates {
  final String errorMessage;

  const NewestBooksFailure(this.errorMessage);
}
