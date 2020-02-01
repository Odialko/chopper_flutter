import 'package:bfi_api_content/model/built_content.dart';
import 'package:bfi_api_content/model/serializers.dart';
import 'package:chopper/chopper.dart';

class BuiltValueConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) {
    return super.convertRequest(request.replace(
        body: serializers.serializeWith(
            serializers.serializerForType(request.body.runtimeType),
            request.body)));
  }

  @override
  Response<BodyType> convertResponse<BodyType, SingleItemType>(
    Response response,
  ) {
    final Response dynamicResponse = super.convertResponse(response);
    final BodyType customBody =
        _convertToCustomObject<BuiltContent>(dynamicResponse.body);
    return dynamicResponse.replace<BodyType>(body: customBody);
  }

  dynamic _convertToCustomObject<SingleItemType>(dynamic element) {

    if (element is SingleItemType) return element;

    else
      return _desirialize<SingleItemType>(element);
  }

  SingleItemType _desirialize<SingleItemType>(value) {

    if (value is List) {
      var someResult;
      value.forEach((element) {
        someResult += _desirialize<SingleItemType>(element);
      });
      return someResult;
    }

    return serializers.deserializeWith(
      serializers.serializerForType(SingleItemType),
      value,
    );
  }
}
