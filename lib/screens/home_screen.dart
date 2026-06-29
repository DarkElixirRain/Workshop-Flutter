import 'package:counterwithprovider/providers/counter_provides.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with Provider'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Value'),
            Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
                return Text(
                  '${counterProvider.counter}',
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false).increment();
                  },
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false).decrement();
                  },
                  child: const Text('Decrement'),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
