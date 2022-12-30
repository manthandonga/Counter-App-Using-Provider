import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/providers/counter_provider.dart';
import 'package:providerapp/views/screens/home_page.dart';

void main() async {
  runApp(
    ChangeNotifierProvider<CounterProvider>(
      create: (context) => CounterProvider(),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => home_page(),
          },
        );
      },
    ),
  );
}
