import 'package:flutter/material.dart';
import 'package:flutter_application/signup.dart';

class GetStrarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Register for COVID Vaccine",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "Register yourself for Indian Goverment’s COVID VACCINE",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SignUP()));
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.shortestSide * 0.8,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.rectangle),
              child: Text(
                "Get Started",
                style: Theme.of(context).textTheme.button,
              ),
            ),
          )
        ],
      ),
    );
  }
}
