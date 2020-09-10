import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:twidgets/models/post.dart';

class JsonPlaceHolderView extends StatefulWidget {
  @override
  _JsonPlaceHolderViewState createState() => _JsonPlaceHolderViewState();
}

class _JsonPlaceHolderViewState extends State<JsonPlaceHolderView> {
  @override
  void initState() {
    super.initState();
  }

  Future<PostData> getJsonPlaceHolderDatas() async {
    final _response =
        await http.get("https://jsonplaceholder.typicode.com/posts/1");
    final _mapJson = json.decode(_response.body);
    var post = PostData.fromJson(_mapJson);
    return post;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: _placeHolderDatasWidget,
      ),
    );
  }

  Widget get _placeHolderDatasWidget => FutureBuilder(
        future: getJsonPlaceHolderDatas(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListTile(
              title: Text(snapshot.data.title),
              subtitle: Text(snapshot.data.body),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
}
