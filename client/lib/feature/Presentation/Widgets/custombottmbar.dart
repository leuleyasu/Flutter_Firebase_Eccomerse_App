import 'package:flutter/material.dart';

class CustomBottombar extends StatelessWidget {

  const CustomBottombar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return     BottomAppBar(
      color: Colors.black,
      height: 50,
      child: Container(
      decoration: const BoxDecoration(
        color: Colors.black
      ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context, '');
        }, icon: const Icon(Icons.home_outlined, color: Colors.amber,))
       , IconButton(onPressed: (){ Navigator.pushNamed(context, "/cart");}, icon: Icon(Icons.shopping_cart,color: Colors.amber,))
        ,IconButton(onPressed: (){}, icon: const Icon(Icons.person_outlined,color: Colors.amber,))
      ],
    ),
      ),
    );
  }
}