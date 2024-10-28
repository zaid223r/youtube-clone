import 'package:youtube/Data/Models/Channel.dart';
import 'package:youtube/Data/Models/Video.dart';

List<Video> videos = [
  Video(
      id: 1,
      title:
          "Kadim Al Saher ... Zidini Eashqan - Video Clip | كاظم الساهر - زيدينى عشقا - فيديو كليب",
      description: """من اروع اغانى الفنان  العراقى كاظم الساهر

اسمع كل أغاني كاظم الساهر على ديزر
https://www.deezer.com/us/artist/99305
""",
      channel: channels[0],
      thumbnailUrl: "images/thumbnails/Zidini.png",
      viewsCount: "23M",
      publishedDate: DateTime(2012, 10, 15),
      likesCount: "100K",
      duration: const Duration(minutes: 7, seconds: 36),
      videoUrl: "ACXtwSqQOxw"),
];

List<Channel> channels = [
  Channel(
      id: 1,
      name: "Rotana",
      description:
          """Established in 1987, Rotana started off as a record company and, at the dawn of the new millennium, grew to become the leading producer and distributor of 
Arabic music and Arabic films, with the highest revenue generating mobile content corporation in the entire Middle East, North Africa, the Gulf and Europe.
""",
      profileImageUrl: "images/channelsProfileImages/Rotana.jpg",
      bannerImageUrl: "images/channelsbanner/Rotana.jpg",
      subscribersCount: "24.4M",
      videosCount: "9K",
      createdDate: DateTime(2012, 1, 10)),
];
