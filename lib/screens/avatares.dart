import 'package:flutter/material.dart';


class Avatares extends StatelessWidget {
  final List dados;
  final int qtde;

  Avatares({
    this.dados,
    this.qtde,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: qtde,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(top: 5.0),
            margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.0),
            height: 110.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment(0.0, 0.0),
                  children: <Widget>[

                    CircleAvatar(
                      backgroundColor: Colors.green[800],
                      radius: 44.0,
                    ),

                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 42.0,
                    ),

                    GestureDetector(
                        onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _dialogBuilder(context, dados, index)),



//                        var campinho = dados[index]['imageUrl'];
//                        print("'clicado $index = $campinho \n");
//                        Text('$campinho');

                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          dados[index]['imageUrl'],
                          scale: 0.2,
                        ),
                        radius: 40.0,
                      ),
                    ),

                    new Stack(
//                      alignment: Alignment(-1.0, 1.0),
                      alignment: Alignment(0.0, 1.0),
                      children: <Widget>[
                        Container(
                          height: 95.0,
                          width: 80.0,
//                          color: Colors.red,
                          padding: EdgeInsets.all(0.0),
                        ),
                        Card(
                          margin: EdgeInsets.all(0.0),
                          elevation: 2.0,
                          shape: StadiumBorder(
                            side: BorderSide(color: Color(0xff1de9b6), width: 1.0, style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 4.0, right: 3.0, top: 0.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.favorite,size: 13.0,color: Colors.red[200],),
                                Container(
                                  margin: EdgeInsets.all(0.0),
                                  padding: EdgeInsets.only(left: 4.0, right: 5.0, top: 2.0, bottom: 2.0),
                                  child: Text(dados[index]['likes'],
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  dados[index]['title'],
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          );
        });
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
