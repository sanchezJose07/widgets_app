import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: Text('Hola mundo'),
      action: SnackBarAction(label: "OK!", onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialogo(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Estas seguro?'),
        content: Text(
          'Do voluptate mollit exercitation qui. Incididunt cupidatat commodo magna culpa aliqua deserunt consectetur est nostrud sunt occaecat nostrud. Adipisicing dolor duis aliquip id culpa aliqua. Est eu tempor ut anim ex ad est quis aliqua aute id eiusmod adipisicing. Mollit occaecat amet cupidatat occaecat.',
        ),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars y dialogos')),

      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    children: [
                      Text(
                        'Ut voluptate dolore velit consequat culpa. Irure ullamco eu id occaecat nostrud aliqua labore do ex ex proident duis. Mollit eiusmod cupidatat officia magna officia Lorem aute consequat. Esse occaecat sint ipsum reprehenderit ullamco esse officia dolore Lorem aliqua aute tempor do. Nostrud aliquip laborum exercitation ipsum duis. Fugiat cillum et aute in veniam anim culpa commodo amet.',
                      ),
                    ],
                  );
                },
                child: Text("Licencias usadas"),
              ),
              FilledButton.tonal(
                onPressed: () => openDialogo(context),
                child: Text("Mostrar dialogo"),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
