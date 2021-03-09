
import 'package:flutter/material.dart';
import 'package:news_api/models/newsInfo.dart';
import 'package:news_api/pages/homepage.dart';

// ignore: must_be_immutable
class News extends HomePage {
  Future<Article> _article;

  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("sssss"),
      ),
      body: FutureBuilder<Article>(
          future: _article,
          builder: (context, snapshot) {
            final newsTitle =ModalRoute.of(context).settings.arguments;
            if (snapshot.data.title == newsTitle) {
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(snapshot.data.description),
                    Image.network(
                      snapshot.data.urlToImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 300,
                    ),
                    Text(
                      snapshot.data.title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(snapshot.data.content,style: TextStyle(fontSize: 16)),
                  ],
                ),
              );
            }
            return CircularProgressIndicator();
          }),
    );
  }
}
