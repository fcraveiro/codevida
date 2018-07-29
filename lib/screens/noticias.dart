import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Noticias extends StatefulWidget {
  String animal;
  Noticias({this.animal});

  @override
  _NoticiasState createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
  List data;
  String bar;

  Future<String> lerDados() async {
    var res = await http.get(Uri.encodeFull('http://52.67.253.92/noticias.php'),
        headers: {"Accept": "aplication/json"});
    setState(() {
      var resBody = json.decode(res.body);
      data = resBody['noticias'];
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
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            var urlImagem = data[index]['imageUrl'];
            var titulo = data[index]['titulo'];
            var descricao = data[index]['texto'];
            debugPrint('$index');
            return Container(
              decoration: BoxDecoration(
                border: new Border(
                    bottom: new BorderSide(
                  width: 1.0,
                  color: Colors.black12,
                )),
              ),
              child: new ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
                leading: GestureDetector(
                  child: Container(
                    width: 85.0,
                    height: 85.0,
                    child: Image.network(
                      urlImagem,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  titulo,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bar = "Todas as Noticias";
    this.lerDados();
  }
}
