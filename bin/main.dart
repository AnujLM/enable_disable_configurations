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
      // await addParentTopics(accessToken);
      //TODO: change the parameters to the actual values return in addParentTopics
      // await addChildTopics(accessToken, "countriesId", "interestsId");
      // await enableWidgetsMetadata(accessToken);
    }
  });
}
