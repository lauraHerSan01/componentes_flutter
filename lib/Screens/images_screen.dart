import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
      title: const Text('Imagenes'),
      ),
      body: ListView(
        children: [cardImage1(),
        image2(),
        ],
      ),
    );
  }

  Card cardImage1(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), 
      ),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
        children: [
          const Image(
            image: AssetImage('assets/IMG/feria.jpg'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Una Feria',
              style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
          )
        ],
        ),
      ),
    );
  }

  SizedBox image2(){
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: Image.network('data:image/jpeg;base64,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'),
      );
  }
  Stack imageFade(){
    return Stack(
      children: <Widget> [
       const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
            image: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSz1vlN_bEvfVHx7yoIrsHVpbLbPEHZC8ueny1Xb3aDRH6t_UlF'),
        ),
        ],
    );
  }
}