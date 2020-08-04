import 'package:movieapp/Models/searchItem.dart';

class SearchResult{
  final List<SearchItem> items;

  SearchResult(this.items);

  factory SearchResult.fromJson(Map<String, dynamic> json){
    final listItems = (json["items"] as List).cast<Map<String, dynamic>>()?.map(
            (items) {
          return SearchItem.fromJson(items);
        },
    )?.toList();
    return SearchResult(listItems);
  }
}