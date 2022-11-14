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
