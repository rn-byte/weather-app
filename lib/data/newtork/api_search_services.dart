import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/data/newtork/remote_services.dart';
import 'package:weather_app/utils/app_url.dart';

import '../my_data.dart';

class ApiSearchServices extends RemoteServices {
  @override
  Future<http.Response> getSearchedWeatherdData(String location) async {
    // Map<String, String> queryParameters = {
    //   'q': location,
    //   'appid': API_KEY,
    //   'units': 'metric'
    // };
    final url =
        '${AppUrl.forecastBaseUrl}?key=$API_KEY_7&q=$location&days=1&aqi=no&alerts=no';
    // final response =
    //     await get(Uri.http(AppUrl.baseUrl, AppUrl.endPoint, queryParameters));
    final response = await http.get(Uri.parse(url));
    return response;
  }

  @override
  Future<http.Response> get7daysForecastdData(String location) async {
    final url =
        '${AppUrl.forecastBaseUrl}?key=$API_KEY_7&q=$location&days=7&aqi=no&alert=no';
    final response = await http.get(Uri.parse(url));
    return response;
  }

  @override
  Future<List<dynamic>?> fetchCitySuggestionData(String query) async {
    final url = '${AppUrl.searchBaseUrl}?key=$API_KEY_7&q=$query';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }
}
