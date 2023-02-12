import 'package:flutter/material.dart';
import 'package:news_app/constants/contry_domain.dart';
import 'package:news_app/models/articles.dart';
import 'package:news_app/models/top_news.dart';
import 'package:news_app/views/detail_view.dart';
import 'package:news_app/views/search_view.dart';

import '../components/news_card.dart';
import '../constants/api_constant.dart';
import '../constants/app_text.dart';
import '../services/fetch_service.dart';
import '../theme/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;

  Future<void> fetchNews([String? domain]) async {
    topNews = null;
    setState(() {});
    topNews = await NewsRepo().fetchTopNews(domain);
    setState(() {});
  }

  @override
  void initState() {
    fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.appBarText),
        backgroundColor: AppColors.appBar,
        actions: [
          PopupMenuButton(
            onSelected: (Country item) async {
              await fetchNews(item.domain);
            },
            itemBuilder: (context) {
              return countrySet
                  .map(
                    (e) => PopupMenuItem<Country>(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            },
          ),
        ],
      ),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: topNews!.articles.length,
              itemBuilder: (context, index) {
                final news = topNews!.articles[index];
                return NewsCard(news: news);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchView(),
          ),
        ),
        backgroundColor: AppColors.appBar,
        child: const Icon(Icons.search),
      ),
    );
  }
}
