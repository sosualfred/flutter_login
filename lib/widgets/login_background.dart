import 'package:flutter/material.dart';

class LoginPageBackground extends StatelessWidget {
  const LoginPageBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/fishing.jpg",
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
