import 'dart:convert';

import 'package:flutter_test_mobdev/character.dart';
import 'package:http/http.dart' as http;

Future<List<Character>> fetchCharacters() async {
  final response =
      await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body)['results'];
    return data.map((json) => Character.fromJson(json)).toList();
  } else {
    throw Exception('ERROR');
  }
}
