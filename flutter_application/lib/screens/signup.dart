import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screens/dashboard.dart';
import 'package:flutter_application/screens/signin.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome Onboard!",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "Let’s help you to get vaccinated",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          //text fields
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => DashBoard()));
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.shortestSide * 0.8,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.rectangle),
              child: Text(
                "Register",
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ),
          RichText(
              text: TextSpan(
                  text: "Already have an account ? Sign In",
                  style: Theme.of(context).textTheme.bodyText2,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => SignIN()));
                    }))
        ],
      ),
    );
  }
}
