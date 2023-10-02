
import 'package:flutter/material.dart';
import 'package:kuis_mobile/disease.dart';

class DetailPage extends StatefulWidget {
  final Diseases plant;

  DetailPage({super.key, required this.plant});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    final snackBar = SnackBar(
      content: Text(
        isFavorite ? 'Ditambahkan ke Favorit' : 'Dihapus dari Favorit',
      ),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openPlantPhotoUrl() {
    final url = widget.plant.imgUrls;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Diseases"),
        actions: [
          IconButton(
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: toggleFavorite,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.height / 2,
            child: Image.network(widget.plant.imgUrls),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.plant.name),
              Text(widget.plant.id),
              Text(widget.plant.plantName),
              Text(widget.plant.symptom),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openPlantPhotoUrl,
        tooltip: 'Buka Foto Penyakit Tanaman',
        child: Icon(Icons.photo),
      ),
    );
  }
}
