import 'package:flutter/material.dart';
import 'bottom_button.dart';


class LikedProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIKED PROFILES',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              child: Center(
                child: Text('BODY'),
              ),

          ),
          ),
          Expanded(
            flex: 1,
            child: BottomButton(
              myOnTap: () {
                // Navigator.pushNamed(context, '/first');
              },
              buttonTitle: 'Back to ALL-USERS',
            ),
          ),
        ],
      ),
    );
  }
}
