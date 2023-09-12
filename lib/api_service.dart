import 'dart:convert';

import 'package:httpapplication/articalmodel.dart';
import 'package:http/http.dart';

class ApiService{
  var url = Uri.parse('https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=c1f36727d4a847b9b85b6e82b0484436');
  Future<List<Artical>>getArtical()async{
    Response res = await get(url);

    if(res.statusCode==200){
      Map<String,dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Artical> articles = body.map((dynamic item) => Artical.fromJson(item)).toList();
      return articles;
    }
    else{
      throw("Can't get the article");
    }
  }
}