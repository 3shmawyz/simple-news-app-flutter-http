import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:news_api/models/newsInfo.dart';

class API_Manger{
static String myUrl="https://newsapi.org/v2/everything?domains=wsj.com&apiKey=8670bb06d42840b1a15b88c707997d4e";
Future<NewsModel> getNews() async {
  var client = http.Client();
  var newsModel;

  try {
    var response = await client.get(myUrl);
    if (response.statusCode == 200) {

      var jsonMap = json.decode(response.body);
      newsModel = NewsModel.fromJson(jsonMap);
    }
  } catch (Exception) {
    return newsModel;
  }

  return newsModel;
}
}