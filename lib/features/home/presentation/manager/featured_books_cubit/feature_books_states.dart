import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBookState extends Equatable {
  const FeaturedBookState();
  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookLoading extends FeaturedBookState {}

class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;

  const FeaturedBookSuccess(this.books);
}

class FeaturedBookFailure extends FeaturedBookState {
  final String errorMessage;

  const FeaturedBookFailure(this.errorMessage);
}
