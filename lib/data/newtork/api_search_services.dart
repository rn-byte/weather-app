import 'package:http/http.dart';
import 'package:weather_app/data/newtork/remote_services.dart';
import 'package:weather_app/utils/app_url.dart';

import '../my_data.dart';

class ApiSearchServices extends RemoteServices {
  @override
  Future<Response> getSearchedWeatherdData(String location) async {
    Map<String, String> queryParameters = {
      'q': location,
      'appid': API_KEY,
      'units': 'metric'
    };
    final response =
        await get(Uri.http(AppUrl.baseUrl, AppUrl.endPoint, queryParameters));
    return response;
  }
}
