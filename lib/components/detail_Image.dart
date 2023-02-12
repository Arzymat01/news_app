import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/api_constant.dart';
import '../models/articles.dart';

class NewsDetailImage extends StatelessWidget {
  const NewsDetailImage({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    // return CachedNetworkImage(
    //   imageUrl: news.urlToImage ?? ApiConst.image,
    //   placeholder: (context, url) => Image.asset('assets/news.jpg'),
    //   errorWidget: (context, url, error) => Image.asset('assets/error.png'),
    // );
    return Image.network(
      news.urlToImage ?? ApiConst.image,
      fit: BoxFit.fitWidth,
    );
  }
}
