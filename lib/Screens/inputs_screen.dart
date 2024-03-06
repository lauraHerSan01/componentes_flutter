import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreenState extends StatefulWidget {
  const InputsScreenState({super.key});

  @override
  State<InputsScreenState> createState() => _InputsScreenStateState();
}

class _InputsScreenStateState extends State<InputsScreenState> {
  bool switchValue = false; // controlar el widget switch
  double sliderValue = 0.0;
  int radioSelected = 0;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaNombre(),
            entradaSwitch(),
            entradaSlider(),
            entradaRadio(),
            const ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Guardar',
                  )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.primatyColor,
        items:const  [
          BottomNavigationBarItem(
            icon:   Icon(Icons.home),
            label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_exploration),
            label: 'Datos',
          ),
        ],
      ),
      
    );
  }

  TextField entradaNombre() {
    return TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
          value: switchValue, 
          onChanged: (value){
            setState(() {
              switchValue = value;
            });
          })
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Indica que tanto te gusta Flutter: ',
      style: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
      Slider(
        min: 0.0,
        max: 10.0,
        activeColor:const Color.fromARGB(255, 155, 79, 241),
        thumbColor:const Color.fromARGB(255, 124, 2, 245),
        inactiveColor:const Color.fromARGB(255, 252, 214, 255),
        value: sliderValue, 
        divisions: 10,
        label: '${sliderValue.round()}',
        onChanged: (value){
          setState(() {
            sliderValue = value;
            print('Se cambio el slider: $sliderValue');
          });
        }),
    ],
    );
  }

Column entradaRadio(){
  return Column(
    children: [
      Text('Que prefieres para desarrollo movil?',
      style: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
      ListTile(
        title: Text(
          'Kotiln',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        leading: Transform.scale(
          scale: 1.5,
          child: Radio(
            value: 1,
            groupValue: radioSelected,
            onChanged: (value){
              setState(() { //es obligatorio para que este funcionando el widget que queremos 
                radioSelected = value!;
              print ('Seleccion de boton radio: $radioSelected');
              });
            },
          ),
        ),
      ),
      ListTile(
        title: Text(
          'Flutter',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        leading: Transform.scale(
          scale: 1.5,
          child: Radio(
            value: 2,
            groupValue: radioSelected,
            onChanged: (value){
              setState(() { //es obligatorio para que este funcionando el widget que queremos 
                radioSelected = value!;
              print ('Seleccion de boton radio: $radioSelected');
              });
            },
          ),
        ),
      )
    ],
  );
}

}