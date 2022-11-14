<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

### PopUpMenuTitle
A Flutter package to provide a popup menu title with custom widget.

## Usage
import 'package:flutter/material.dart';
import 'package:popupmenutitle/popupmenutitle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopUpMenuTitle Example'),
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [
              const PopUpMenuTitle(
                  child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('Title'),
              )),
              PopupMenuItem(
                child: const Text('Item 1'),
                onTap: () {
                  setState(() {
                    selectedText = 'Item 1';
                  });
                },
              ),
              PopupMenuItem(
                child: const Text('Item 2'),
                onTap: () {
                  setState(() {
                    selectedText = 'Item 2';
                  });
                },
              ),
              PopupMenuItem(
                child: const Text('Item 3'),
                onTap: () {
                  setState(() {
                    selectedText = 'Item 3';
                  });
                },
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(selectedText),
      ),
    );
  }
}
