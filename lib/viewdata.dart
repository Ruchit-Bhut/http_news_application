import 'package:flutter/material.dart';
import 'package:httpapplication/articalmodel.dart';

class ViewData extends StatelessWidget {
  Artical? article;
  ViewData({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('View Data'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(article!.urlToImage.toString()),
            ),
          ),
          Text(article!.title.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Divider(color: Colors.grey,),
          Text(article!.title.toString(),style: TextStyle(fontSize: 20),textAlign: TextAlign.start,),
        ],
      ),
    );
  }
}
