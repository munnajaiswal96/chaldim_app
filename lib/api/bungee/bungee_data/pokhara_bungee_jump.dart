import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../activitiespages/bungee_page.dart';

class PokharaBungeeJump extends StatefulWidget {
  const PokharaBungeeJump({super.key});

  @override
  State<PokharaBungeeJump> createState() => _PokharaBungeeJumpState();
}

class _PokharaBungeeJumpState extends State<PokharaBungeeJump> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(
        onPressed: () {
          // Navigator.pop(
          //   context,
          //   MaterialPageRoute(builder: (context) => BungeeScreen()),
          // );
        },
        icon: Icon(LineAwesomeIcons.angle_left_solid),
      ),
        title: Center(
          child: Text(
            'Pokhara Bungee Jump',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            width: 48, // Same width as the leading IconButton to balance the title
          ),
        ],
      ),
      body: Container(),
    );
  }
}

