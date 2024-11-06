import 'package:youtube/Data/Models/Channel.dart';
import 'package:youtube/Data/Models/Data.dart';

class Video {
  final int id;
  final String title;
  final String description;
  final Channel channel;
  final String thumbnailUrl;
  final String viewsCount;
  final DateTime publishedDate;
  final String likesCount;
  final Duration duration;
  final String videoUrl;

  Video({
    required this.id,
    required this.title,
    required this.description,
    required this.channel,
    required this.thumbnailUrl,
    required this.viewsCount,
    required this.publishedDate,
    required this.likesCount,
    required this.duration,
    required this.videoUrl,
  });
}

List<Video> getAllVideos() 
{
  var list = videos.toList();
  list.shuffle();
  return list;
}

Video getVideoById(int id)
{
  return videos.where((v) => v.id == id).first;
}

List<Video> getVideosRecommandations(int id)
{
  var list = videos.where((v) => v.id != id).toList();
  list.shuffle();
  list.getRange(0, 4);

  return list;
}
