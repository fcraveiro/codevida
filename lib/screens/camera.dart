import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;

  Future getGaleria() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future getCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: new Text('Denunciar'),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),

//  FLOATING *********************************************

      floatingActionButton: new FloatingActionButton(
        mini: false,
        onPressed: getCamera,
        elevation: 7.0,
        tooltip: 'Tirar Foto',
        child: new Icon(Icons.send),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.green[100],
      ),

//  BODY *************************************************

      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
//  PAGINA ***********************************************,

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                    ),
                    width: 160.0,
                    height: 260.0,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: Border.all(
                          color: Colors.green[500],
                          width: 1.0,
                          style: BorderStyle.solid,
                        )),
                    child: _image == null
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                'Sem Imagens',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.green[900],
                                ),
                              ),
                            ],
                          )
                        : new Image.file(
                            _image,
                            scale: 50.0,
                            fit: BoxFit.fill,
                          ),
                  ),
                ],
              ),

              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(0.0),
                    margin: EdgeInsets.only(
                      top: 15.0,
                    ),
                    width: 80.0,
                    height: 80.0,
                    child: RaisedButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: getGaleria,
                      color: Colors.green[800],
                      elevation: 6.0,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(0.0),
                            margin: EdgeInsets.only(top: 5.0),
                            width: 75.0,
                            height: 45.0,
                            child: Icon(
                              Icons.photo_library,
                              size: 40.0,
                              color: Colors.green[100],
                            ),
                          ),
                          Container(
                            width: 75.0,
                            height: 25.0,
                            child: Text(
                              'Galeria',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.green[100],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(0.0),
                    margin: EdgeInsets.only(
                      top: 20.0,
                    ),
                    width: 80.0,
                    height: 80.0,
                    child: RaisedButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: getCamera,
                      color: Colors.green[800],
                      elevation: 6.0,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(0.0),
                            margin: EdgeInsets.only(top: 5.0),
                            width: 75.0,
                            height: 45.0,
                            child: Icon(
                              Icons.photo_camera,
                              size: 40.0,
                              color: Colors.green[100],
                            ),
                          ),
                          Container(
                            width: 75.0,
                            height: 25.0,
                            child: Text(
                              'Camera',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.green[100],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(0.0),
                    margin: EdgeInsets.only(
                      top: 20.0,
                    ),
                    width: 80.0,
                    height: 40.0,
                    child: RaisedButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: getCamera,
                      color: Colors.green[300],
                      elevation: 6.0,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 10.0),
                            width: 75.0,
                            height: 40.0,
                            child: Text(
                              'Perfeito',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.green[900],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30.0),
                width: 350.0,
                height: 160.0,
                color: Colors.white,

                child: TextField(
                  maxLines: 7,
                  maxLength: 300,
                  decoration: InputDecoration(
//                    labelText: 'ddffnsh',
                    hintText: 'HINT',
                    filled: true,
//                    border: OutlineInputBorder(
//                      borderSide: BorderSide(
//                          color: Colors.red,
//                         width: 2.0,
//                          style: BorderStyle.solid,
//                      ),
//                    ),

                    counterStyle: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),



              )
            ],
          ),

//  GALERIA **********************************************

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//  FOTO *************************************************
            ],
          ),
        ],
      ),

//  **************************** FINAL ********************

//      ),
    );
  }
}
