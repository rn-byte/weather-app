import 'package:flutter/material.dart';

class SearchedWeatherImageWidget extends StatefulWidget {
  final int code;
  const SearchedWeatherImageWidget({super.key, required this.code});

  @override
  State<SearchedWeatherImageWidget> createState() =>
      _SearchedWeatherImageWidgetState();
}

class _SearchedWeatherImageWidgetState
    extends State<SearchedWeatherImageWidget> {
  @override
  Widget build(BuildContext context) {
    switch (widget.code) {
      case 1087:
      case 1273:
      case 1276:
        return Image.asset(
          'assets/images/1.png',
          scale: 2,
        );
      case 1150:
      case 1153:
      case 1180:
      case 1183:
      case 1186:
      case 1189:
      case 1240:
      case 1243:
      case 1246:
        return Image.asset('assets/images/2.png', scale: 2);
      case > 1192 && < 1195:
        return Image.asset('assets/images/3.png', scale: 2);
      case 1210:
      case 1213:
      case 1216:
      case 1219:
      case 1222:
      case 1225:
      case 1255:
      case 1258:
      case 1279:
      case 1282:
        return Image.asset('assets/images/4.png', scale: 2);
      case 1006:
      case 1031:
      case 1063:
        return Image.asset('assets/images/5.png', scale: 2);
      case 1000:
      case 1003:
        return Image.asset('assets/images/6.png', scale: 2);
      case 1009:
      case 1030:
        return Image.asset('assets/images/7.png', scale: 2);
      default:
        return Image.asset(
          'assets/images/7.png',
          scale: 2,
        );
    }
  }
}
