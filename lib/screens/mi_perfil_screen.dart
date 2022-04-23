import 'dart:ui';

import 'package:flutter/material.dart';

import '../elements/elementos.dart';
import '../theme/appTheme.dart';

class MiPerfilScreen extends StatelessWidget {
  const MiPerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (4 / 100),
              decoration: const BoxDecoration(color: AppTheme.fourth),
              child: const Center(
                  child: Text(
                'Mi Perfil',
                style: TextStyle(fontSize: 22, color: AppTheme.sixted),
              ))),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                  width: double.maxFinite,

                  //height: MediaQuery.of(context).size.height * (75 / 100),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Campos('Nombres', 'Jonathan Ezequiel', false),
                      const SizedBox(
                        height: 25,
                      ),
                      Campos('Apellidos', 'Benito Pineda', false),
                      const SizedBox(
                        height: 25,
                      ),
                      Campos('Correo Electronico', 'correo@gmail.com', false),
                      const SizedBox(
                        height: 25,
                      ),
                      Campos('Numero de telefono', '7777-7777', false),
                      const SizedBox(
                        height: 25,
                      ),
                      Campos('Contraseña', '******', false),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(color: AppTheme.eigth),
                              child: TextButton(
                                  child: const Text(
                                    'Atras',
                                    style: TextStyle(
                                        fontSize: 20, color: AppTheme.sevenly),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(color: AppTheme.fourth),
                              child: TextButton(
                                  child: const Text(
                                    'Modificar',
                                    style: TextStyle(
                                        fontSize: 20, color: AppTheme.sevenly),
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
