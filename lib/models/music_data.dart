import 'music.dart';
import 'song.dart';

class MusicData {
  // Albums (Aimyon) with Spotify links
  static List<Music> getAlbums() {
    return [
      Music(
        name: "青春のエキサイトメント",
        artistName: "Aimyon",
        coverImage: "assets/aimyon_album1.jpg",
        description:
            "日本唱作歌手愛繆（あいみょん）在首張專輯《青春のエキサイトメント》中，充分展示了她的才華。〈曾經活著啊〉和〈一直以來的憧憬〉這兩首歌中，愛繆在轟動事件的思考與對已故搖滾明星的追憶，顯示她成熟的一面；而在〈你不聽搖滾〉卻毫無保留地唱出了自己對愛情的憧憬。兩種風格乍聽似乎有點衝突，但因爲成熟與天真之間的張力，恰巧說明了「青春的悸動」的含義。",
        link: "https://open.spotify.com/album/0ct8ESCAYEpDGYJOndCfft", // Album's Spotify link
        songs: [
          Song(
            title: "憧れてきたんだ",
            duration: "2:25",
            link: "https://open.spotify.com/track/6hCmUhgNYCYWMF6IYPS1um",
          ),
          Song(
            title: "生きていたんだよな",
            duration: "3:14",
            link: "https://open.spotify.com/track/69jrtjVjyzRyPCDg0dHYCX",
          ),
          Song(
            title: "君はロックを聴かない",
            duration: "4:06",
            link: "https://open.spotify.com/track/59eluCMn0XbOWqeWQ91FTM",
          ),
          Song(
            title: "マトリョーシカ",
            duration: "3:42",
            link: "https://open.spotify.com/track/4E88SLBhlKjBh2cpIHrYso",
          ),
          Song(
            title: "ふたりの世界",
            duration: "4:47",
            link: "https://open.spotify.com/track/5xJgF12zKoxMqayN8YldLB",
          ),
          Song(
            title: "いつまでも",
            duration: "3:03",
            link: "https://open.spotify.com/track/3Z6Li4ySCGc1Cqjm2QU6qT",
          ),
          Song(
            title: "愛を伝えたいだとか",
            duration: "3:55",
            link: "https://open.spotify.com/track/0N8Xztr4pBHJ7V0moJWhbO",
          ),
          Song(
            title: "風のささやき",
            duration: "3:53",
            link: "https://open.spotify.com/track/1JKI1pTB2WZMMw7wF2jCTg",
          ),
          Song(
            title: "RING DING",
            duration: "3:55",
            link: "https://open.spotify.com/track/2DMHUE1Inway1eCAaq4Vua",
          ),
          Song(
            title: "ジェニファー",
            duration: "3:43",
            link: "https://open.spotify.com/track/7ySHoLhSRmWjfhuDmOcvTy",
          ),
          Song(
            title: "漂白",
            duration: "4:51",
            link: "https://open.spotify.com/track/5lP7oqYYLpIhUv33KdS4HX",
          ),
        ],
      ),
      Music(
        name: "瞬間的シックスセンス",
        artistName: "Aimyon",
        coverImage: "assets/aimyon_album2.jpg",
        description:
            "アルバム『瞬間的シックスセンス』はエネルギッシュな曲とソウルフルなメロディーが融合した作品。",
        link: "https://open.spotify.com/album/7fIqmc4GIaueaiAoDifAaA",
        songs: [
          Song(
            title: "満月の夜なら",
            duration: "3:35",
            link: "https://open.spotify.com/track/0ujpwBqbPbGM1NJtXGeIhL",
          ),
          Song(
            title: "マリーゴールド",
            duration: "5:06",
            link: "https://open.spotify.com/track/5NqGfELjcdvRIUuhgZJ34W",
          ),
          Song(
            title: "ら、のはなし",
            duration: "3:01",
            link: "https://open.spotify.com/track/6SqsaRl5pKb2nPPKK1LtrT",
          ),
          Song(
            title: "二人だけの国",
            duration: "4:31",
            link: "https://open.spotify.com/track/4P0bcSyiDDV21tDlracN3w",
          ),
          Song(
            title: "プレゼント",
            duration: "4:17",
            link: "https://open.spotify.com/track/4P0bcSyiDDV21tDlracN3w",
          ),
          Song(
            title: "ひかりもの",
            duration: "3:49",
            link: "https://open.spotify.com/track/54waVepJBrUuee9DYr2N0M",
          ),
          Song(
            title: "恋をしたから",
            duration: "4:29",
            link: "https://open.spotify.com/track/3XWlRdbrUY7ThDfzaAGp1r",
          ),
          Song(
            title: "夢追いベンガル",
            duration: "4:41",
            link: "https://open.spotify.com/track/6P2uGRsui0PKf3X6UKAmp5",
          ),
          Song(
            title: "今夜このまま",
            duration: "3:58",
            link: "https://open.spotify.com/track/6Of87Sf8b20V1uj7VjeIvl",
          ),
          Song(
            title: "あした世界が終わるとしても",
            duration: "4:22",
            link: "https://open.spotify.com/track/3V3ORDW5cCr8LuGnWyUCMj",
          ),
          Song(
            title: "GOOD NIGHT BABY",
            duration: "5:30",
            link: "https://open.spotify.com/track/6heoGmwx2ncU23mJWdUzTY",
          ),
          Song(
            title: "from四階の角部屋",
            duration: "1:38",
            link: "https://open.spotify.com/track/5EY3lsGV89AY9jws3OmFwI",
          ),
        ],
      ),
      Music(
        name: "おいしいパスタがあると聞いて",
        artistName: "Aimyon",
        coverImage: "assets/aimyon_album3.png",
        description: "個性的なサウンドで新しい世界観を切り開いた一枚。",
        link: "https://open.spotify.com/album/4UcEHspatQwGvtfR6AVwZl",
        songs: [
          Song(
            title: "黄昏にバカ話をしたあの日を思い出す時を",
            duration: "3:42",
            link: "https://open.spotify.com/track/4RRjP54Ecly07sC663cJoJ",
          ),
          Song(
            title: "ハルノヒ",
            duration: "5:26",
            link: "https://open.spotify.com/track/54iU9jU2ASDVTTxNG5Bhp1",
          ),
          Song(
            title: "シガレット",
            duration: "3:29",
            link: "https://open.spotify.com/track/4S2RYdnIKbf627hme8tPcx",
          ),
          Song(
            title: "さよならの今日に",
            duration: "5:41",
            link: "https://open.spotify.com/track/2SSeYAen1xdTHbxHLA9iCj",
          ),
          Song(
            title: "朝陽",
            duration: "3:10",
            link: "https://open.spotify.com/track/31AzhiCp0Itl2vw5UKs2nn",
          ),
          Song(
            title: "裸の心",
            duration: "3:23",
            link: "https://open.spotify.com/track/2cTaSKEc8OZdF6Tpg2QQsS",
          ),
          Song(
            title: "マシマロ",
            duration: "4:56",
            link: "https://open.spotify.com/track/3XqQjV6YF41XxvN3YN6xJ1",
          ),
          Song(
            title: "空の青さを知る人よ",
            duration: "2:47",
            link: "https://open.spotify.com/track/6boEgSpYKnipXYFNXUNyYz",
          ),
          Song(
            title: "真夏の夜の匂いがする",
            duration: "5:04",
            link: "https://open.spotify.com/track/319KnlR2nH5rXprCqlyCtK",
          ),
          Song(
            title: "ポプリの葉",
            duration: "3:53",
            link: "https://open.spotify.com/track/6lULgKIekFPMqZDZBWFcaR",
          ),
          Song(
            title: "チカ",
            duration: "3:45",
            link: "https://open.spotify.com/track/5Bv3FuEENh7wSw1djKkPjC",
          ),
          Song(
            title: "そんな風に生きている",
            duration: "3:07",
            link: "https://open.spotify.com/track/5w3jPTXvG10fY0PpMXzliw",
          ),
        ],
      ),
      Music(
        name: "Falling into your eyes Record",
        artistName: "Aimyon",
        coverImage: "assets/aimyon_album4.jpg",
        description:
            "A record full of romantic ballads and electrifying beats.",
        link: "https://open.spotify.com/album/5KLZZ5X7b8eM8OXXUBYfgz",
        songs: [
          Song(
            title: "Futaba",
            duration: "4:37",
            link: "https://open.spotify.com/track/1orwxUzvNOgv02NwPORbS4",
          ),
          Song(
            title: "Super Girl",
            duration: "4:07",
            link: "https://open.spotify.com/track/1C6uVJG9FNtVSp46JjPpnu",
          ),
          Song(
            title: "Figure",
            duration: "3:27",
            link: "https://open.spotify.com/track/19qpmFLSJXgyeYohRFGf17",
          ),
          Song(
            title: "My First Love is Crying",
            duration: "3:59",
            link: "https://open.spotify.com/track/36ODMIkGfqEGKdqSnQr6ZP",
          ),
          Song(
            title: "Your Heart",
            duration: "3:13",
            link: "https://open.spotify.com/track/6iid9qtOzzDSp35j8WFNoh",
          ),
          Song(
            title: "3636",
            duration: "4:11",
            link: "https://open.spotify.com/track/2mHWjrN4rIL8vbWt0Od9Ux",
          ),
          Song(
            title: "Getting Stronger, but so blue",
            duration: "3:19",
            link: "https://open.spotify.com/track/0eojcffysQBv5qUnwBxJwH?si=22a69b75582d4a9c",
          ),
          Song(
            title: "On a Cherry Blossom Night",
            duration: "4:29",
            link: "https://open.spotify.com/track/0FoW1FFoarYpUggrNVhGUz?si=9e1921d4369c4e11",
          ),
          Song(
            title: "The Memory of Persona",
            duration: "3:20",
            link: "https://open.spotify.com/track/79wjyH8GhWosLYAlcBZWca?si=a4a92f0022c94e79",
          ),
          Song(
            title: "Into the land of Mystery",
            duration: "4:01",
            link: "https://open.spotify.com/track/0Hdp8qkgSCBTldSvIEgFLb?si=5084810b1d4d40b1",
          ),
          Song(
            title: "Heart",
            duration: "4:31",
            link: "https://open.spotify.com/artist/5kVZa4lFUmAQlBogl1fkd6?si=d6469c06e50c41b3",
          ),
          Song(
            title: "Interview",
            duration: "2:52",
            link: "https://open.spotify.com/track/5BWn5PRAZMrynehQkByaCU?si=91e64ec03a0b4cc5",
          ),
          Song(
            title: "Till I Know What Love is(I'm Never Gonna Die)",
            duration: "4:36",
            link: "https://open.spotify.com/track/0duHVljFYUGRddrIORrTsI?si=a04b65b2f2f447b7",
          ),
        ],
      ),
      Music(
        name: "Jealous of Cats",
        artistName: "Aimyon",
        coverImage: "assets/aimyon_album5.png",
        description: "A unique blend of pop and indie tunes.",
        link: "https://open.spotify.com/album/1DhGRLzRbKuEC02l4rwZTS",
        songs: [
          Song(
            title: "Show Me All You Got",
            duration: "2:15",
            link: "https://open.spotify.com/track/13TDUEbhZCHa2TU1s3sYES?si=bf895802700b4aef",
          ),
          Song(
            title: "Wish I could see you, but",
            duration: "5:14",
            link: "https://open.spotify.com/track/7iD0cJcVDe9d24TYA8lswy?si=1ab7e19a9fbd4d10",
          ),
          Song(
            title: "Lucky Color",
            duration: "3:38",
            link: "https://open.spotify.com/track/4yZPro5g0t4PMdryLpTBxA?si=7241072cd24b4f7a",
          ),
          Song(
            title: "Coffee Shop Poplar",
            duration: "4:18",
            link: "https://open.spotify.com/track/7mEmErhYYG4V1f6VLbnVdZ?si=e5a40b572eaa4e2f",
          ),
          Song(
            title: "Anone",
            duration: "6:49",
            link: "https://open.spotify.com/track/6HEEtazsx0YIt1Tk89eGde?si=c34af90c8b56446d",
          ),
          Song(
            title: "NOT OK",
            duration: "4:54",
            link: "https://open.spotify.com/track/0XMu10ttEUPGxem8PqluVW?si=5154d8876f434681",
          ),
          Song(
            title: "rhythm 64",
            duration: "4:28",
            link: "https://open.spotify.com/track/1uQntP29nhDbZvddqtOEVm?si=6f11b450952f45fc",
          ),
          Song(
            title: "Firely Tuesday",
            duration: "2:48",
            link: "https://open.spotify.com/track/1t20sP8vZ4Z4WqEHytQYqV?si=f0d7e59e82144c5e",
          ),
          Song(
            title: "Fake Me",
            duration: "3:02",
            link: "https://open.spotify.com/artist/5kVZa4lFUmAQlBogl1fkd6?si=0eb92cb4d5ed4e9f",
          ),
          Song(
            title: "I Don't Like Mornings",
            duration: "5:11",
            link: "https://open.spotify.com/track/7KeQxKdVA5oRTI6ytZSAGm?si=2d5baa2b5d7c4402",
          ),
          Song(
            title: "Zarame",
            duration: "4:42",
            link: "https://open.spotify.com/track/7cqEXLz2DX0EGYbex7kWsl?si=b252fad062e94c28",
          ),
          Song(
            title: "ai no hana",
            duration: "4:01",
            link: "https://open.spotify.com/track/0hK5XC4KD4dLqB2OPO6k2C?si=b23a6814b7b541be",
          ),
          Song(
            title: "Jealous of Cats",
            duration: "3:14",
            link: "https://open.spotify.com/track/6xFm2RFSZsNEeW2PG0WRGH?si=a2dc62a352164e20",
          ),
        ],
      ),
    ];
  }

