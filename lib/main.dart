import 'package:flutter/material.dart';
import 'package:yes_no/config/theme/app_theme.dart';
import 'package:yes_no/presentation/screen/chat_screen/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: AppTheme(selectedColor: 0).theme(),
        debugShowCheckedModeBanner: false,
        home: const ChatScreen());
  }
}
