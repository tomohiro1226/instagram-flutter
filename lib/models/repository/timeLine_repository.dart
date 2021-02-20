import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'dart:async';

import 'repository.dart';

class TimeLineRepository extends Repository {
  Future<Map<String, dynamic>> fetch() async {
    const url = 'https://run.mocky.io/v3/2cf63496-699f-49ce-aca3-b6b479cced60';

    http.Response response = await http.get(url);

    if (response.statusCode != 200) {
      print("error");
    }

    return convert.jsonDecode(response.body);
  }
}
