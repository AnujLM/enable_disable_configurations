import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enable_disable_configurations/constants.dart';

//TODO: add List<String> parentTopics as response in this function so that we can use it for setting up the child topics
Future<void> addParentTopics(String accessToken) async {
  var headers = {
    "Authorization": accessToken,
    "x-platform-code": "fl",
    "x-version-code": 28,
    "x-sdk-source": "feed",
    "Content-Type": "application/json"
  };
  var data = json.encode({
    "topics": [
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": false,
        "level": 0,
        "name": "Countries",
        "number_of_posts": 0,
        "parent_id": "",
        "parent_name": "",
        "priority": 1,
        "total_child_count": 12,
        "metadata": {
          "cover_image": "",
          "description": "Which countries you are planning to visit?",
          "icon": "",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": false,
        "level": 0,
        "name": "Interests",
        "number_of_posts": 1,
        "parent_id": "",
        "parent_name": "",
        "priority": 0.5,
        "total_child_count": 8,
        "metadata": {
          "cover_image": "",
          "description": "Select the topics that interest you",
          "icon": "",
          "pgc": {}
        }
      }
    ]
  });
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
      print(json.encode(response.data));
    } else {
      print(response.statusMessage);
    }
  } catch (e) {
    print('Error: $e');
  }
}
