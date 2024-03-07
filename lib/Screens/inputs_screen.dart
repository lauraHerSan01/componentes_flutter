import 'package:flutter/material.dart';
import 'package:practica3/Screens/home_screen.dart';
import 'package:practica3/Screens/images_screen.dart';
import 'package:practica3/Screens/infinite_scroll_screen.dart';
import 'package:practica3/Screens/notifications_screen.dart';
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
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  int indexNavigation = 0;


  openScreen(int index, BuildContext context){
    MaterialPageRoute ruta = MaterialPageRoute(
      builder: (context) => const HomeScreen());

    switch (index){
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(
          builder: (context) => const InfiniteScollScreen());
        break;
      case 2:
        ruta = MaterialPageRoute(
          builder: (context) => const NotificationsScreen());
        break;
      case 3:
        ruta = MaterialPageRoute(
          builder: (context) => const ImageScreen());
          break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }


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
            Text(
              'Que usas para correr tus apps?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
            const ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Guardar',
                  )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: AppTheme.primatyColor,
        unselectedItemColor: AppTheme.primatyColor,
        selectedItemColor: Colors.amber,
        onTap: (index) => openScreen(index, context),
        items:const  [
          BottomNavigationBarItem(
            icon:   Icon(Icons.home),
            label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imagenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir',
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
          scale: 1,
          child: Radio(
            value: 1,
            groupValue: radioSelected,
            onChanged: (value){
              setState(() { //es obligatorio para que este funcionando el widget que queremos 
                radioSelected = value!;
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
          scale: 1,
          child: Radio(
            value: 2,
            groupValue: radioSelected,
            onChanged: (value){
              setState(() { //es obligatorio para que este funcionando el widget que queremos 
                radioSelected = value!;
              });
            },
          ),
        ),
      )
    ],
  );
}

Row entradasCheck(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('Navegador',
      style: AppTheme.lightTheme.textTheme.bodySmall,
      ),
      Transform.scale(
        scale: 1,
        child: Checkbox(
          value: isChecked1, 
          onChanged: (value){
            setState(() {
              isChecked1 = value!;
            });
          },
          ),
      ),
      Text('Emulador',
      style: AppTheme.lightTheme.textTheme.bodySmall,
      ),
       Transform.scale(
        scale: 1,
        child: Checkbox(
          value: isChecked2, 
          onChanged: (value){
            setState(() {
              isChecked2 = value!;
            });
          },
          ),
      ),
      Text('Smartphone',
      style: AppTheme.lightTheme.textTheme.bodySmall,
      ),
       Transform.scale(
        scale: 1,
        child: Checkbox(
          value: isChecked3, 
          onChanged: (value){
            setState(() {
              isChecked3 = value!;
            });
          },
          ),
      ),
    ],
  );
}
}