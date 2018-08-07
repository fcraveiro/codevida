import 'package:flutter/material.dart';
import 'noticias.dart';
import 'animais.dart';
import 'camera.dart';

class Lateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: Container(
        color: Color(0xff00796b),
        child: ListView(
          padding: EdgeInsets.only(top: 0.0),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage('assets/drawer.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: null,
              padding: EdgeInsets.all(0.0),
              margin: EdgeInsets.all(0.0),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 3.0,
                  ),
                  new Text(
                    'CODEVIDA',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  new Text(
                    'Coordenadoria de Defesa da Vida Animal',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Ver os Cães',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(
                      'assets/dog.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (context) {
                          return new Animais(animal: 'caes');
                        },
                      ),
                    );
                  },
                ),
                new Divider(
                  color: Colors.white,
                  indent: 0.0,
                  height: 1.0,
                ),
                ListTile(
                  title: Text(
                    'Ver os Gatos',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(
                      'assets/cat.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (context) {
                          return new Animais(animal: 'gatos');
                        },
                      ),
                    );
                  },
                ),
                new Divider(
                  color: Colors.white,
                  indent: 0.0,
                  height: 1.0,
                ),
                ListTile(
                  title: Text(
                    'Doar',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(
                      'assets/doar.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    print('Clicado 3');
                    Navigator.pop(context);
                  },
                ),
                new Divider(
                  color: Colors.white,
                  indent: 0.0,
                  height: 1.0,
                ),
                ListTile(
                  title: Text(
                    'Noticias',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(
                      'assets/news.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (context) {
                          return new Noticias();
                        },
                      ),
                    );
                  },
                ),
                new Divider(
                  color: Colors.white,
                  indent: 0.0,
                  height: 1.0,
                ),
                ListTile(
                  title: Text(
                    'Denúncia',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(
                      'assets/news.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (context) {
                          return new Camera();
                        },
                      ),
                    );
                  },
                ),
                new Divider(
                  color: Colors.white,
                  indent: 0.0,
                  height: 1.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
