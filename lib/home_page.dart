import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'selection_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color.fromARGB(255, 254, 75, 75),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/tic.gif'),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText("Hi !",
                          speed: const Duration(milliseconds: 300)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText('Are You Ready to Play ?',
                          speed: const Duration(milliseconds: 400)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: AvatarGlow(
                  endRadius: 70.0,
                  child: Material(
                    // Replace this child with your own
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      radius: 40.0,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SelectionPage(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/letgo.png',
                          fit: BoxFit.cover,
                          height: 60.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
