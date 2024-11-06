import 'package:flutter/material.dart';
import 'package:youtube/Data/Models/Video.dart';
import 'package:youtube/DetaildPages/VideoDetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tab = "home";
  var videos = getAllVideos();

  // ignore: non_constant_identifier_names
  Widget BottomButton(String name, IconData icon) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        setState(() {
          tab = name.toLowerCase();
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 9.2),
          )
        ],
      ),
    ));
  }

  // ignore: non_constant_identifier_names
  Widget VideoRecord(Video video) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => VideoDetails(videoId: video.id)));
        },
        style: TextButton.styleFrom(shape: const RoundedRectangleBorder()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(video.thumbnailUrl),
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(video.channel.profileImageUrl),
                ),
                title: Text(
                  video.title,
                  overflow: TextOverflow
                      .ellipsis, //https://stackoverflow.com/questions/75649613/flutter-text-overflow-new-line
                  maxLines: 2,
                  style: const TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 77),
              child: Text(
                "${video.channel.name} . ${video.viewsCount} views",
                style:
                    const TextStyle(color: Color.fromARGB(85, 165, 161, 161)),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 9, 10),
        body: SafeArea(
            child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 13,
                    ),
                    Image(
                      image: AssetImage("images/youtube.png"),
                      width: 40,
                    ),
                    Text("YouTube",
                        style: TextStyle(fontSize: 24, color: Colors.white))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.cast_rounded,
                      color: Colors.white,
                      size: 26,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.white,
                      size: 26,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                      size: 26,
                    ),
                    SizedBox(
                      width: 16,
                    )
                  ],
                )
              ],
            ),
            tab == "home"
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        for (var video in videos) VideoRecord(video),
                      ],
                    ),
                  )
                : const SingleChildScrollView()
          ],
        )),
        bottomNavigationBar: SizedBox(
          height: 63,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomButton(
                  "Home", tab == "home" ? Icons.house : Icons.house_outlined),
              BottomButton("Shorts", Icons.video_library_outlined),
              const Expanded(
                  child: Icon(
                Icons.add_circle_outline_sharp,
                color: Colors.white,
                size: 45,
              )),
              BottomButton("Subscriptions", Icons.video_collection_outlined),
              BottomButton(
                  "You",
                  tab == "you"
                      ? Icons.person_pin_rounded
                      : Icons.person_pin_outlined)
            ],
          ),
        ));
  }
}
