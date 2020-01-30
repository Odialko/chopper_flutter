import 'package:bfi_api_content/model/collection_model.dart';
import 'package:bfi_api_content/model/pillar_model.dart';
import 'package:bfi_api_content/model/post_model.dart';
import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';

part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/pillars')
abstract class PostApiService extends ChopperService {
  @Get(path: '/{pillar}')
  Future<Response> getPillar(@Path('pillar') String pillarName);

  static PostApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://services.player.bfi.org.uk/api/api/v1',
        services: [
          _$PostApiService(),
        ],
        converter: JsonConverter());
//        converter: BuiltValueConverter());

    return _$PostApiService(client);
  }
}
