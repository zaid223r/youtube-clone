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
  Video(
      id: 2,
      title: """Ace of Base - Happy Nation (Official Music Video)""",
      description:
          """Taken from the albums Happy Nation (1992) & The Sign (1993). Expand for links and lyrics.
▶️  Stream / Download: https://ace-of-base.ffm.to/the-sign.OYD
⏭ See more music videos here: https://ace-of-base.ffm.to/music-vide...
⏭ Follow Ace of Base: https://ace-of-base.ffm.to/follow
Tiktok:   / officialaceofbase  
Instagram:   / officialaceofbase  
Facebook:   / aceofbase  

🎼 Song Credits
Music by: Jonas Berggren
Lyrics by: Jonas Berggren & Ulf Ekberg
Produced by: Jonas Berggren & Ulf Ekberg

🎤  Lyrics
Laudate omnes gentes laudate
Magnificat en secula
Et anima mea laudate
Magnificat en secuala

Happy nation living in a happy nation
Where the people understand
And dream of the perfect man
A situation leading to sweet salvation
For the people for the good
For mankind brotherhood

We're traveling in time

Ideas by man and only that will last
And over time we've learned from the past
That no man's fit to rule the world alone
A man will die but not his ideas

Happy nation living in a happy nation
Where the people understand
And dream of the perfect man
A situation leading to sweet salvation
For the people for the good
For mankind brotherhood

We're traveling in time
Traveling in time

Tell them we've gone too far
Tell them we've gone too far
Happy nation come through
And I will dance with you

Happy nation
Tell them we've gone too far
Happy nation come through
And I will dance with you

Happy nation
Tell them we've gone too far
Come through
And I will dance with you

Happy nation living in a happy nation
Where the people understand
And dream of the perfect man
A situation leading to sweet salvation
For the people for the good
For mankind brotherhood

Happy nation
Happy nation
Happy nation
Happy nation

© 1993 Mega Records, a division of Playground Music Scandinavia AB

#AceOfBase #happynation #musicvideo #90s #90spop #ulfekberg #jonasberggren #jennyberggren #malinberggren #tiktok #tiktokviral""",
      channel: channels[1],
      thumbnailUrl: "images/thumbnails/happynation.png",
      viewsCount: "167M",
      publishedDate: DateTime(2010, 10, 17),
      likesCount: "1.4M",
      duration: const Duration(minutes: 3, seconds: 31),
      videoUrl: "HWjCStB6k4o")
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
  Channel(
      id: 2,
      name: """Ace of Base""",
      description:
          """Welcome to the official Ace of Base YouTube channel, with all the videos, plus behind scenes and other extra material!""",
      profileImageUrl: "images/channelsProfileImages/aceofbase.jpg",
      bannerImageUrl: "images/channelsbanner/aceofbase.jpg",
      subscribersCount: "1.1M",
      videosCount: "102",
      createdDate: DateTime(2006, 3, 14))
];
