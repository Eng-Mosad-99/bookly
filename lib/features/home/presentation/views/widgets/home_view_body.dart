import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_appBar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}
