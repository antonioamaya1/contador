import 'package:flutter/material.dart';

class HomeView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeViewState();
  }
}

class _HomeViewState extends State<HomeView>{

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Carnet #: 234234234324')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Taps realizados por : Jairo Vides ', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 85, 55)),  ),
            Text('$_conteo', style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 120, 7, 153))),
          ],
        
        ),
      ), 
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton( onPressed:(){}, child: Icon(Icons.access_alarm),), 
        SizedBox(width: 5),
        FloatingActionButton( onPressed:(){}, child: Icon(Icons.access_alarm),),
        SizedBox(width: 5),
        FloatingActionButton( onPressed:(){}, child: Icon(Icons.access_alarm),)
      ],
    );
  }


}