import 'package:flutter/material.dart';
import 'package:tts_news/helper/news.dart';
import 'package:tts_news/model/article_model.dart';
import 'home.dart';

class CategoryNews extends StatefulWidget {

  final String category;
  final String code;

  CategoryNews({this.code, this.category});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {

  bool _loading = true;
  List<ArticleModel> articles = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }
  getCategoryNews()async{
    CategoryNewsClass newsInstance = CategoryNewsClass(countryCode: widget.code);
    await newsInstance.getCategoryNews(category: widget.category);
    articles = newsInstance.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("tts-"),
            Text("News", style: TextStyle(color: Colors.blue),)
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Opacity(
            opacity: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: _loading ? Container(child: Center(child: CircularProgressIndicator()),): SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: articles.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index){
                    return BlogTile(
                      imageUrl: articles[index].urlToImage,
                      title: articles[index].title,
                      desc: articles[index].description,
                      url: articles[index].url,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
