import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

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
