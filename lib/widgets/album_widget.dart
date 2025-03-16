import 'package:flutter/material.dart';
import '../models/music.dart';
import 'album_detail_page.dart';

class AlbumWidget extends StatelessWidget {
  final Music album;
  const AlbumWidget({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AlbumDetailPage(album: album)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Hero(
                tag: album.name,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    album.coverImage,
                    width: 114,
                    height: 88,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                album.name,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(album.artistName, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}