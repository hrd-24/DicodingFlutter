import 'package:dicoding_flutter/main_screen.dart';
import 'package:dicoding_flutter/mobile_page.dart';
import 'package:dicoding_flutter/model/tourism_place.dart';
import 'package:dicoding_flutter/web_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home:  MainScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
    final TourismPlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);
 
  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}
 
class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(    isFavorite ? Icons.favorite : Icons.favorite_border, color: Colors.red,
),
onPressed: () {
  setState(() {
    isFavorite = !isFavorite;
  });
},    );
  }
}

