import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:providerclasses/providers/cart.dart';
import 'package:providerclasses/providers/user.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<CartProvider, UserProvider>(
      builder: (context, cartvalue, uservalue, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Cart Screen')),
          body: Center(
            child: Text(
              '${uservalue.name},You have ${cartvalue.quantity} products in your cart',
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'removeFromCart',
                onPressed: cartvalue.removeFromCart,
                tooltip: 'Remove from Cart',
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                heroTag: 'addToCart',
                onPressed: cartvalue.addCart,
                tooltip: 'Add to Cart',
                child: const Icon(Icons.add),
              )
            ],
          ),
        );
      },
    );
  }
}
