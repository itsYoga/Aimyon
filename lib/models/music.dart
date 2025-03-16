import 'song.dart';

class Music {
  final String name;
  final String artistName;
  final String coverImage; // Path to asset image
  final String? description;
  final String? link;      // Link for entire album (e.g., Apple Music)
  final List<Song>? songs; // A list of Song objects for the album

  Music({
    required this.name,
    required this.artistName,
    required this.coverImage,
    this.description,
    this.link,
    this.songs,
  });
}