import 'package:counterwithprovider/providers/counter_provides.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Current Counter Value'),

            const SizedBox(height: 10),

            Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
                return Text(
                  '${counterProvider.counter}',
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),

            const SizedBox(height: 30),

            const Text('Reset Counter'),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false).reset();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}