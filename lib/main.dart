import 'package:event_project/features/home/presentation/event_list/details/event_detail_page.dart';
import 'package:event_project/features/home/presentation/event_list/event_page.dart';
import 'package:event_project/features/home/presentation/event_list/model/mock.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:EventDetailPage(event: events[1])
    );
  }
}
