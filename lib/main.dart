import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _rating;

  @override
  void initState() {
    _rating = 0.0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: Theme.of(context).textTheme.title.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              FlutterRatingBar(
                fillColor: Colors.blue,
                borderColor: Colors.blue.withAlpha(50),
                allowHalfRating: true,
                onRatingUpdate: (rating) {
                  setState(() {
                    _rating = rating;
                  });
                },
              ),
              Text(_rating.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
