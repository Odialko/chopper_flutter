import 'package:bfi_api_content/data/post_api_service.dart';
import 'package:bfi_api_content/model/post_model.dart';
import 'package:bfi_api_content/repository/content_repository.dart';
import 'package:bfi_api_content/repository/customer_repository.dart';
import 'package:bfi_api_content/repository/media_repository.dart';

Future<void> main() async {
  final myService = PostApiService.create();
  final response = await myService.getPillar('rentals');
  var post = PostModel.fromJson(response.body);
  print(post.pillar);
  print(post.collection);

//  var post = PostModel.fromJson(response.body);


//  final myService = PostApiService.create();
//  final response = await myService.getPillar('free');
//  print(response.body);
//
//
//
//
//
//
//  var contentRepository = ContentRepository.instance.loadCollection();
//  var contentRepository2 = ContentRepository.instance.loadCollection();
//
//  print(contentRepository.uuid);
//  print(contentRepository.title);
//  print(contentRepository.pillar.pillar);
//  print(contentRepository2);
//  print(contentRepository.hashCode);
//  print(contentRepository2.hashCode);
//  print(contentRepository2.hashCode);

//
//  final myService = PostApiService.create();
//  final response = await myService.getPillar('free');
//  print(response.body);
//
//
//
//  var contentRepository = ContentRepository.instance.loadCollection();
//  var contentRepository2 = ContentRepository.instance.loadCollection();
//
//  print(contentRepository.uuid);
//  print(contentRepository.title);
//  print(contentRepository.pillar.pillar);
//  print(contentRepository2);
//  print(contentRepository.hashCode);
//  print(contentRepository2.hashCode);
//  print(contentRepository2.hashCode);


//  final customer1 = CustomerRepository.instance;
//  final customer2 = CustomerRepository.instance;
//  final media1 = MediaRepository.instance;
//  final media2 = MediaRepository.instance;
//
//  print(customer1.hashCode);
//  print(customer2.hashCode);
//  print(media1.hashCode);
//  print(media2.hashCode);


//  runApp(MyApp());
}
