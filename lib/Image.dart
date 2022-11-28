import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/d.jpg')), // => NetworkImage(url)
      ),
    );
  }
}
