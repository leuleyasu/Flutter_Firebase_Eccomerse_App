// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
class ProductModel extends Equatable {
final String id;
 final String name ;
  final String category;
  final String imageUrl;
  final double price;
final bool isReccomended;
final bool ispopular;
  const ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isReccomended,
    required this.ispopular,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name,category,
  imageUrl,price,isReccomended,ispopular];
   static List<ProductModel> products = [
    const ProductModel(
      id: '1',
      name: 'Soft Drink #1',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1598614187854-26a60e982dc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/dO9A6mhSZZY
      price: 2.99,
      isReccomended: true,
      ispopular: true
    ),
    const ProductModel(
      id: '2',
      name: 'Soft Drink #2',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1610873167013-2dd675d30ef4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=488&q=80', //https://unsplash.com/photos/Viy_8zHEznk
      price: 2.99,
      isReccomended: true,
      ispopular: false
    ),
    const ProductModel(
      id: '3',
      name: 'Soft Drink #3',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1603833797131-3c0a18fcb6b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/5LIInaqRp5s
      price: 2.99,
     isReccomended: true,
      ispopular: true
    ),
    const ProductModel(
      id: '4',
      name: 'Smoothies #1',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1526424382096-74a93e105682?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/kcYXj4tBtes
      price: 2.99,
      isReccomended: false,

      ispopular: false

    ),
    const ProductModel(
      id: '5',
      name: 'Smoothies #2',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      price: 2.99,
       isReccomended: true,
      ispopular: true

    ),
    const ProductModel(
      id: '6',
      name: 'Soft Drink #1',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1598614187854-26a60e982dc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/dO9A6mhSZZY
      price: 2.99,
     isReccomended: false,
      ispopular: true

    ),
    const ProductModel(
      id: '7',
      name: 'Soft Drink #2',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1610873167013-2dd675d30ef4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=488&q=80', //https://unsplash.com/photos/Viy_8zHEznk
      price: 2.99,
      isReccomended: false,
      ispopular: true

    ),
    const ProductModel(
      id: '8',
      name: 'Soft Drink #3',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1603833797131-3c0a18fcb6b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/5LIInaqRp5s
      price: 2.99,
      isReccomended: true,
      ispopular: true
    ),
    const ProductModel(
      id: '9',
      name: 'Smoothies #1',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1526424382096-74a93e105682?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/kcYXj4tBtes
      price: 2.99,
      isReccomended: true,
      ispopular: true

    ),
    const ProductModel(
      id: '10',
      name: 'Smoothies #2',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      price: 2.99,
      isReccomended: true,
      ispopular: false

    ),
    const ProductModel(
      id: '11',
      name: 'Soft Drink #1',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1598614187854-26a60e982dc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/dO9A6mhSZZY
      price: 2.99,
      isReccomended: true,
      ispopular: false

    ),
    const ProductModel(
      id: '12',
      name: 'Soft Drink #2',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1610873167013-2dd675d30ef4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=488&q=80', //https://unsplash.com/photos/Viy_8zHEznk
      price: 2.99,
      isReccomended: true,
      ispopular: false

    ),
    const ProductModel(
      id: '13',
      name: 'Soft Drink #3',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1603833797131-3c0a18fcb6b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/5LIInaqRp5s
      price: 2.99,
     isReccomended: true,
      ispopular: true

    ),
    const ProductModel(
      id: '14',
      name: 'Smoothies #2',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1552&q=80', //https://unsplash.com/photos/CrK843Pl9a4
      price: 2.99,
   isReccomended: true,
      ispopular: true

    ),
  ];



  static ProductModel fromSnapshot(DocumentSnapshot snap) {
    return ProductModel(
      id: snap['id'] as String,
      name: snap['name'] as String,
      category: snap['category'] as String,
      imageUrl: snap['imageUrl'] as String,
      price: snap['price'] as double,
      isReccomended: snap['isReccomended'] as bool,
      ispopular: snap['ispopular'] as bool,
    );
  }


}