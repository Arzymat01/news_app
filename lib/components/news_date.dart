import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class NewsDate extends StatelessWidget {
  const NewsDate({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.access_time,
          color: AppColors.grey,
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          time,
          style: const TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
