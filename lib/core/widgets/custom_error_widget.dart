// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Styles.textStyle18,
    );
  }
}
