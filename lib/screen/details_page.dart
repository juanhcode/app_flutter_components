import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  final String imagePath;
  final String title;
  final String details;
  final int index;

  const DetailsPage({required this.imagePath, required this.title, required this.details, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'logo$index',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Text(
                          title,
                          style: const TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                      ),
                     ),
                     const SizedBox(height: 10,),
                     Text(
                          details,
                          style: const TextStyle(
                          fontSize: 14,
                      ),
                     ),
                    ],
                  ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            backgroundColor: Colors.lightBlueAccent,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }, 
                          child: const Text('Back', style: TextStyle(
                            color: Colors.white,
                          ),
                         ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}