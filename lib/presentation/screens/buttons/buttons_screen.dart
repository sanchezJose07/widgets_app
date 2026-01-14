import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons Screen")),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            ElevatedButton(
              onPressed: null,
              child: const Text('Elevated Disabled'),
            ),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_outlined),
              label: Text('Elevated Button'),
            ),

            FilledButton(onPressed: () {}, child: Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              label: Text('Filled Icon'),
              icon: Icon(Icons.five_mp_rounded),
            ),

            OutlinedButton(onPressed: () {}, child: Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Outline Icon'),
              icon: Icon(Icons.punch_clock_sharp),
            ),

            TextButton(onPressed: () {}, child: Text('Text')),
            TextButton.icon(
              onPressed: () {},
              label: Text('Text Icon'),
              icon: Icon(Icons.zoom_out_map_rounded),
            ),

            CustomButton(),

            IconButton(onPressed: () {}, icon: Icon(Icons.join_full_outlined)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_task_sharp),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
            child: Text("Hola mundo", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
