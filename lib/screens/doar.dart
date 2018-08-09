import 'package:flutter/material.dart';
import 'animais.dart';

class Doar extends StatelessWidget {
  final int largura = 400;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
// Cães
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (context) {
                    return new Animais(animal: 'caes');
                  },
                ),
              );
            },
            child: Container(
              width: largura / 4 + 15,
              height: 37.0,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: StadiumBorder(
                  side: BorderSide(
                      color: Colors.green[800],
                      width: 0.7,
                      style: BorderStyle.solid),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(4.0),
                        width: 40.0,
                        height: 35.0,
                        child: Image.asset(
                          'assets/dog.png',
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Cães',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
// Doar
          Container(
            width: largura / 4 + 15,
            height: 37.0,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: StadiumBorder(
                side: BorderSide(
                    color: Colors.green[800],
                    width: 0.7,
                    style: BorderStyle.solid),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(4.0),
                      width: 40.0,
                      height: 35.0,
                      child: Image.asset(
                        'assets/doar.png',
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Doar',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
// Gatos
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (context) {
                    return new Animais(animal: 'gatos');
                  },
                ),
              );
            },
            child: Container(
              width: largura / 4 + 15,
              height: 37.0,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: StadiumBorder(
                  side: BorderSide(
                      color: Colors.green[800],
                      width: 0.7,
                      style: BorderStyle.solid),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(4.0),
                        width: 40.0,
                        height: 35.0,
                        child: Image.asset(
                          'assets/cat.png',
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Gatos',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
