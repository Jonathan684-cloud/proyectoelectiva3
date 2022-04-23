import 'package:burgerdelivery/elements/elementos.dart';
import 'package:flutter/material.dart';
import 'package:burgerdelivery/screens/screen_export.dart';

import '../router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOpciones = AppRouteSesion.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(color: Colors.orange),
          child: ListView.separated(
              itemBuilder: (context, int index) => Padding(
                    padding: const EdgeInsets.only(left: 40, top: 50),
                    child: ListTile(
                      leading: Icon(
                        menuOpciones[index].icon,
                        color: Colors.blue,
                      ),
                      title: Text(
                        menuOpciones[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, menuOpciones[index].route);
                      },
                    ),
                  ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: menuOpciones.length),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.black87),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 180,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 148, 103, 35)),
            ),
            Container(
              height: 36,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.orange),
              child: const Center(
                child: Text(
                  'Seleccione una opcion',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                //padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  CardScreen(
                    imageUrl:
                        'https://64.media.tumblr.com/d345875548a3877c51e737cdea793208/555230ab112d94f4-df/s1280x1920/b18fda5484f5930be93153c639a13b0d592dea5c.jpg',
                    textoBoton: 'Promocion diaria',
                    alturaCard: 90,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CardScreen(
                      imageUrl:
                          'https://c8.alamy.com/compes/2dh8w8k/panorama-de-la-hamburguesa-y-la-cerveza-hamburguesa-con-carne-de-res-queso-cebolla-tomate-y-ensalada-verde-con-encurtidos-y-patatas-fritas-una-cara-2dh8w8k.jpg',
                      textoBoton: 'Combo Familiar',
                      alturaCard: 90),
                  SizedBox(
                    height: 40,
                  ),
                  CardScreen(
                      imageUrl:
                          'https://64.media.tumblr.com/d345875548a3877c51e737cdea793208/555230ab112d94f4-df/s1280x1920/b18fda5484f5930be93153c639a13b0d592dea5c.jpg',
                      textoBoton: 'Combos Kids',
                      alturaCard: 90),
                  SizedBox(
                    height: 40,
                  ),
                  CardScreen(
                      imageUrl:
                          'https://media-cdn.tripadvisor.com/media/photo-s/1a/fe/55/0d/custom.jpg',
                      textoBoton: 'Crea tu Hamburguesa',
                      alturaCard: 90)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
child: ListView(                  
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  children: const [
                    CardScreen(imageUrl: 'https://m.media-amazon.com/images/I/61nf30yb6qL._AC_SX425_.jpg',)
                  ],
                ),
 */