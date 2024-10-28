class Channel {
  final int id;
  final String name;
  final String description;
  final String profileImageUrl;
  final String bannerImageUrl;
  final String subscribersCount;
  final String videosCount;
  final DateTime createdDate;

  Channel({
    required this.id,
    required this.name,
    required this.description,
    required this.profileImageUrl,
    required this.bannerImageUrl,
    required this.subscribersCount,
    required this.videosCount,
    required this.createdDate,
  });
}
