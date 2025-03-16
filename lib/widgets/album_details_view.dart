import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/music.dart';

class AlbumDetailsView extends StatelessWidget {
  final Music album;
  const AlbumDetailsView({Key? key, required this.album}) : super(key: key);

  Future<void> _launchURL(String url, BuildContext context) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Could not open link")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(album.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Album cover with Hero animation for smooth transition.
            Hero(
              tag: album.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  album.coverImage,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Album Name and Artist
            Text(
              album.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              album.artistName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            // Album description.
            Text(
              album.description ?? "No description available.",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // Track list section (if available).
            if (album.songs != null && album.songs!.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Track List",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: album.songs!.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final song = album.songs![index];
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(song.title),
                        subtitle: Text(song.duration),
                        trailing: song.link != null
                            ? IconButton(
                                icon: const Icon(Icons.play_arrow),
                                onPressed: () =>
                                    _launchURL(song.link!, context),
                              )
                            : null,
                      );
                    },
                  ),
                ],
              ),
            const SizedBox(height: 16),
            // Album link button (e.g. to open on Spotify)
            if (album.link != null)
              Center(
                child: ElevatedButton.icon(
                  onPressed: () => _launchURL(album.link!, context),
                  icon: const Icon(Icons.play_arrow),
                  label: const Text("Play Album on Spotify"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}