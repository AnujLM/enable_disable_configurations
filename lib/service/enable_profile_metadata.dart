import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enable_disable_configurations/constants.dart';

Future<void> enableProfileMetadata(String accessToken) async {
  var headers = {
    "Authorization": accessToken,
    "x-platform-code": "fl",
    "x-version-code": 27,
    "x-sdk-source": "feed",
    "Content-Type": "application/json"
  };
  var data = {
    "type": "profile_metadata",
    "value": {
      "widgets_enabled": true,
    }
  };
  var dio = Dio();
  try {
    var response = await dio.patch(
      '$baseUrl/community/configurations',
      options: Options(
        headers: headers,
      ),
      data: data,
    );
    
    print('-----------------Enable Profile Metadata-----------------');
    if (response.statusCode == 200) {
      print(json.encode(response.data));
    } else {
      print(response.statusMessage);
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}
