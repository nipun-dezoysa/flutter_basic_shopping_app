import 'package:flutter/material.dart';
import 'package:flutter_basic_shopping_app/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];

          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            title: Text(
              cartItem['title'].toString(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            subtitle: Text('Size: ${cartItem['size']}'),
          );
        },
      ),
    );
  }
}
