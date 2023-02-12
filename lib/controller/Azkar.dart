import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/AzkarModel.dart';

class AzkarApi {
  static fetchAzkar() async {
    List<AzkarModel> model = [];
    var url = Uri.parse("https://ahegazy.github.io/muslimKit/json/azkar_sabah.json");
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body)["content"];
    for (var i in responseBody) {
      model.add(AzkarModel( zekr: i["zekr"], repeat: i["repeat"]));
    }
    return model;
  }
}