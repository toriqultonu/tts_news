import 'dart:convert';

import 'package:tts_news/model/article_model.dart';
import 'package:http/http.dart' as http;

class News{

  String countryCode;

  News({this.countryCode});

  List<ArticleModel> news = [];

  Future<void> getNews() async {
     String URL = countryCode == null ? "https://newsapi.org/v2/top-headlines?country=us&apiKey=c29e863d20894e4aa566acd3c8c59d15" : "https://newsapi.org/v2/top-headlines?country=$countryCode&apiKey=c29e863d20894e4aa566acd3c8c59d15";

    var response = await http.get(Uri.parse(URL));
    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((elements){
        if(elements["urlToImage"] != null && elements["description"] != null){
          ArticleModel articleModel = ArticleModel(
            author: elements['author'],
            title: elements['title'],
            description: elements['description'],
            url: elements['url'],
            content: elements['content'],
            urlToImage: elements['urlToImage'],
            publishedAt: elements['publishedAt']
          );
          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNewsClass{
  String countryCode;

  CategoryNewsClass({this.countryCode});

  List<ArticleModel> news = [];

  Future<void> getCategoryNews({ String category}) async {
    String URL = countryCode == null ? "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=c29e863d20894e4aa566acd3c8c59d15":"https://newsapi.org/v2/top-headlines?country=$countryCode&category=$category&apiKey=c29e863d20894e4aa566acd3c8c59d15";

    var response = await http.get(Uri.parse(URL));
    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((elements){
        if(elements["urlToImage"] != null && elements["description"] != null){
          ArticleModel articleModel = ArticleModel(
              author: elements['author'],
              title: elements['title'],
              description: elements['description'],
              url: elements['url'],
              content: elements['content'],
              urlToImage: elements['urlToImage'],
              publishedAt: elements['publishedAt']
          );
          news.add(articleModel);
        }
      });
    }
  }
}