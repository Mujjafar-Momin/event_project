import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
          children: [
      Expanded(
      child: DecoratedBox(
      decoration: BoxDecoration(
          color:const Color(0x0F000000),
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: TextFormField(

    style: GoogleFonts.poppins(
    textStyle:Theme.of(context).textTheme.titleLarge),
    textAlignVertical: TextAlignVertical.center,
    decoration: InputDecoration(
    prefixIcon: const Icon(Icons.search,size: 20,),
    border: InputBorder.none,
    hintText:'Search by event here',
    hintStyle: GoogleFonts.poppins(
    textStyle: Theme.of(context).textTheme.titleSmall,
      color: Colors.black26
    )
    ),
    ),
    ),
    ) ,
      IconButton(onPressed: (){}, icon:const Icon(Icons.send))
    ],
    )
    ,
    );
  }
}
