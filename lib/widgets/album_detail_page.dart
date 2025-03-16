import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/music.dart';

class AlbumDetailPage extends StatefulWidget {
  final Music album;
  const AlbumDetailPage({Key? key, required this.album}) : super(key: key);

  @override
  _AlbumDetailPageState createState() => _AlbumDetailPageState();
}

class _AlbumDetailPageState extends State<AlbumDetailPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Could not open link")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final album = widget.album;
    return Scaffold(
      appBar: AppBar(
        title: Text(album.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Album cover with Hero animation.
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
              SizedBox(height: 16),
              Text(
                album.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                album.artistName,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 16),
              // Animated description text.
              FadeTransition(
                opacity: _fadeAnimation,
                child: Text(
                  album.description ?? "No description available.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Track List",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              // List the tracks using a ListView.
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: album.songs?.length ?? 0,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  final song = album.songs![index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(song.title),
                    subtitle: Text(song.duration),
                    trailing: song.link != null
                        ? IconButton(
                            icon: Icon(Icons.play_arrow),
                            onPressed: () => _launchURL(song.link!),
                          )
                        : null,
                  );
                },
              ),
              SizedBox(height: 16),
              if (album.link != null)
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () => _launchURL(album.link!),
                    icon: Icon(Icons.play_arrow),
                    label: Text("Play Album on Spotify"),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}