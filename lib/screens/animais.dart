import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Animais extends StatefulWidget {

  String animal;
  Animais({this.animal});

  @override
  _AnimaisState createState() => _AnimaisState();
}

class _AnimaisState extends State<Animais> {

  String url = "http://52.67.253.92/gatos.php";
  List data;
  String bar;

  Future<String> lerDados() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "aplication/json"});
    setState(() {
      var resBody = json.decode(res.body);
      data = resBody[widget.animal];
    });
    return "Sucess !!!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(bar),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body:
      ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            var urlImagem = data[index]['imageUrl'];
            var titulo = data[index]['title'];
            var descricao = data[index]['description'];
//            debugPrint('$index');
            return Container(
              decoration: BoxDecoration(
                border: new Border(
                    bottom: new BorderSide(
                      width: 1.0,color: Colors.black12,
                    )
                ),
              ),
              child: new ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Text(
                      '1302',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),

                leading: GestureDetector(
                  onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          _dialogBuilder(context, data, index)),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    child: Image.network(
                      urlImagem,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  titulo,
                  style: TextStyle(
                    color: Colors.blue[500],
                    fontSize: 16.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: new Text(
                  descricao,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black87,
                  ),
                ),
              ),
            );
          }),
    );
  }

  var jj;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.animal == 'gatos') {
      url = "http://52.67.253.92/gatos.php";
      bar = "Lista de Gatos";
    }
    if(widget.animal == 'caes') {
      url = "http://52.67.253.92/caes.php";
      bar = "Lista de Cães";
    }
    if(widget.animal == 'teste') {
      url = "http://52.67.253.92/teste.php";
      bar = "<Lista de Gatos>";
    }
    this.lerDados();
  }

Widget _dialogBuilder(context, provider, position) {
  return SimpleDialog(
    contentPadding: EdgeInsets.all(0.0),
    children: [
      Image.network(
        provider[position]['imageUrl'],
        fit: BoxFit.fill,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 15.0, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 8.0,
            ),
            Text(
                provider[position]['title'],
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )
            ),
            SizedBox(height: 6.0),
            Text(
              provider[position]['description'],
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerRight,
              child: Wrap(
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Sou Alergico',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  RaisedButton(
                    elevation: 3.0,
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Vou Adotar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

}

