import 'package:flutter/material.dart';

import '../resources/menu.dart';
import '../theme/appTheme.dart';

class ComboFamiliarScreen extends StatelessWidget {
  const ComboFamiliarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Combos Familiares'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * (4 / 100),
                decoration: const BoxDecoration(color: AppTheme.fourth),
                child: const Center(
                    child: Text(
                  'Opciones de combos a escoger',
                  style: TextStyle(fontSize: 22, color: AppTheme.sixted),
                ))),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(felicidad.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 25,
                          shadowColor: Colors.amberAccent,
                          child: SingleChildScrollView(
                            child: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [
                                Image(
                                  image: AssetImage(felicidad[index]['img']),
                                  width: 360,
                                  height: 210,
                                  fit: BoxFit.cover,
                                ),
                                GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                        felicidad[index]['nombre'] +
                                            ' ' +
                                            felicidad[index]['precio'],
                                        style: TextStyle(
                                            color: AppTheme.second,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)))
                              ],
                            ),
                          )),
                    );
                  }),
                ))
          ]),
        ));
  }
}
