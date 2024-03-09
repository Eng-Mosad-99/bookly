import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 18,
      ),
      itemCount: 10,
    );
  }
}
