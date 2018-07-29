import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              RaisedButton(
                  child: Text('Next', style: TextStyle(fontSize: 18.0, color: Colors.white),),
                  color: Colors.red[600],
                  shape: StadiumBorder(),
                  onPressed: () {Navigator.of(context).pushNamed('/Pagina2');}
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                  child: Text('Back', style: TextStyle(fontSize: 18.0, color: Colors.white),),
                  color: Colors.blue[600],
                  shape: StadiumBorder(),
                  onPressed: () { Navigator.of(context).pop(); }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
