import 'package:bfi_api_content/data/post_api_service.dart';
import 'package:bfi_api_content/repository/content_repository.dart';

Future<void> main() async {
  final myService = PostApiService.create();
  final response = await myService.getPillar('free');
  print(response.body);



  var contentRepository = ContentRepository.instance.loadCollection();
  var contentRepository2 = ContentRepository.instance.loadCollection();

  print(contentRepository.uuid);
  print(contentRepository.title);
  print(contentRepository.pillar.pillar);
  print(contentRepository2);
  print(contentRepository.hashCode);
  print(contentRepository2.hashCode);
  print(contentRepository2.hashCode);



//  runApp(MyApp());
}
