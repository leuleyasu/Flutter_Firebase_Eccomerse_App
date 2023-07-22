import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  String  title;
   SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 220),
      child: Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    );
  }
}