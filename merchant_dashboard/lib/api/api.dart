import 'dart:convert';
import 'package:http/http.dart ' as http;

import 'package:merchant_dashboard/utils/preference_utils.dart';

class Api {
  final baseUri = "https://chaos.paynation.io";

  Future<Map<String, dynamic>> getUsers() async {
    try {
      final response = await http.post(Uri.parse("$baseUri/admin/get-users"),
          body: jsonEncode({"page": 1, "limit": 10}),
          headers: {
            'accept': '*/*',
            'Content-Type': 'application/json',
            "Authorization": "Bearer ${PreferenceUtils().getString('token')}",
          });

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseJson = json.decode(response.body);
        print(responseJson);
        return responseJson;
      } else {
        return Future.error({
          "statusCode": response.statusCode,
          "message": jsonDecode(response.body)['message']
        });
      }
    } catch (e) {
      print(e);
      return {};
    }
  }
}

final api = Api();
