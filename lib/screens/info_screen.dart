import 'package:contador_gabriel/utils/colors_utils.dart';
import 'package:contador_gabriel/widgets/screen_background_and_sticker_widget.dart';
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
      body: const ScreenBackgroundAndStrickers(
        background: 'assets/background_info.png',
        containerChild: Center(
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
                "+58-4165963628",
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
        opacity: 0.8,
      ),
    );
  }
}
