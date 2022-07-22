import 'package:flutter/material.dart';
import '../constants/constants.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('images/forest_cloudy.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.near_me,
                        size: 40.0,
                      ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.local_activity,
                        size: 40.0,
                      ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '18°',
                      style: aTemperatureTextStyle,
                    ),
                    Text(
                      '☀',
                      style: aConditionTextStyle,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  "",
                  textAlign: TextAlign.right,
                  style: aMessageTextStyle,
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
