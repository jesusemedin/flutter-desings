import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[



          _crearImagen(), 
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),



        ]
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: FadeInImage(
        image: NetworkImage(
          'https://d8952835-a-62cb3a1a-s-sites.googlegroups.com/site/brangelfalls/home/Angel-Falls-Highest-Fall.jpg?attachauth=ANoY7cpdL64nZkh8mVn4po1cBT7vcBN7IoECKMEt-C8L74SA374qTebsCIkQPYPSvT48ADed31V8-0T4Ws4eEAWf_222nvg3gkmQfR_I8UUzFEMRSRXeyQy13ZDIM7gxRothHbaUNzWiOGor-QmODdMqBbMyyhIdSoA06RkHWR4EtZy_n_4alZfR7iolj1xCG6RGcEP68_hPDO21IaOKNzOX70gPWbY7ANEgs47vOEWO63CFXuKam64%3D&attredirects=0'
        ),
        placeholder: AssetImage('assets/img/no-image.jpg'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Salto Angel', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text(
                    'Caida de agua mas alta del mundo',
                    style: estiloSubTitulo,
                    overflow: TextOverflow.ellipsis,
                  )
                ]),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0),
          Text(
            '41',
            style: TextStyle(fontSize: 20.0),
          )
        ]),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _accion( Icons.call, 'Call' ),
        _accion( Icons.near_me, 'Route' ),
        _accion( Icons.share, 'Share' ),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
          children: <Widget>[
            Icon( icon, color: Colors.blue, size: 40.0),
            SizedBox( height: 5.0 ),
            Text(texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ),)
          ]
        );
  }

  Widget _crearTexto(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Fugiat ipsum ex minim culpa cillum deserunt est voluptate officia exercitation mollit et. Pariatur do dolor sint ut. Voluptate nulla consectetur aliquip ipsum dolor velit fugiat officia ipsum. Cupidatat ad dolor veniam occaecat ea Lorem ea fugiat dolore cillum aliqua laboris occaecat. Minim ullamco culpa commodo incididunt pariatur ullamco ut adipisicing elit enim.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }



}