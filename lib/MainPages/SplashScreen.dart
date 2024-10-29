import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube/MainPages/HomePage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

   @override
  void initState() {  //https://stackoverflow.com/questions/69173218/video-player-for-splash-screen-in-flutter
    super.initState();
    Future.delayed(const Duration(milliseconds: 2900), () {
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: const Color.fromARGB(255, 8, 9, 10),
        height: double.infinity,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/splashscreen.json', //https://lottiefiles.com/free-animation/youtube-splash-screen-animation-8wjVJQIQHQ
                width: 500,
                height: 370,
                fit: BoxFit.fill,
              )
            ],
          ),
        ),
      )),
    );
  }
}
