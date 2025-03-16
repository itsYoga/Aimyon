class Song {
  final String title;     // e.g., "Kimi Wa Rock Wo Kikanai"
  final String duration;  // e.g., "3:55"
  final String? link;     // Optional link to Apple Music, Spotify, etc.

  Song({
    required this.title,
    required this.duration,
    this.link,
  });
}