  // Popular releases (singles) with individual Spotify links for each track.
  static List<Music> getPopularReleases() {
    return [
      Music(
        name: "マリーゴールド",
        artistName: "Aimyon",
        coverImage: "assets/single1.png",
        description: "Aimyon’s bright and captivating summer single.",
        link: "https://open.spotify.com/track/5NqGfELjcdvRIUuhgZJ34W?si=0e180824646d48b5", // Single's Spotify link
        songs: [
          Song(
            title: "マリーゴールド",
            duration: "5:06",
            link: "https://open.spotify.com/track/5NqGfELjcdvRIUuhgZJ34W?si=0e180824646d48b5",
          ),
        ],
      ),
      Music(
        name: "君はロックを聴かない",
        artistName: "Aimyon",
        coverImage: "assets/single2.png",
        description:
            "A reflective track contrasting raw energy and introspection.",
        link: "https://open.spotify.com/track/59eluCMn0XbOWqeWQ91FTM?si=5dc71b69da3b413d",
        songs: [
          Song(
            title: "君はロックを聴かない",
            duration: "4:06",
            link: "https://open.spotify.com/track/59eluCMn0XbOWqeWQ91FTM?si=5dc71b69da3b413d",
          ),
        ],
      ),
      Music(
        name: "裸の心",
        artistName: "Aimyon",
        coverImage: "assets/single3.png",
        description:
            "A heartfelt ballad showcasing Aimyon’s vocal range.",
        link: "https://open.spotify.com/track/2cTaSKEc8OZdF6Tpg2QQsS?si=96811c6e027349da",
        songs: [
          Song(
            title: "裸の心",
            duration: "4:56",
            link: "https://open.spotify.com/track/2cTaSKEc8OZdF6Tpg2QQsS?si=96811c6e027349da",
          ),
        ],
      ),
      Music(
        name: "ラッキーカラー",
        artistName: "Aimyon",
        coverImage: "assets/single4.png",
        description: "An uplifting tune to brighten your day.",
        link: "https://open.spotify.com/track/4yZPro5g0t4PMdryLpTBxA?si=1bafd8eeb176406b",
        songs: [
          Song(
            title: "ラッキーカラー",
            duration: "3:38",
            link: "https://open.spotify.com/track/4yZPro5g0t4PMdryLpTBxA?si=1bafd8eeb176406b",
          ),
        ],
      ),
    ];
  }

  // Artist data remains mostly unchanged.
  static Music getArtist() {
    return Music(
      name: "あいみょん",
      artistName: "あいみょん",
      coverImage: "assets/aimyon_profile.jpg",
      description: "A popular Japanese singer-songwriter known for heartfelt lyrics.",
      link: null,
      songs: null,
    );
  }
}