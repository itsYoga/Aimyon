import 'package:flutter/material.dart';
import '../models/concert.dart';
import '../models/music_data.dart';
import 'album_widget.dart';
import 'artist_widget.dart';
import 'concert_widget.dart';
import 'music_disc_widget.dart';
import 'user_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  int _selectedIndex = 0; // Track the current bottom navigation index

  @override
  void initState() {
    super.initState();
    // Set up a fade-in animation for the entire screen.
    _controller = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Builds the Home tab content.
  Widget _buildHomeContent() {
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
              // Music disc with a continuous rotation animation
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

  // Placeholder widget for Music page.
  Widget _buildMusicContent() {
    return Center(
      child: Text(
        "Music Page",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Placeholder widget for User page.
  Widget _buildUserContent() {
    return AimyonIntroPage();
  }

  @override
  Widget build(BuildContext context) {
    // Switch the content based on the selected bottom navigation index.
    Widget bodyContent;
    switch (_selectedIndex) {
      case 0:
        bodyContent = _buildHomeContent();
        break;
      case 1:
        bodyContent = _buildMusicContent();
        break;
      case 2:
        bodyContent = _buildUserContent();
        break;
      default:
        bodyContent = _buildHomeContent();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: bodyContent,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Music",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open a mini player or perform another action
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A row containing the title and (optionally) interactive icons.
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