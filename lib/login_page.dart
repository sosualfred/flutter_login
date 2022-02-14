import 'package:flutter/material.dart';
import 'package:login_assignment/widgets/login_background.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LoginPageBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BottomCardWidget(
                child: ListView(
                  padding: EdgeInsets.only(top: 20),
                  children: [
                    SizedBox(height: 20),
                    Image.asset("assets/images/logo.png", height: 70),
                    SizedBox(height: 20),
                    Text(
                      "Share your travel experiences and find trusted recs from your friends!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    SecondaryButton(
                      onTap: () {
                        Navigator.pushNamed(context, "/about");
                      },
                      text: "Log in with phone number",
                    ),
                    PrimaryButton(
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      text: "Log in with Facebook",
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text("Sign up"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: child);
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1.5,
        ),
      ),
      child: Text(text),
    );
  }
}
