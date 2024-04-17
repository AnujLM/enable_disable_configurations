import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enable_disable_configurations/constants.dart';

Future<List<String>> addParentTopics(String accessToken) async {
  var headers = {
    "Authorization": accessToken,
    "x-platform-code": "fl",
    "x-version-code": 28,
    "x-sdk-source": "feed",
    "Content-Type": "application/json"
  };
  var data = {
    "topics": [
      {
        "is_searchable": false,
        "level": 0,
        "name": "Countries",
        "priority": 1,
        "metadata": {
          "cover_image": "",
          "description": "Which countries you are planning to visit?",
          "icon": "",
          "pgc": {}
        }
      },
      {
        "is_searchable": false,
        "level": 0,
        "name": "Interests",
        "priority": 0.5,
        "metadata": {
          "cover_image": "",
          "description": "Select the topics that interest you",
          "icon": "",
          "pgc": {}
        }
      }
    ]
  };
  var dio = Dio();
  try {
    var response = await dio.request(
      '$baseUrl/feed/topic',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );
    print('-----------------Add Parent Topics-----------------');

    if (response.statusCode == 200) {
      final List<String> parentTopics = [];
      for (var topic in response.data['data']['topics']) {
        parentTopics.add(topic['_id']);
      }
      print(json.encode(response.data));
      return parentTopics;
    } else {
      print(response.statusMessage);
      return [];
    }
  } catch (e) {
    print('Error: $e');
    return [];
  }
}
