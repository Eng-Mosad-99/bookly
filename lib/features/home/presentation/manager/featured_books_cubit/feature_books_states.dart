import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksStates extends Equatable {
  const FeaturedBooksStates();
  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBooksStates {}

class FeaturedBookLoading extends FeaturedBooksStates {}

class FeaturedBookSuccess extends FeaturedBooksStates {
  final List<BookModel> books;

  const FeaturedBookSuccess(this.books);
}

class FeaturedBookFailure extends FeaturedBooksStates {
  final String errorMessage;

  const FeaturedBookFailure(this.errorMessage);
}
