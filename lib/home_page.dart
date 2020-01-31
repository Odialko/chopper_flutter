//import 'package:bfi_api_content/model/pillar_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chopper/chopper.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';

import 'dart:convert';

import 'data/post_api_service.dart';
import 'model/built_content.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BFI Api'),
      ),
//      body: Text('asdasd'),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final newContent = 'rentals';
//          final newContent = BuiltContent((b) => b..pillar = PillarModel('rentals'));
          final response =
            await Provider.of<PostApiService>(context).getPillar(newContent);
          // We cannot really add any new posts using the placeholder API,
          // so just print the response to the console

            print(response.body.pillar);
        }
      ),
    );
  }

  FutureBuilder<Response> _buildBody(BuildContext context) {
    return FutureBuilder<Response<BuiltContent>>(
//    return FutureBuilder<Response<PillarModel>>(
      future: Provider.of<PostApiService>(context).getPillar('free'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          }
          final content = snapshot.data.body;
          print(content.pillar);
          return Column(
            children: <Widget>[
              Center(
                child: Text(content.pillar),
              )
            ],
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

}