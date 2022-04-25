import 'package:burgerdelivery/router/app_routes.dart';
import 'package:burgerdelivery/theme/appTheme.dart';
import 'package:flutter/material.dart';
import '../router/app_routes.dart';

class CardScreen extends StatelessWidget {
  final double alturaCard;
  final int redireccion;
  final String textoBoton;
  final String imageUrl;
  const CardScreen(
      {Key? key,
      required this.imageUrl,
      required this.textoBoton,
      required this.alturaCard,
      required this.redireccion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOpciones = AppRouteSesion.menuOptions;

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 25,
      shadowColor: Colors.amberAccent,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            /*FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              //width: double.infinity,
              width: 360,
              height: 100,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 1000),
            ),*/
            Image(
              image: NetworkImage(imageUrl),
              width: 360,
              height: alturaCard,
              fit: BoxFit.cover,
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, menuOpciones[redireccion].route);
                  },
                  child: Text(
                    textoBoton,
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Widget Campos(String label, String placeholder, bool disponible) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Container(
          alignment: AlignmentDirectional.bottomStart,
          child: Text(
            label,
            style: const TextStyle(
              color: AppTheme.fourth,
            ),
          ),
        ),
        TextFormField(
          enabled: disponible,
          autofocus: false,
          initialValue: '',
          textCapitalization: TextCapitalization.words,
          onChanged: (value) {
            print(value);
          },
          validator: (value) {
            if (value == null) return 'Required';
            return value.length < 3 ? 'minimo 3 letras ' : null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: placeholder,
            //labelText: label,
            //helperText: 'Solamente Letras',
            //helperTextcounterText: '3 caracteres',
            //prefixIcon: const Icon(Icons.verified_user_outlined),
            //suffixIcon: const Icon(Icons.person),
            //icon: Icon(Icons.admin_panel_settings_outlined, size: 30),
          ),
        )
      ],
    ),
  );
}

Widget botones(String textoBtn) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(color: Colors.orange),
      child: TextButton(
          child: Text(textoBtn, style: const TextStyle(color: Colors.white)),
          onPressed: () {}),
    ),
  );
}

class CardProducto extends StatelessWidget {
  final double alturaCard;
  final String textoBoton;
  final String imageUrl;
  const CardProducto(
      {Key? key,
      required this.imageUrl,
      required this.textoBoton,
      required this.alturaCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 25,
      shadowColor: Colors.amberAccent,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Image(
              image: AssetImage(imageUrl),
              width: 360,
              height: alturaCard,
              fit: BoxFit.cover,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  textoBoton,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 185, 41, 41),
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
