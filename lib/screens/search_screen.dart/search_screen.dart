import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart/widgets/search_widget.dart';
import '../home/widgets/widgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchWidget(),
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.settings),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const AlignWidget(
                  h: 300,
                  w: 300,
                  color: Colors.deepPurple,
                  x: 8,
                  y: -0.3,
                  shape: BoxShape.circle),
              const AlignWidget(
                  color: Color(0xFF673AB7),
                  x: -8,
                  y: -0.3,
                  h: 300,
                  w: 300,
                  shape: BoxShape.circle),
              const AlignWidget(
                color: Color(0xFFFFAB40),
                x: 0,
                y: -1.2,
                h: 300,
                w: 600,
                shape: BoxShape.rectangle,
              ),
              const BackdropFilterWidget(
                  x: 100, y: 100, color: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }
}
