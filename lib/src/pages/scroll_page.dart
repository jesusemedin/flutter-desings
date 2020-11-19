import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ]
    );
  }

  Widget _colorFondo(){
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1.0),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _imagenFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos(){

    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    final estiloTextoLocation = TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.w200);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('32°', style: estiloTexto),
          Text('Jueves', style: estiloTexto),
          Text('Lecheria, Venezuela', style: estiloTextoLocation),
          Expanded(
            child: Container(),
          ),
          Icon( Icons.keyboard_arrow_down, size: 100.0, color: Colors.white )
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.tealAccent[400],
          textColor: Colors.white,
          child: Container(padding: EdgeInsets.all(20.0), child: Text('Bienvenidos')),
          // TAMBIEN SE PUEDE USAR EL WIDGET PADDDING PARA AGREGAR PADDING
          onPressed: (){

          },
        ),
      ),
    );
  }
}