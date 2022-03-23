import 'package:flutter/material.dart';
import 'package:tugas_minggu5/models/detail_gambar.dart';
import 'package:tugas_minggu5/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item itemArgs = ModalRoute.of(context)!.settings.arguments as item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailGambar(itemArgs.image)));
        },
        child: Row(
          children: [
            Expanded(
              child: Hero(
                tag: 'imageHero',
                child: Image.asset(itemArgs.image),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  itemArgs.name + ' with ' + itemArgs.price.toString(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Image.asset('assets/images/gula.jpg'),
        ),
      ),
    );
  }
}
