import 'package:event_project/features/home/presentation/event_list/model/event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key, required this.event}) : super(key: key);
  final Event event;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: GoogleFonts.poppins(
                  textStyle: Theme
                      .of(context)
                      .textTheme
                      .titleMedium
              ),
            ),
            Text(
              event.description! ,
              style: GoogleFonts.poppins(
                  textStyle: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium,
              ),
            ),
            const SizedBox(height: 64,)
          ],

        ),
      ),
    );
  }
}
