import 'package:flutter/material.dart';
import 'animais.dart';

class Doar extends StatelessWidget {

  final int largura = 400;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        margin: EdgeInsets.only(top: 5.0),
        color: Colors.green[100],
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
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
                margin: EdgeInsets.only(top: 0.0),
                width: largura / 3 - 15,
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
            Container(
              margin: EdgeInsets.only(top: 0.0),
              width: largura / 3 - 15,
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
                margin: EdgeInsets.only(top: 0.0),
                width: largura / 3 - 15,
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
      ),
    );
  }
}
