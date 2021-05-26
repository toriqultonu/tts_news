class ArticleModel{

  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String content;
  late String publishedAt;

  ArticleModel({

    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.content,
    required this.urlToImage,
    required this.publishedAt
  }
      );

}