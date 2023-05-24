import 'package:event_project/extensions/event_extension.dart';
import 'package:event_project/features/home/presentation/event_list/details/about_section.dart';
import 'package:event_project/features/home/presentation/event_list/details/event_section.dart';
import 'package:event_project/features/home/presentation/event_list/details/sliver_image_app_bar.dart';
import 'package:event_project/features/home/presentation/event_list/details/speaker_section.dart';
import 'package:event_project/features/home/presentation/event_list/model/event.dart';
import 'package:event_project/features/home/presentation/event_list/model/mock.dart';
import 'package:event_project/widgets/positioned_button_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.vertical,
            //     child: SizedBox(
            //       height: MediaQuery.of(context).size.height,
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [

            //
            //
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            PositionedButton(text: 'Book', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
