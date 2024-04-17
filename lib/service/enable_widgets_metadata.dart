import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enable_disable_configurations/constants.dart';

Future<void> enableWidgetsMetadata(String accessToken) async {
  var headers = {
    "Authorization": accessToken,
    "x-platform-code": "fl",
    "x-version-code": 28,
    "x-sdk-source": "feed",
    "Content-Type": "application/json"
  };
  var data = json.encode({
    "description": "Widgets metadata for the community",
    "type": "widgets_metadata",
    "value": {"message": true}
  });
  var dio = Dio();

  try {
    var response = await dio.request(
      '$baseUrl/community/configurations',
      options: Options(
        method: 'PATCH',
        headers: headers,
      ),
      data: data,
    );

    print('-----------------Enable Widgets Metadata-----------------');
    if (response.statusCode == 200) {
      print(json.encode(response.data));
    } else {
      print(response.statusMessage);
    }
  } catch (e) {
    print('Error: $e');
  }
}
