
import 'package:flutter/material.dart';
import 'package:kuis_mobile/detailpage.dart';
import 'package:kuis_mobile/disease.dart';

class PlantDiseaseGridView extends StatelessWidget {
  final List<Diseases> plantDiseases;

  PlantDiseaseGridView({required this.plantDiseases});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Penyakit Tanaman'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: plantDiseases.length,
        itemBuilder: (context, index) {
          final disease = plantDiseases[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(plant: disease),
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    disease.imgUrls,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    disease.name,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
