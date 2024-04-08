part of '../main.dart';

abstract class Assets{
  static const _images = 'assets/images';
  static const login = '$_images/login';
  static const background = '$_images/background';

  //MARK: Login 

  static const String facebook = '$login/facebook.png';
  static const String google = '$login/google.png';

  //MARK: Background
  static const String visualSearch = '$background/visual_search.png';
  static const String searchTakingPhoto = '$background/search_taking_photo.jpeg';
  static const String fashionSale = '$background/fashion_sale.png';
}