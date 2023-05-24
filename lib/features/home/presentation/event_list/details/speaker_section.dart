import 'package:event_project/features/home/presentation/event_list/model/event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpeakerSection extends StatelessWidget {
  const SpeakerSection({Key? key, required this.event}) : super(key: key);
  final Event event;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Speaker',
              style: GoogleFonts.poppins(
                  textStyle: Theme
                      .of(context)
                      .textTheme
                      .titleMedium
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(event.speakers.length, (index) =>
                    IntrinsicWidth(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Image.asset(event.speakers[index].profileImage),
                        ),
                        title: Text(
                          event.speakers[index].name,
                          style: GoogleFonts.poppins(
                              textStyle: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyLarge
                          ),
                        ),
                        subtitle:Text(
                          event.speakers[index].profession,
                          style: GoogleFonts.poppins(
                              textStyle: Theme
                                  .of(context)
                                  .textTheme
                                  .bodySmall
                          ),
                        ),
                      ),
                    ),),
              ],
            ),
          ),
          const SizedBox(height: 16,)
        ],
      ),
    );
  }
}
