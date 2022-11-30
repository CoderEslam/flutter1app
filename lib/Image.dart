import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/myfirebasechat-90c34.appspot.com/o/ChatPhotos%2Fehric5JNzjWTrU6KKeL9ATvckKa2%2FiBo4svcdTheMo5o72h5cSw1i8sn2%2F1669579852942.null?alt=media&token=3e8c0ad3-329c-4504-8df9-5ed39cba2fd5')),
            Text("Hello Eslam Ghazy"),
          ],
        ), // => AssetImage(url)
      ),
    );
  }
}
