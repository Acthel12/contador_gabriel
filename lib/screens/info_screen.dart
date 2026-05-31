import 'package:contador_gabriel/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.red,
      appBar: AppBar(
        title: const Text(
          "Info",
          style: TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: 11.5,
            color: ColorsUtils.grey,
          ),
        ),
        backgroundColor: ColorsUtils.purple,
        foregroundColor: ColorsUtils.grey,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_info.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(236, 167, 189, 0.8),

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: 100,
                  horizontal: 55,
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorsUtils.pink,
                        radius: 50,
                        backgroundImage: AssetImage('assets/avatar.jpg'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Gabriel Carneiro",
                        style: TextStyle(
                          fontFamily: 'PressStart2P',
                          color: ColorsUtils.purple,
                          fontSize: 11.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "gecgpro12@gmail.com",
                        style: TextStyle(
                          fontFamily: 'PressStart2P',
                          color: ColorsUtils.purple,
                          fontSize: 8,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "+58 4165963628",
                        style: TextStyle(
                          fontFamily: 'PressStart2P',
                          color: ColorsUtils.purple,
                          fontSize: 8,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "github/Acthel12",
                        style: TextStyle(
                          fontFamily: 'PressStart2P',
                          color: ColorsUtils.purple,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: 50,
                left: 0,
                child: Image(
                  image: AssetImage('assets/sticker_1.png'),
                  height: 100,
                  width: 100,
                ),
              ),
              const Positioned(
                top: 50,
                right: 0,
                child: Image(
                  image: AssetImage('assets/sticker_2.png'),
                  height: 100,
                  width: 100,
                ),
              ),
              const Positioned(
                bottom: 50,
                right: 0,
                child: Image(
                  image: AssetImage('assets/sticker_3.png'),
                  height: 100,
                  width: 100,
                ),
              ),
              const Positioned(
                bottom: 50,
                left: 0,
                child: Image(
                  image: AssetImage('assets/sticker_4.png'),
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
