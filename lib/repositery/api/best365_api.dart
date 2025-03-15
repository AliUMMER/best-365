import 'dart:convert';
import 'package:best_365/model_class/best_model.dart';
import 'package:http/http.dart';

import 'api_client.dart';

class Best365Api {
  ApiClient apiClient = ApiClient();

  Future<Best365Model> getbest365() async {
    String path =
        'https://betsapi2.p.rapidapi.com/v1/bet365/inplay_filter?sport_id=1';
    var body = {};

    Response response = await apiClient.invokeAPI(path, 'GET', body);
    return Best365Model.fromJson(jsonDecode(response.body));
  }

  // static getanimedb() {}
}
