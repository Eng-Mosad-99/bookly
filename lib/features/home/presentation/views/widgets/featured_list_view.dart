import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/feature_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/feature_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
        builder: (context, state) {
      if (state is FeaturedBookSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const CustomBookImage();
            },
          ),
        );
      } else if (state is FeaturedBookFailure) {
        return CustomErrorMessage(
          errorMessage: state.errorMessage,
        );
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
