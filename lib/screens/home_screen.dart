import 'package:contador_gabriel/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value = 0;

  String teto = 'assets/kasane_teto_0.png';
  String bagget = 'assets/bagget_0.png';

  void seleccionarImagen() {
    if (value == 0) {
      teto = 'assets/kasane_teto_0.png';
      bagget = 'assets/bagget_0.png';
    } else if (value >= 1 && value < 5) {
      teto = 'assets/kasane_teto_1.png';
      bagget = 'assets/bagget_1.png';
    } else if (value >= 5 && value < 10) {
      teto = 'assets/kasane_teto_2.png';
      bagget = 'assets/bagget_2.png';
    } else if (value >= 10 && value < 100) {
      teto = 'assets/kasane_teto_3.png';
      bagget = 'assets/bagget_3.png';
    } else if (value >= 100) {
      teto = 'assets/kasane_teto_4.png';
      bagget = 'assets/bagget_4.png';
    }
  }

  void sumar() {
    value++;
    seleccionarImagen();
    setState(() {});
  }

  void restar(BuildContext context) {
    if (value == 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: ColorsUtils.grey,
            title: const Text("¡Baguettes agotados! \n 🥖",style: TextStyle(
                          fontFamily: 'PressStart2P',
                          color: ColorsUtils.purple,
                          fontSize: 20,
                        )),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "¡Ya te llevaste todos mis baguettes! ¿Ahora qué quieres, mis taladros?",
                  style:  TextStyle(
                          fontFamily: 'PressStart2P',
                          color: ColorsUtils.purple,
                          fontSize: 11,
                        )
                ),
                Image(image: AssetImage('assets/sad_teto.png')),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
      return;
    } else {
      value--;
    }
    seleccionarImagen();
    setState(() {});
  }

  void reset() {
    value = 0;
    seleccionarImagen();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.red,
      appBar: AppBar(
        title: const Text(
          "Contador de Baggets",
          style: TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: 11.5,
            color: ColorsUtils.grey,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 50),
            child: Image(image: AssetImage(teto)),
          ),
        ],
        backgroundColor: ColorsUtils.purple,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_home.png'),
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
                  color: Color.fromRGBO(236, 167, 189, 0.5),

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: 100,
                  horizontal: 55,
                ),
                child: Center(
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        "$value",
                        style: const TextStyle(
                          fontFamily: 'PressStart2P',
                          color: ColorsUtils.purple,
                          fontSize: 50,
                        ),
                      ),
                      const Spacer(),
                      Image(image: AssetImage(bagget)),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              sumar();
                            },
                            label: const Text('Suma'),
                            icon: const Icon(Icons.add),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorsUtils.purple,
                              foregroundColor: ColorsUtils.grey,
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              restar(context);
                            },
                            label: const Text('Resta'),
                            icon: const Icon(Icons.remove),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorsUtils.purple,
                              foregroundColor: ColorsUtils.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      OutlinedButton.icon(
                        onPressed: () {
                          reset();
                        },
                        label: const Text("Reset"),
                        icon: const Icon(Icons.restart_alt),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: ColorsUtils.purple,
                          side: const BorderSide(color: ColorsUtils.purple),
                        ),
                      ),
                      const Spacer(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/info');
        },
        backgroundColor: ColorsUtils.purple,
        foregroundColor: ColorsUtils.pink,
        child: const Icon(Icons.info),
      ),
    );
  }
}
