import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../assets.dart';
import '../data/theme/colors.dart';

class ForgottenScreen extends StatefulWidget {
  const ForgottenScreen({Key? key}) : super(key: key);

  @override
  State<ForgottenScreen> createState() => _ForgottenScreenState();
}

class _ForgottenScreenState extends State<ForgottenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage(Assets.blend),
            ),
          ),
          Text('data'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(25),
              child: Center(
                child: Text(
                  'Send',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaSoft',
                      fontSize: 18),
                ),
              ),
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
