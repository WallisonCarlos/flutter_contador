import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Text(
                  "Pessoas 0",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   FlatButton(
                       onPressed: () {},
                       child: Text(
                         "+1",
                         style: TextStyle(
                             color: Colors.white,
                             fontStyle: FontStyle.italic,
                             fontSize: 40.0)
                       )
                   ),
                   FlatButton(
                       onPressed: () {},
                       child: Text(
                           "-1",
                           style: TextStyle(
                               color: Colors.white,
                               fontStyle: FontStyle.italic,
                               fontSize: 40.0)
                       )
                   ),
                 ],
               ),
               Text(
                 "Pode entrar",
                 style: TextStyle(
                     color: Colors.white,
                     fontStyle: FontStyle.italic,
                     fontSize: 30.0
                 ),
               )
            ],
    
          ),
      
));
