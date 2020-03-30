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
        title: Text('UGB')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Taps', style: TextStyle(fontSize: 40), ),
            Text('$_conteo', style: TextStyle(fontSize: 50)),
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
        FloatingActionButton( onPressed:(){}, child: Icon(Icons.exposure_zero),), 
        SizedBox(width: 5),
        FloatingActionButton( onPressed:(){}, child: Icon(Icons.remove),),
        SizedBox(width: 5),
        FloatingActionButton( onPressed:(){}, child: Icon(Icons.add),)
      ],
    );
  }


}