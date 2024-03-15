import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottonsScreen extends StatelessWidget {
  static const String name = "bottons_screen";
  const BottonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: const _BottonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _BottonsView extends StatelessWidget {
  const _BottonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            ElevatedButton(onPressed: null, child: Text("Elevated Disabled")),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: Text('elevated Btn'),
            ),
            FilledButton(onPressed: () {}, child: const Text("filled Btn")),
            FilledButton.icon(
                onPressed: () {},
                label: const Text("Filled Icon"),
                icon: Icon(Icons.access_alarm)),
            OutlinedButton(onPressed: () {}, child: const Text("Outline")),
            OutlinedButton.icon(
                onPressed: () {},
                label: const Text("Freeze icon"),
                icon: Icon(Icons.ac_unit_outlined)),
            TextButton(onPressed: () {}, child: const Text("Text button")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.account_box_outlined),
                label: const Text('Text button icon')),
            // TODO: custom button
            const CustomButtom(),

            IconButton(
                onPressed: () {}, icon: Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.app_registration_rounded),
              style:  ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: MaterialStatePropertyAll(Colors.white)
              ),
            )
          ],
        ),
      ),
    );
  }
}


class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color:colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("hola mundo", style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}