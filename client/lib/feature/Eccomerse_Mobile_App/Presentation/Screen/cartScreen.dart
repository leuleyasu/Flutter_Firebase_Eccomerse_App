
import 'package:client/feature/Eccomerse_Mobile_App/Presentation/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Widgets/CartproductWidget.dart';
import '../Widgets/customappbar.dart';
import '../bloc/Cart/bloc/cart_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  static const String routename = "/cart";

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routename),
        builder: (ctx) => const CartScreen());
  }

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
late CartBloc bloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Customappbar(title: 'Cart'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Go To Checkout",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartLoading) {
              return SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );

            }
             if(state is CartLoaded){
              return Padding(

              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Add one item for free delivery"),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text("Add More Items"))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: state.cart.product.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: CartProduct(
                              product: state.cart.productqauntity(state.cart.product).keys.elementAt(index),
                              quantity:state.cart.productqauntity(state.cart.product).values.elementAt(index)
                            ),
                          );
                        }),
                    Column(
                      children: [
                        Row(
                            children:  [
                              const Text("Subtotal fee"),
                              Text('\$${state.cart.subtotalString}'),
                            ],
                          ),
                        const Divider(
                          thickness: 2,
                        ),
                         Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Row(
                            children: [
                              Text("Delivery fee"),
                              Text("\$${state.cart.deiveryfeeString}"),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration:
                                  const BoxDecoration(color: Colors.black),
                              child:  Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Total",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text("\$${state.cart.totalString}",
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              );

            }
            return const Text("Something went wrong");
          },
        ),
      ),
    );
  }
}
