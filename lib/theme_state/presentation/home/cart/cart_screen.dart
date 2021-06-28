import 'package:flutter/material.dart';
import 'package:theming_app/theme_state/presentation/theme.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: _EmptyCart(),
    );
  }
}

class _EmptyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No hay productos',
          textAlign: TextAlign.center,
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Go Shopping',
            style: TextStyle(color: DeliveryColors.white),
          ),
        )
      ],
    );
  }
}
