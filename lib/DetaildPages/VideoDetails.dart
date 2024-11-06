import 'package:flutter/material.dart';
import 'package:youtube/Data/Models/Video.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:readmore/readmore.dart';

class VideoDetails extends StatefulWidget {
  final int videoId;
  const VideoDetails({super.key, required this.videoId});

  @override
  State<VideoDetails> createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    var video = getVideoById(widget.videoId);

    // Initialize the YouTube player controller with the video URL
    _controller = YoutubePlayerController(
      initialVideoId: video.videoUrl,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    //chatgpt
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var video = getVideoById(widget.videoId);
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
            SizedBox(
                width: double.infinity,
                height: 250,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.red,
                )),
            const SizedBox(
              height: 8,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      video.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${video.viewsCount} views",
                      style: const TextStyle(
                          color: Color.fromARGB(106, 156, 156, 156),
                          fontSize: 12),
                    ),
                    ReadMoreText(
                      //https://pub.dev/packages/readmore
                      video.description,
                      trimMode: TrimMode.Length,
                      trimLength: 0,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                      colorClickableText: Colors.pink,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle:
                          const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(video.channel.profileImageUrl)),
                      title: Row(
                        children: [
                          Text(
                            video.channel.name,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            video.channel.subscribersCount,
                            style: const TextStyle(
                                color: Color.fromARGB(106, 156, 156, 156)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    
                  ],
                )),
          ],
        )));
  }
}
