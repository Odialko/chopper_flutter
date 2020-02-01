import 'package:bfi_api_content/data/post_api_service.dart';
import 'package:bfi_api_content/model/built_content.dart';
//import 'package:bfi_api_content/model/pillar_model.dart';
import 'package:bfi_api_content/repository/content_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() async {
  runApp(MyApp());

  var collections = ContentRepository.instance;
  print('${await collections.loadCollections('rentals')}');

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      builder: (_) => PostApiService.create(),
      dispose: (_, PostApiService servise) => servise.client.dispose(),
      child: MaterialApp(
        title: 'BFI API',
        home: HomePage(),
      ),
    );
  }
}
