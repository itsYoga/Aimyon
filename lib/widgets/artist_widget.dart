import 'package:flutter/material.dart';
import '../models/music.dart';

class ArtistWidget extends StatelessWidget {
  final Music artist;
  const ArtistWidget({Key? key, required this.artist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using Row, CircleAvatar, Padding, and Expanded.
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(artist.coverImage),
            radius: 40,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(artist.name,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(height: 8),
                Text(
                  "Aimyon is a popular Japanese singer-songwriter known for her heartfelt lyrics and unique style.",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}