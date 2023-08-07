// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  String title;

   Customappbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
             title:  Text(title),
        actions: [
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.favorite_outline))

        ],



    );
  }

}