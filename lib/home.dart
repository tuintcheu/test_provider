import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Boutton_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Boutton_provider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: (Text('provider test')),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${counter.count}',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counter.increment();
                    // context.read<Boutton_provider>().increment();
                  },
                  child: Icon(Icons.add),
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(CircleBorder()),
                      minimumSize: WidgetStateProperty.all(Size(80, 80)),
                      backgroundColor: WidgetStateProperty.all(Colors.green)),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: Icon(Icons.remove),
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(CircleBorder()),
                      minimumSize: WidgetStateProperty.all(Size(80, 80)),
                      backgroundColor: WidgetStateProperty.all(Colors.red)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
