import 'package:http/http.dart';

abstract class RemoteServices {
  Future<Response> getSearchedWeatherdData(String location);
}
