import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Progress Indicators")),
        body: const _ProgressView());
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        SizedBox(height: 30),
        Text("Cicular progress indicator"),
        SizedBox(height: 10),
        CircularProgressIndicator(
            strokeWidth: 2, backgroundColor: Colors.black45),
        SizedBox(height: 20),
        Text("Progress indicator controlado"),
        SizedBox(height: 10),
        _ControledProgressIndicator(),
      ]),
    );
  }
}

class _ControledProgressIndicator extends StatelessWidget {
  const _ControledProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: Stream.periodic(const Duration(milliseconds: 200), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 1),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0.0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircularProgressIndicator(
                  strokeWidth: 2, backgroundColor: Colors.black12),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LinearProgressIndicator(
                    value: double.parse(progressValue.toString())),
              )
            ]),
          );
        });
  }
}
