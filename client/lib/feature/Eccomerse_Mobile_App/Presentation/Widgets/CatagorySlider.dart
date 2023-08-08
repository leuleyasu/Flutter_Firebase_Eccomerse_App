
import 'package:flutter/material.dart';

import '../../Data/Categorymodel.dart';
import '../../Data/ProductModel.dart';

class CategoryProductSlider extends StatelessWidget {
  final CategoryModel? category;
  final ProductModel? product;
   const CategoryProductSlider({
    Key? key,
     this.category,
       this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()

      {
        if(product==null){

        Navigator.pushNamed(context, '/catalog',
        arguments: category);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network  (product==null? category!.imageUrl:product!.imageUrl  , fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const  BoxDecoration(

                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                     product==null? category!.name:product!.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
