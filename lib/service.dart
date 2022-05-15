import 'package:django_post/model.dart';
import 'package:http/http.dart' as http;

class Post {
  Future<User?> createUser(String title, String net, String rent) async {
    // Uri apiUrl = "https://reqres.in/api/users" ;

    final response = await http.post(
        Uri.parse('https://appkameme.herokuapp.com/create/'),
        body: {"title": title, "image": net, 'rent': rent});

    if (response.statusCode == 201) {
      final String responseString = response.body;

      return userModelFromJson(responseString);
    } else {
      return null;
    }
  }
}
