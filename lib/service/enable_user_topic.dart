import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enable_disable_configurations/constants.dart';

Future<void> enableUserTopic(String accessToken) async {
  var headers = {
    "Authorization": accessToken,
    "x-platform-code": "fl",
    "x-version-code": 28,
    "x-sdk-source": "feed",
    // "Content-Type": "application/json"
  };
  var data = {
    "community_settings": [
      {
        "enabled": true,
        "enabled_by": 94430,
        "setting_sub_title":
            "Enable User topics connection (follow/unfollow topics) in the community",
        "setting_title": "User Topics Connection",
        "setting_type": "user_topics_connection"
      }
    ]
  };
  var dio = Dio();
  try {
    var response = await dio.put(
      '$baseUrl/community/settings',
      options: Options(
        headers: headers,
      ),
      data: data,
    );

    print('-----------------Enable User Topic-----------------');

    if (response.statusCode == 200) {
      print(json.encode(response.data));
    } else {
      print(response.statusMessage);
    }
  } catch (e) {
    print('Error: $e');
  }
}
