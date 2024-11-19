import 'package:http/http.dart';

abstract class RemoteServices {
  Future<Response> getSearchedWeatherdData(String location);
  Future<Response> get7daysForecastdData(String location);
  Future<List<dynamic>?> fetchCitySuggestionData(String query);
}
