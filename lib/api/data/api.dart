import 'dart:convert';

import 'package:image_search/model/photo.dart';
import 'package:http/http.dart' as http;

class Api {
  final baseUrl = 'https://pixabay.com/api/';
  final key = '48936007-64e1610823830ce48aa344d58';

  Future<List<Photo>> fetch(String query) async {
    final resposne = await http.get(
        Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo&pretty=true'));

    Map<String, dynamic> jsonResponse = jsonDecode(resposne.body);
    Iterable hits = jsonResponse['hits'];

    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
