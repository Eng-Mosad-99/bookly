import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_appBar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 32,
          ),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
