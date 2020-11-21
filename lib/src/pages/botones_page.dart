import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ]
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _fondoApp(){

    final gradiente = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: <Color>[
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        ),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      )
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );

  }

  Widget _titulos(){

    return Container(
      padding: EdgeInsets.all(20.0),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0),),
          ]
        ),
      ),
    );

  }

  Widget _bottomNavigationBar(){
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Color.fromRGBO(110, 110, 148, 1.0),
      fixedColor: Colors.pinkAccent,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon( Icons.calendar_today ),
          label: 'Calendar'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.pie_chart_outlined ),
          label: 'Charts'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.supervised_user_circle ),
          label: 'People'
        ),
      ],
    );
  }

  Widget _botonesRedondeados(){

    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _crearBotonRedondeado( color: Colors.blue, icono: Icons.cloud, texto: 'General' ),
            _crearBotonRedondeado( color: Colors.purple, icono: Icons.directions_bus, texto: 'Transport' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( color: Colors.pink, icono: Icons.shopping_bag, texto: 'Shopping' ),
            _crearBotonRedondeado( color: Colors.orange, icono: Icons.monetization_on, texto: 'Bills' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( color: Colors.blueAccent, icono: Icons.movie, texto: 'Entertainment' ),
            _crearBotonRedondeado( color: Colors.green, icono: Icons.food_bank, texto: 'Food' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( color: Colors.red, icono: Icons.photo, texto: 'Photos' ),
            _crearBotonRedondeado( color: Colors.teal, icono: Icons.help, texto: 'Help' ),
          ]
        ),
      ],
    );

  }

  Widget _crearBotonRedondeado({String texto, Color color, IconData icono}){

    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      width: 180.0,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 40.0,
                child: Icon(icono, color: Colors.white, size: 30.0),
              ),
              Text(
                texto,
                style: TextStyle(color: color, fontSize: 18.0),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}