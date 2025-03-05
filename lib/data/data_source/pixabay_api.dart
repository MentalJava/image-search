import 'dart:convert';

import 'package:http/http.dart' as http;

class PixabayApi {
  PixabayApi(this.client);

  final http.Client client;

  static const baseUrl = 'https://pixabay.com/api/';
  static const key = '48936007-64e1610823830ce48aa344d58';

  Future<Iterable> fetch(String query) async {
    final response = await client.get(
        Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo&pretty=true'));
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits;
  }
}
