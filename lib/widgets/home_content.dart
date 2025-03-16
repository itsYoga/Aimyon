import 'package:flutter/material.dart';
import '../models/concert.dart';
import '../models/music_data.dart';
import 'album_widget.dart';
import 'artist_widget.dart';
import 'concert_widget.dart';
import 'music_disc_widget.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
    
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }
    
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
    
  @override
  Widget build(BuildContext context) {
    final albums = MusicData.getAlbums();
    final popularReleases = MusicData.getPopularReleases();
    final concerts = ConcertData.getConcerts();
    
    return SafeArea(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(title: "AIMYON"),
              SectionTitle(title: "Albums"),
              Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: albums.length,
                  itemBuilder: (context, index) {
                    final album = albums[index];
                    return AlbumWidget(album: album);
                  },
                ),
              ),
              SectionTitle(title: "Popular Releases"),
              Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularReleases.length,
                  itemBuilder: (context, index) {
                    final release = popularReleases[index];
                    return AlbumWidget(album: release);
                  },
                ),
              ),
              SectionTitle(title: "Artist"),
              ArtistWidget(artist: MusicData.getArtist()),
              SectionTitle(title: "Upcoming Concerts"),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: concerts.length,
                  itemBuilder: (context, index) {
                    final concert = concerts[index];
                    return ConcertWidget(concert: concert);
                  },
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: MusicDiscWidget(imagePath: "assets/あいみょん.jpg"),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({Key? key, required this.title}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({Key? key, required this.title}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}