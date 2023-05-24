import 'package:event_project/features/home/presentation/event_list/event_category.dart';
import 'package:event_project/features/home/presentation/event_list/event_list.dart';
import 'package:event_project/features/home/presentation/event_list/search_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(child: FlutterLogo()),
        ),
        title: Text(
          'Mujjafar Momin',
          style: GoogleFonts.poppins(
            textStyle:Theme.of(context).textTheme.titleLarge
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_rounded))
        ],
      ),
    body:  const Column(
      children: [
        SearchBox(),
        SizedBox(height: 8,),
        EventCategory(activeCategory: 'All'),
        SizedBox(height: 8,),
        Expanded(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: EventList(),
        ))
      ],
    ),
    );
  }
}
