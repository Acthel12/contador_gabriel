import 'package:flutter/material.dart';

class ScreenBackgroundAndStrickers extends StatelessWidget {
  const ScreenBackgroundAndStrickers({
    super.key,
    required this.background,
    required this.containerChild,
    required this.opacity,
  });

  final double opacity;
  final String background;
  final Widget containerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(background),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration:  BoxDecoration(
                color: Color.fromRGBO(236, 167, 189, opacity),

                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 55),
              child: containerChild,
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
    );
  }
}
