import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, right: 16.67),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/icons/i_search.png',
                width: 20,
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
