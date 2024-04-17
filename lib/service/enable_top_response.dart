import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enable_disable_configurations/constants.dart';

Future<void> enableTopResponse(String accessToken) async {
  var headers = {
    "Authorization": accessToken,
    "x-platform-code": "fl",
    "x-version-code": 28,
    "x-sdk-source": "feed",
    "Content-Type": "application/json"
  };
  var data =
      '''{"description": "Metadata related to feed and its entity",\n                "type": "feed_metadata",\n                "value": {\n                    "comment": "response",\n                    "post": "question",\n                    "universal_feed": {\n                        "comment_count": 1,\n                        "comment_sort_order": "desc",\n                        "comment_sort_order_key": "likes"\n                    }\n                }\n            },''';
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

    print('-----------------Enable Top Response-----------------');

    if (response.statusCode == 200) {
      print(json.encode(response.data));
    } else {
      print(response.statusMessage);
    }
  } catch (e) {
    print('Error: $e');
  }
}
