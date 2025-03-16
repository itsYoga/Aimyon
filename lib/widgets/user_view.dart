import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'photo_detail_page.dart';

class AimyonIntroPage extends StatefulWidget {
  const AimyonIntroPage({Key? key}) : super(key: key);

  @override
  _AimyonIntroPageState createState() => _AimyonIntroPageState();
}

class _AimyonIntroPageState extends State<AimyonIntroPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 1200));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _slideAnimation = Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Could not launch URL")));
    }
  }

  @override
  Widget build(BuildContext context) {
    // Social media URLs
    final String officialUrl = "https://aimyong.net";
    final String twitterUrl = "https://twitter.com/aimyonGtter";
    final String instagramUrl = "https://instagram.com/aimyon36";
    final String youtubeUrl = "https://www.youtube.com/channel/UCQVhrypJhw1HxuRV4gX6hoQ";

    // List of sample photo asset paths
    final List<String> photoAssets = [
      "assets/photo1.jpg",
      "assets/photo2.jpg",
      "assets/photo3.jpg",
      "assets/photo4.jpg",
      "assets/photo5.jpg",
      "assets/photo6.jpg",
      "assets/photo7.jpg",
      "assets/photo8.jpg",
      "assets/photo9.jpg",
    ];


    return Scaffold(
      // Remove the AppBar so content starts at the top.
      body: SafeArea(
        child: SingleChildScrollView(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    // Profile image with Hero animation.
                    Hero(
                      tag: "aimyonProfile",
                      child: ClipOval(
                        child: Image.asset(
                          "assets/Aimyon.jpg",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "あいみょん",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Social media icons row.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Official Website
                        IconButton(
                          icon: const Icon(Icons.web, size: 32, color: Colors.black),
                          onPressed: () => _launchURL(officialUrl),
                        ),
                        // Twitter
                        IconButton(
                          icon: Image.asset("assets/twitter.png", width: 32, height: 32),
                          onPressed: () => _launchURL(twitterUrl),
                        ),
                        // Instagram (using an asset image if available)
                        IconButton(
                          icon: Image.asset("assets/insta.png", width: 32, height: 32),
                          onPressed: () => _launchURL(instagramUrl),
                        ),
                        // YouTube (using an asset image if available)
                        IconButton(
                          icon: Image.asset("assets/youtube.png", width: 32, height: 32),
                          onPressed: () => _launchURL(youtubeUrl),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Extra details for the YouTube channel.
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () {
                        // For example, navigate to a music player or album list.
                      },
                      icon: const Icon(Icons.play_arrow),
                      label: const Text("Listen to Aimyon"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Grid of photos.
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Photos",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: photoAssets.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        final photoPath = photoAssets[index];
                        // Use a unique hero tag for each photo
                        final heroTag = "photo_$index";
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PhotoDetailPage(
                                  photoPath: photoPath,
                                  heroTag: heroTag,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: heroTag,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                photoPath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}