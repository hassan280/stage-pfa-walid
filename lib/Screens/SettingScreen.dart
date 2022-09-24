import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/SettingCard.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        
        children: [
          SettingCard(
            title: "Sans Bouchons",
            action: "Activé",
            color: Colors.green,
          ),
          SettingCard(
            title: "Sans Tickets",
            action: "Désactivé",
            color: Colors.redAccent,
          ),
          SettingCard(
            title: "Sans Les Deux",
            action: "Activé",
            color: Colors.green,
          ),
          Center(
            child: Container(
              width: 150,
              padding: EdgeInsets.all(9),
              child: TextButton(
                child: Text(
                  "Save",
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    elevation: 2,
                    backgroundColor: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
