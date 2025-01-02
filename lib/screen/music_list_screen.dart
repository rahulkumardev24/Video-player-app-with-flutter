import 'package:flutter/material.dart';
import 'package:video_nest_player/screen/player_screen.dart';

class MusicListScreen extends StatefulWidget {
  const MusicListScreen({super.key});

  @override
  State<MusicListScreen> createState() => _MusicListScreenState();
}

class _MusicListScreenState extends State<MusicListScreen> {
  /// here we create list of Video
  List<String> videoList = [
    "assets/videos/Samjhawan-Full-ideo.mp4",
    "assets/videos/Dil-Raghav's-Version-Ek-Villain.mp4" ,
    "assets/videos/Tumse-Bhi-Zyada-Full-Video-Tadap.mp4" ,
    "assets/videos/Mehabooba-Video-Song-(Hindi)-KGF-Chapter-2.mp4" ,
    "assets/videos/ANIMAL-Pehle-Bhi-Main.mp4",
    "assets/videos/Samjhawan-Full-ideo.mp4",
    "assets/videos/Dil-Raghav's-Version-Ek-Villain.mp4" ,
    "assets/videos/Tumse-Bhi-Zyada-Full-Video-Tadap.mp4" ,
    "assets/videos/Mehabooba-Video-Song-(Hindi)-KGF-Chapter-2.mp4" ,
    "assets/videos/ANIMAL-Pehle-Bhi-Main.mp4"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Video List",
          style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontFamily: "primary",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,

        /// here we navigate to Player Screen
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PlayerScreen(
                          currentSong: 0,
                          videoPath: videoList[0],
                          musicList: videoList,
                        )));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/music.png",
              color: Colors.white,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.white,
          )
        ],
        shadowColor: Colors.black,
        elevation: 11,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  const Text(
                    "Items : ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "primary",
                        fontSize: 25),
                  ),
                  Text(
                    "${videoList.length}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "primary",
                        fontSize: 25),
                  ),
                ],
              ),
            ),

            /// here we show List of Music
            Expanded(
              child: ListView.builder(
                  itemCount: videoList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset("assets/images/play-button.png"),
                      title: Text(
                        maxLines: 1,
                        videoList[index]
                            .split('/')
                            .last
                            .split('.')
                            .first
                            .toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: "primary",
                            fontWeight: FontWeight.bold),
                      ),

                      /// when click on song then navigate to player screen and song is playing
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlayerScreen(
                                      currentSong: index,
                                      videoPath: videoList[index],
                                      musicList: videoList,
                                    )));
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

/// Music List Screen => DONE
