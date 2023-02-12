import 'package:flutter/material.dart';

import '../models/articles.dart';
import '../theme/app_colors.dart';

class NewsDetailDecription extends StatelessWidget {
  const NewsDetailDecription({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.description ?? '',
      style: const TextStyle(
          color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}
