import 'package:flutter/material.dart';
import 'package:flutter1app/ExpandedW.dart';
import 'package:flutter1app/IdCard.dart';
import 'package:flutter1app/IdCardful.dart';
import 'package:flutter1app/ListOfData.dart';
import 'package:flutter1app/pages/Home.dart';
import 'package:flutter1app/pages/mainWorldTime.dart';

void main() {
  runApp(const ButtonsApp());
}

class ButtonsApp extends StatelessWidget {
  const ButtonsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      title: 'Button Types',
      home: const Scaffold(
        body: ButtonTypesExample(),
      ),
    );
  }
}

class ButtonTypesExample extends StatelessWidget {
  const ButtonTypesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: const <Widget>[
          Spacer(),
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                goToPage(context);
              },
              child: const Text('Flex')),

          // Use an ElevatedButton with specific style to implement the
          // 'Filled' type.
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: () {
              goToPageIdCard(context);
            },
            child: const Text('Id Card'),
          ),

          // Use an ElevatedButton with specific style to implement the
          // 'Filled Tonal' type.
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor:
                  Theme.of(context).colorScheme.onSecondaryContainer,
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: () => {goToPageList(context)},
            child: const Text('List Data'),
          ),

          OutlinedButton(
              onPressed: () => {goToPageHome(context)},
              child: const Text('World Time')),

          TextButton(onPressed: onPressed, child: const Text('Text')),
        ],
      ),
    );
  }
}

void goToPage(BuildContext context) => {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ExpandedW()))
    };

void goToPageIdCard(BuildContext context) => {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const IdCardful()))
    };

void goToPageList(BuildContext context) => {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ListOfData()))
    };

void goToPageHome(BuildContext context) => {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const WorldTime()))
    };
