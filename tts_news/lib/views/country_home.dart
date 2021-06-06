import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tts_news/helper/data.dart';
import 'package:tts_news/helper/news.dart';
import 'package:tts_news/model/article_model.dart';
import 'package:tts_news/model/category_model.dart';

import 'article_view.dart';
import 'category_news.dart';
import 'navigation_drawer_widget.dart';

class CountryHome extends StatefulWidget {

  String code;

  CountryHome({@required this.code});

  @override
  _CountryHomeState createState() => _CountryHomeState();
}

class _CountryHomeState extends State<CountryHome> {
  bool _loading = true;
  List<CategoryModel> categories = [];
  List<ArticleModel> articles = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews()async{
    News newsInstance = News(countryCode: widget.code);
    await newsInstance.getNews();
    articles = newsInstance.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
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

              ///Categories
              Container(
                height: 80,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return CategoryTile(
                      code: widget.code,
                      imageUrl: categories[index].imageUrl,
                      categoryName: categories[index].categoryName ,
                    );
                  },
                ),
              ),

              ///News blocs
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

class CategoryTile extends StatelessWidget {

  final imageUrl, categoryName, code;

  CategoryTile({this.code,this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryNews(code:code,category: categoryName.toString().toLowerCase())));
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(imageUrl: imageUrl, width: 120, height: 70, fit: BoxFit.cover,)
            ),
            Container(
              alignment: Alignment.center,
              width: 120, height: 70,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(categoryName, style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
              ),),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {

  final String imageUrl, title, desc, url;

  BlogTile({ this.imageUrl,  this.title,  this.desc,  this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleView(blogUrl: url)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            SizedBox(height: 8,),
            Text(title, style: TextStyle(fontSize: 18,color: Colors.black54, fontWeight: FontWeight.w500),),
            SizedBox(height: 8,),
            Text(desc,style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}

