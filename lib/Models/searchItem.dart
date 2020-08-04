import 'package:movieapp/Models/searchResult.dart';

class SearchItem{
final String Name;
final String url;
final String Image;

  SearchItem({this.Name, this.url, this.Image});

  factory SearchItem.fromJson(Map<String, dynamic> json){
    return SearchItem(
      Name: json["name"] as String,
      url: json["url"] as String,
      Image:(
      json["owner"] as Map<String, dynamic>)["name"] as String
      );
  }
}