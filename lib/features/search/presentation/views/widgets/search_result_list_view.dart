import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        // return const BookListViewItem(bookModel: ,);
        return const Text('data');
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 18,
      ),
      itemCount: 10,
    );
  }
}
