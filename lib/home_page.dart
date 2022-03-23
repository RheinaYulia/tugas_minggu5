import 'package:flutter/material.dart';
import 'package:tugas_minggu5/models/item.dart';

class HomePage extends StatelessWidget {
  final List<item> items = [
    const item(name: 'Sugar', price: 5000, image: 'assets/images/gula.jpg'),
    const item(name: 'Salt', price: 2000, image: 'assets/images/garam.jpg'),
    const item(name: 'Soap', price: 2500, image: 'assets/images/sabun.jpg'),
    const item(name: 'Rice', price: 15000, image: 'assets/images/beras.jpg'),
    const item(name: 'Shampoo', price: 30000, image: 'assets/images/sampo.jpg')
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.name,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
              );
            }),
      ),
    );
  }
}
