import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingCard extends StatelessWidget {
  final String title;
  Color color;
  String action;
   SettingCard(
      {Key? key,
      required this.color,
      required this.title,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 3,
      margin: EdgeInsets.only(top: 15, left: 9, right: 9, bottom: 9),
      child: Column(
        children: [
          ListTile(
              leading: Text(title),
              trailing: Container(
                  width: 70,
                  height: 26,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.amberAccent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.black12,
                          width: 2.0,
                        ),
                      ),
                    ),
                    initialValue: "100",
                  ))),
          ListTile(
            leading: Text("Alarme Après"),
            trailing: Container(
              width: 90,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                // color: Colors.green,
              ),
              padding: EdgeInsets.all(9),
              child: TextButton(
                child: Text(
                  action,
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    elevation: 2,
                    backgroundColor: color),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
