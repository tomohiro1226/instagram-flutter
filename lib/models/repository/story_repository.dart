import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'dart:async';

import 'repository.dart';

class StoryRepository extends Repository {
  Future<Map<String, dynamic>> fetch() async {
    const url = 'https://run.mocky.io/v3/5a4f8d27-e9a1-4422-908f-ef80e5d38261';

    http.Response response = await http.get(url);

    if (response.statusCode != 200) {
      print("error");
    }

    return convert.jsonDecode(response.body);
  }
}
