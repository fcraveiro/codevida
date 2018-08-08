import 'package:flutter/material.dart';

class Denuncia extends StatelessWidget {

  final int largura = 400;

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: largura / 2 - 25,
              height: 70.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/Camera');
                },
                elevation: 5.0,
                color: Colors.teal[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                )),
                child: Image.asset(
                  'assets/denuncia.png',
                  color: Colors.white,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: largura / 2 - 25,
          height: 70.0,
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/Camera');
            },
            elevation: 5.0,
            color: Colors.teal[800],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            )),
            child: Image.asset(
              'assets/localizacao.png',
              color: Colors.white,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
