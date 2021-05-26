import 'package:tts_news/model/category_model.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  //1
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPi2J3CRVURtwkTjDnpeZClMzgf_z45GqDbawQgzNVF2UiwIm7hTH01jzfg8cBBQIHE_I&usqp=CAU";
  category.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "https://www.sinceindependence.com/wp-content/uploads/2019/09/entertainment.jpg";
  category.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "https://image.slidesharecdn.com/whatisanewspaper-131105225054-phpapp02/95/what-is-a-newspaper-5-638.jpg?cb=1383691899";
  category.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "https://www.yourbasin.com/wp-content/uploads/sites/78/2015/04/healthnews_1429720857397_104687_ver1.0.png?w=640";
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrusIergwUA65RORERMPJEF7NxkwJ9dWwUl9VBiHhInSkNvzzImChCQT-vWOJ4Srwa5H4&usqp=CAU";
  category.add(categoryModel);

  //6
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "https://www.insidesport.co/wp-content/uploads/2020/04/sdfghj-696x464.jpg";
  category.add(categoryModel);

  //7
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "https://images.indianexpress.com/2020/07/US-chip.jpg";
  category.add(categoryModel);

  return category;

}