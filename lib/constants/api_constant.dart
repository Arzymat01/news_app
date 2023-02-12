class ApiConst {
  static const apiKey = 'adadaa8d08cd4b4aa9b9f366c7554929';
  static String topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';
  static String searchNews(String text) =>
      'https://newsapi.org/v2/everything?q=$text&apiKey=$apiKey';

  static const String image =
      'https://www.middleweb.com/wp-content/uploads/2017/08/breaking-news-blue-600.jpg';
}
