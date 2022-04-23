import 'package:flutter/material.dart';

void alertaConfirm(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Confirmacion'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('¿Estas seguro?'),
              /*FlutterLogo(
                size: 120,
              ),
              ElevatedButton(onPressed: null, child: Text('Aceptar')),*/
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar')),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Aceptar')),
          ],
        );
      });
}
