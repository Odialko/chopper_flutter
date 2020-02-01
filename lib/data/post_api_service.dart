import 'package:bfi_api_content/model/built_content.dart';
import 'package:chopper/chopper.dart';

import 'built_value_converter.dart';

part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/pillars')
abstract class PostApiService extends ChopperService {
  @Get(path: '/{pillar}')
  Future<Response<BuiltContent>> getPillar(@Path('pillar') String pillarName);

  static PostApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://services.player.bfi.org.uk/api/api/v1',
        services: [
          _$PostApiService(),
        ],
        converter: BuiltValueConverter());

    return _$PostApiService(client);
  }
}
