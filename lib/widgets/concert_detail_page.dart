import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/concert.dart';

class ConcertDetailPage extends StatelessWidget {
  final Concert concert;
  const ConcertDetailPage({Key? key, required this.concert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LatLng concertLocation = LatLng(concert.latitude, concert.longitude);

    return Scaffold(
      appBar: AppBar(
        title: Text(concert.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Concert image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              concert.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              concert.venue,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              concert.location,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          SizedBox(height: 8),
          // Map view showing the location
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: concertLocation,
                zoom: 14,
              ),
              markers: {
                Marker(
                  markerId: MarkerId("concertMarker"),
                  position: concertLocation,
                  infoWindow: InfoWindow(title: concert.venue),
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}