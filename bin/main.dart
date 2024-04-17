import 'package:dotenv/dotenv.dart';
import 'package:enable_disable_configurations/index.dart';

Future<void> main(List<String> arguments) async {
  var env = DotEnv(includePlatformEnvironment: true)..load();
  apiKey = env['API_KEY'] ?? "";
  baseUrl = env['BASE_URL'] ?? "";

  initiateUser(uuid, userName).then((value) async {
    if (value != null) {
      String accessToken = value.$1;
      print("Access Token: $accessToken");
      print("Refresh Token: ${value.$2}");
      // uncomment the following lines to enable the configurations
      // await enableProfileMetadata(accessToken);
      // await enableTopResponse(accessToken);
      // await enableUserTopic(accessToken);
      final parentTopicIds = await addParentTopics(accessToken);
      print("parentTopicIds: $parentTopicIds");
      await addChildTopics(
          accessToken, parentTopicIds.first, parentTopicIds.last);
      // await enableWidgetsMetadata(accessToken);
    }
  });
}
