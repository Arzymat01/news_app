import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class NewsDetailDivider extends StatelessWidget {
  const NewsDetailDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.grey,
      height: 30,
      thickness: 2,
    );
  }
}
