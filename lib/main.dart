import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:providerclasses/providers/cart.dart';
import 'package:providerclasses/providers/user.dart';
import 'package:providerclasses/screens/home.dart';

void main() {
  return runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CartProvider()),
        ChangeNotifierProvider.value(value: UserProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Test App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomeScreen(title: 'Home Screem'),
      ),
    );
  }
}
