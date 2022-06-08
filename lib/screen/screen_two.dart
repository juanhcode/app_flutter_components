import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
  imagePath: 'images/image1.jpg',
  title: 'Thriller',
  details:
  'Thriller es el sexto álbum de estudio del artista estadounidense Michael Jackson, publicado el 30 de noviembre de 1982 por Epic Records. Producido por Quincy Jones —quien trabajó también en el álbum Off the Wall (1979) del mismo artista—, la obra está compuesta por un balance de varios géneros musicales: entre disco y rock, funk y balada, R&B y pop.'
  ),
  ImageDetails(
  imagePath: 'images/image2.jpg',
  title: 'Master of Puppets',
  details:
  'Master of Puppets es el tercer álbum de estudio de la banda de thrash metal estadounidense Metallica. Fue lanzado al mercado el 3 de marzo de 1986, bajo el sello de Elektra Records, alcanzando el puesto 292​ en el Billboard 200. El álbum fue el primer disco de oro de la banda tras vender 500 000 copias en Estados Unidos, aunque luego superaría las 6 millones.'
  ),
  ImageDetails(
  imagePath: 'images/image3.jpg',
  title: 'Dangerous',
  details:
  'Dangerous es el octavo álbum de estudio del cantante estadounidense Michael Jackson, publicado el 26 de noviembre de 1991. Es el primer álbum tras el reinado de Quincy Jones como productor de Michael Jackson. Después de Quincy Jones, quedó fuera el interés por la melodía: Michael Jackson se centró en el ritmo. De ahí los potentes sonidos que podemos escuchar en Dangerous.'
  ),
  ImageDetails(
  imagePath: 'images/image4.jpg',
  title: 'Ride The Ligthning',
  details:
  'Ride the Lightning es el segundo álbum de estudio de la banda estadounidense de thrash metal Metallica. Fue publicado el 27 de julio de 1984 bajo el sello discográfico Megaforce Records. «Ride the Lightning» es considerado como un álbum de thrash metal clásico por los fanes, críticos y miembros de Metallica y es considerado como uno de los mejores álbumes de metal de todos los tiempos.'
  ),
  
  ImageDetails(
  imagePath: 'images/image5.jpg',
  title: 'Discovery',
  details:
  'Discovery es el segundo álbum de estudio del dúo francés de música house Daft Punk, lanzado en marzo de 2001. Marcó un cambio en el sonido desde el Chicago house, género por el que eran conocidos, al disco, post-disco y house inspirado en el synthpop.'
  ),
  ImageDetails(
  imagePath: 'images/image6.jpg',
  title: 'When We All Fall Asleep, Where Do We Go?',
  details:
  'When We All Fall Asleep, Where Do We Go? es el primer álbum de estudio de la cantante estadounidense Billie Eilish. Está producido por su hermano Finneas O Connell y fue publicado el 29 de marzo de 2019 a través de Interscope Records. El álbum combina géneros como el electropop, influencias de R&B y el pop, y ha vendido más 6 millones de copias mundialmente hasta la fecha.'
  ),
  ImageDetails(
  imagePath: 'images/image7.jpeg',
  title: 'Random Access Memories',
  details:
  'Random Access Memories es el cuarto y último álbum de estudio del dúo francés Daft Punk. Se publicó oficialmente el 17 de mayo en Australia, el 20 de mayo en Reino Unido y el 21 de mayo de 2013 en Estados Unidos, bajo licencia de Daft Life. La grabación comenzó cuando el dúo preparaba la banda sonora de la película Tron: Legacy, sin un plan claro en cuanto a lo que sería su estructura.'
  ),
];

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            const SizedBox(height: 40,),
             const Text('Galeria de Albums', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30,),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),)
                ),
                child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ), itemBuilder: (context, index) {
                  return RawMaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          imagePath: _images[index].imagePath,
                          title: _images[index].title,
                          details: _images[index].details,
                          index: index,
                        ),
                      ));
                    },
                    child: Hero(
                      tag: 'logo$index',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                }, itemCount: _images.length,
               ),
              ),
            )
          ],
        ),
      ),
    );
    
  }
}

class ImageDetails {
  final String imagePath;
  final String title;
  final String details;
  ImageDetails({required this.imagePath, required this.title, required this.details,});

}
