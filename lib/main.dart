import 'package:flutter/material.dart';
import 'HomeScreenState.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Título Gestor de Janelas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Título Appbar'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen> {
  int _contador = 0;
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text(
            'Olá Mundo!!! $_contador',
          ),
          Row(
            children: [
              TextButton(onPressed: _incrementarContador, child: Text('+')),
              TextButton(onPressed: _decrementarContador, child: Text('-')),
              TextButton(onPressed: _resetContador, child: Text('Reset!')),
            ],
          ),
          FloatingActionButton(
            // When the user presses the button, show an alert dialog containing
            // the text that the user has entered into the text field.
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    // Retrieve the text that the user has entered by using the
                    // TextEditingController.
                    content: Text(myController.text),
                  );
                },
              );
            },
            tooltip: 'Show me the value!',
            child: const Icon(Icons.text_fields),
          ),
        ],
      ),
    );
  }
  void incrementar(){
    _contador++;
  }
  void _incrementarContador() {
    setState(incrementar);
  }
  void decrementar(){
    _contador--;
  }
  void _decrementarContador() {
    setState(decrementar);
  }
  void reset(){
    _contador = 0;
  }
  void _resetContador() {
    setState(reset);
  }
}
