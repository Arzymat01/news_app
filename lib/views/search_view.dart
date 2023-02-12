import 'package:flutter/material.dart';
import 'package:news_app/constants/app_text.dart';
import 'package:news_app/services/fetch_service.dart';
import 'package:news_app/theme/app_colors.dart';

import '../components/news_card.dart';
import '../models/top_news.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TopNews? topNews;
  bool isSearch = false;
  final controller = TextEditingController();

  Future<void> fetchData(String text) async {
    isSearch = true;
    setState(() {});
    topNews = await NewsRepo().fetchSearchNews(text);
    setState(() {
      isSearch = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: TextField(
          controller: controller,
          onChanged: ((value) async {
            await fetchData(value);
          }),
          decoration: const InputDecoration(
            fillColor: Color.fromARGB(255, 44, 41, 32),
            filled: true,
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              fetchData(controller.text);
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    if (isSearch) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (isSearch == false && topNews != null) {
      return ListView.builder(
        itemCount: topNews!.articles.length,
        itemBuilder: (context, index) {
          final news = topNews!.articles[index];
          return NewsCard(news: news);
        },
      );
    } else {
      return const Center(
        child: Text(AppText.searchtext),
      );
    }
  }
}
