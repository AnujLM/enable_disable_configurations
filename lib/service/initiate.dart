import 'package:dio/dio.dart';
import '../../constants.dart';

Future<(String, String)?> initiateUser(String uuid, String userName) async {
  Dio dio = Dio();
  print('-----------------Initiate User-----------------');
  try {
    var response = await dio.post('$baseUrl/sdk/initiate',
        options: Options(headers: {
          'x-api-key': apiKey,
          "x-platform-code": "fl",
          "x-version-code": 28,
          "x-sdk-source": "feed",
          "Content-Type": "application/json"
        }),
        data: {
          'uuid': uuid,
          'user_name': userName,
        });
    if (response.data['success']) {
      print(response.data['data']);
      return (
        response.data['data']['access_token'] as String,
        response.data['data']['refresh_token'] as String
      );
    } else {
      print(response.data["error_message"]);
    }
  } on DioException catch (err) {
    String errMessage =
        err.response?.data['error_message'] ?? "Error in initiating user";
    print(errMessage);
    return null;
  }
  return null;
}
