import 'package:flutter/material.dart';

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
                    'Item 1',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print('Clicado 1');
                    Navigator.pop(context);
                  },
                ),
                new Divider(color: Colors.white, indent: 0.0, height: 1.0,),
                ListTile(
                  title: Text(
                    'Item 2',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print('Clicado 2');
                    Navigator.pop(context);
                  },
                ),
                new Divider(color: Colors.white, indent: 0.0, height: 1.0,),
                ListTile(
                  title: Text(
                    'Item 3',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print('Clicado 3');
                    Navigator.pop(context);
                  },
                ),
                new Divider(color: Colors.white, indent: 0.0, height: 1.0,),
                ListTile(
                  title: Text(
                    'Item 4',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print('Clicado 4');
                    Navigator.pop(context);
                  },
                ),
                new Divider(color: Colors.white, indent: 0.0, height: 1.0,),
                ListTile(
                  title: Text(
                    'Item 5',
                    style: TextStyle(
                      fontFamily: 'Libre',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  leading: Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print('Clicado 5');
                    Navigator.pop(context);
                  },
                ),
                new Divider(color: Colors.white, indent: 0.0, height: 1.0,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
