import 'dart:io';
import 'package:dio/dio.dart';
import 'package:movieapp/Models/searchResult.dart';

class Services{

  final Dio dio = Dio();

  Future<SearchResult> search (String term) async {
   try{
     Response response = await dio.get("https://api.trakt.tv?q=${term}");
     return SearchResult.fromJson(response.data);
   }
   catch(e){
     throw SocketException(e);
      }
    }
  }
