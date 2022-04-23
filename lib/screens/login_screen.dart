import 'package:flutter/material.dart';

import '../elements/elementos.dart';
import '../theme/appTheme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burger Delivery'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (15 / 100),
              decoration: const BoxDecoration(color: AppTheme.fourth),
              child: const Center(
                  child: Image(
                      image: AssetImage(
                'logoo.png',
              )))),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * (75 / 100),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Campos('Correo Electronico', 'correo@gmail.com', true),
                      const SizedBox(
                        height: 40,
                      ),
                      Campos('Contraseña', '******', true),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              child: const Text(
                                'Olvidaste tu contraseña',
                                style: TextStyle(color: Colors.orange),
                              ),
                              onPressed: () {}),
                          TextButton(
                              child: const Text('Registrate',
                                  style: TextStyle(color: Colors.orange)),
                              onPressed: () {}),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      botones('Iniciar Sesion')
                    ],
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
