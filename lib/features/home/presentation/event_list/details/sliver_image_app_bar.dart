import 'package:event_project/features/home/presentation/event_list/model/event.dart';
import 'package:flutter/material.dart';


class SliverImageAppBar extends StatelessWidget {
  const SliverImageAppBar({Key? key, required this.event}) : super(key: key);
  final Event event;


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading:  IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios),
      ),
      expandedHeight: MediaQuery.of(context).size.height*0.3,
      flexibleSpace: FlexibleSpaceBar(
        background:  Image.network(
          event.image,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
        ),
      ),
    );
  }
}
