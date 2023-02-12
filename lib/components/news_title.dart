import 'package:flutter/material.dart';

import '../models/articles.dart';
import '../theme/app_colors.dart';

class NewsDetailTitle extends StatelessWidget {
  const NewsDetailTitle({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
