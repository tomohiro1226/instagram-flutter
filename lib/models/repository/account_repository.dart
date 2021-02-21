import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'dart:async';

import 'repository.dart';

class AccountRepository extends Repository {
  Future<Map<String, dynamic>> fetch() async {
    const url = 'https://run.mocky.io/v3/4a725916-0497-4362-a952-65eb7945e5fd';

    http.Response response = await http.get(url);

    if (response.statusCode != 200) {
      print("error");
    }

    return convert.jsonDecode(response.body);
  }
}
