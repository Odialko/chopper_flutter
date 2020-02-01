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
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            final newContent = 'free';
            final response = await Provider.of<PostApiService>(context)
                .getPillar(newContent);
            print(response);
//            _buildBody(context, newContent);
          }),
    );
  }

    FutureBuilder<Response> _buildBody(BuildContext context) {
    return FutureBuilder<Response<BuiltContent>>(
      future: Provider.of<PostApiService>(context).getPillar('rentals'),
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
          return ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: content.collections.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text('Pillar: ${content.pillar}'),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text('id: ${content.collections[0].uuid}'),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text('title: ${content.collections[0].title}'),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text('pillar: ${content.collections[0].pillar}'),
                      ),
                    ],
                  )
                  )
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
