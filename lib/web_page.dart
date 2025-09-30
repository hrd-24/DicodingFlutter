
import 'package:dicoding_flutter/main.dart';
import 'package:dicoding_flutter/model/tourism_place.dart';
import 'package:flutter/material.dart';

class DetailWebPage extends StatelessWidget {
  final TourismPlace place;
  const DetailWebPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Wisata Bandung',
        style: TextStyle(
          fontFamily: 'Staatliches',
          fontSize: 32,
        ),
      ),
      const SizedBox(height: 32),
     Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Expanded(
      child: Column(
  children: [
    ClipRRect(
      child: Image.network(place.imageUrl),
      borderRadius: BorderRadius.circular(10),
    ),
    const SizedBox(height: 16),
    Container(
      height: 150,
      padding: const EdgeInsets.only(bottom: 16),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: place.imageUrls.map((url) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(url),
            ),
          );
        }).toList(),
      ),
    ),
  ],
),
    ),
    const SizedBox(width: 32),
    Expanded(
      child: Card(
  child: Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          child: Text(
            place.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30.0,
              fontFamily: 'Staatliches',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                const Icon(Icons.calendar_today),
                const SizedBox(width: 8.0),
                Text(
                  place.openDays,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches'
                  ),
                ),
              ],
            ),
            const FavoriteButton(),
          ],
        ),
        Row(
          children: <Widget>[
            const Icon(Icons.access_time),
            const SizedBox(width: 8.0),
            Text(
              place.openTime,
              style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches'
                  ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: <Widget>[
            const Icon(Icons.monetization_on),
            const SizedBox(width: 8.0),
            Text(
              place.ticketPrice,
              style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches'
                  ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            place.description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 16.0,
              fontFamily: 'Oxygen',
            ),
          ),
        ),
      ],
    ),
  ),
),
    ),
  ],
),
    ],
  ),
     
    );
  }
}

