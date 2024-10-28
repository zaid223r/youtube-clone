import 'package:youtube/Data/Models/Channel.dart';

class Video {
  final int id;
  final String title;
  final String description;
  final Channel channel;
  final String thumbnailUrl;
  final int viewsCount;
  final DateTime publishedDate;
  final int likesCount;
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
