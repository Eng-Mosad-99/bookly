import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const BookListViewItem();
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 18,
      ),
      itemCount: 10,
    );
  }
}
