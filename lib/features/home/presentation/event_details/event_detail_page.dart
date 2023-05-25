import 'package:auto_route/auto_route.dart';
import 'package:event_project/features/home/presentation/event_details/about_section.dart';
import 'package:event_project/features/home/presentation/event_details/event_section.dart';
import 'package:event_project/features/home/presentation/event_details/sliver_image_app_bar.dart';
import 'package:event_project/features/home/presentation/event_details/speaker_section.dart';
import 'package:event_project/repository/model/event.dart';
import 'package:event_project/widgets/positioned_button_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EventDetailPage extends StatelessWidget {
  const EventDetailPage({Key? key, required this.event}) : super(key: key);
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverImageAppBar(event:event),
                EventSection(event: event),
                SpeakerSection(event: event),
                AboutSection(event: event),
              ],
            ),
            PositionedButton(text: 'Book', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
