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
      child: Image.network('https://bombanoise.com/wp-content/uploads/2019/04/mocking-spongebob-meme-1.jpg'),
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