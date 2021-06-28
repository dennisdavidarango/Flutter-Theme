import 'package:flutter/material.dart';
import 'package:theming_app/theme_state/presentation/login/login_screen.dart';
import 'package:theming_app/theme_state/presentation/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () { Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => LoginScreen()
      ));},
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: deliveryGradients)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: DeliveryColors.white,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('(-_-)'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'DeliveryApp',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold,
                     color: DeliveryColors.white
                    ),
              )
            ]),
      ),
    );
  }
}
