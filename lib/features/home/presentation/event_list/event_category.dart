
import 'package:event_project/repository/model/mock.dart';
import 'package:flutter/material.dart';

class EventCategory extends StatelessWidget {
  const EventCategory({Key? key, required this.activeCategory, required this.onCategorySelected}) : super(key: key);

  final String activeCategory;
  final Function(String category)onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return EventCategoryItem(
              text: categories[index],
              isActive: categories[index] == activeCategory,
              isFirst: index==0,
              isLast: index == categories.length - 1,
              onTap:()=>onCategorySelected(categories[index]),
            );
          }),
    );
  }
}

class EventCategoryItem extends StatelessWidget {
  const EventCategoryItem(
      {Key? key,
        required this.text,
        required this.isActive,
        required this.isLast,
        required this.isFirst, required this.onTap})
      : super(key: key);
  final String text;
  final bool isActive;
  final bool isLast;
  final bool isFirst;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin:isLast?const EdgeInsets.only(right: 166):EdgeInsets.only(left: isFirst?16:8),
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: isActive ?const Color(0xFF214D42) : Colors.transparent,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: ()=>onTap(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: isActive ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
