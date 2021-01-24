import 'package:flutter/material.dart';

class City extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Санкт-Петербург'),
      ),
      body: Center(
        child: Text('City'),
      ),
    );
  }
}
