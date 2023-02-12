import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/constants/api_constant.dart';
import 'package:news_app/models/articles.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/detail_Image.dart';
import '../components/detail_button.dart';
import '../components/detail_decription.dart';
import '../components/detail_divider.dart';
import '../components/news_date.dart';
import '../components/news_title.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key, required this.news});
  final Articles news;
  @override
  Widget build(BuildContext context) {
    final time =
        DateFormat("d MMM, y. H:m").format(DateTime.parse(news.publishedAt));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: Text(
          news.title,
          overflow: TextOverflow.fade,
        ),
        actions: news.url != null
            ? [
                IconButton(
                    onPressed: () {
                      Share.share(news.url!);
                    },
                    icon: const Icon(Icons.share)),
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
        child: Column(
          children: [
            NewsDetailTitle(news: news),
            const NewsDetailDivider(),
            NewsDate(time: time),
            const SizedBox(height: 15),
            NewsDetailImage(news: news),
            const SizedBox(height: 15),
            NewsDetailDecription(news: news),
            const SizedBox(height: 20),
            news.url != null
                ? NewsDetailButton(
                    onPressed: () async {
                      final uri = Uri.parse(news.url!);

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      }
                    },
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
