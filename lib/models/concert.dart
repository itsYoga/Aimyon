class Concert {
  final String title;
  final String date;
  final String venue;
  final String location;
  final String image; // Path to asset image
  final double latitude;
  final double longitude;

  Concert({
    required this.title,
    required this.date,
    required this.venue,
    required this.location,
    required this.image,
    required this.latitude,
    required this.longitude,
  });
}

class ConcertData {
  static List<Concert> getConcerts() {
    return [
      // Taipei Concerts
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Taipei (April 12, 2025)",
        date: "2025-04-12",
        venue: "Taipei Music Center",
        location: "Taipei, Taiwan",
        image: "assets/concert1.jpg",
        latitude: 25.033, // approximate coordinates
        longitude: 121.565,
      ),
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Taipei (April 13, 2025)",
        date: "2025-04-13",
        venue: "Taipei Music Center",
        location: "Taipei, Taiwan",
        image: "assets/concert1.jpg",
        latitude: 25.033,
        longitude: 121.565,
      ),
      // Seoul Concerts
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Seoul (April 19, 2025)",
        date: "2025-04-19",
        venue: "KINTEX Hall 9",
        location: "Seoul, South Korea",
        image: "assets/concert1.jpg",
        latitude: 37.517, // approximate coordinates
        longitude: 127.041,
      ),
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Seoul (April 20, 2025)",
        date: "2025-04-20",
        venue: "KINTEX Hall 9",
        location: "Seoul, South Korea",
        image: "assets/concert1.jpg",
        latitude: 37.517,
        longitude: 127.041,
      ),
      // Kobe Concerts
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Kobe (May 2, 2025)",
        date: "2025-05-02",
        venue: "GLION ARENA KOBE",
        location: "Kobe, Japan",
        image: "assets/concert1.jpg",
        latitude: 34.690, // approximate coordinates
        longitude: 135.195,
      ),
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Kobe (May 3, 2025)",
        date: "2025-05-03",
        venue: "GLION ARENA KOBE",
        location: "Kobe, Japan",
        image: "assets/concert1.jpg",
        latitude: 34.690,
        longitude: 135.195,
      ),
      // Yokohama Concerts
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Yokohama (May 10, 2025)",
        date: "2025-05-10",
        venue: "K Arena Yokohama",
        location: "Yokohama, Japan",
        image: "assets/concert1.jpg",
        latitude: 35.4437,
        longitude: 139.6380,
      ),
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Yokohama (May 11, 2025)",
        date: "2025-05-11",
        venue: "K Arena Yokohama",
        location: "Yokohama, Japan",
        image: "assets/concert1.jpg",
        latitude: 35.4437,
        longitude: 139.6380,
      ),
      // Osaka Concerts
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Osaka (May 21, 2025)",
        date: "2025-05-21",
        venue: "Osaka-Jo Hall",
        location: "Osaka, Japan",
        image: "assets/concert1.jpg",
        latitude: 34.6864,
        longitude: 135.5200,
      ),
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Osaka (May 22, 2025)",
        date: "2025-05-22",
        venue: "Osaka-Jo Hall",
        location: "Osaka, Japan",
        image: "assets/concert1.jpg",
        latitude: 34.6864,
        longitude: 135.5200,
      ),
      // Saitama Concerts
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Saitama (May 28, 2025)",
        date: "2025-05-28",
        venue: "Saitama Super Arena",
        location: "Saitama, Japan",
        image: "assets/concert1.jpg",
        latitude: 35.8617,
        longitude: 139.6455,
      ),
      Concert(
        title: "Aimyon Dolphin Apartment Tour - Saitama (May 29, 2025)",
        date: "2025-05-29",
        venue: "Saitama Super Arena",
        location: "Saitama, Japan",
        image: "assets/concert1.jpg",
        latitude: 35.8617,
        longitude: 139.6455,
      ),
    ];
  }
}