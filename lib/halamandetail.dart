import 'package:flutter/material.dart';
import 'package:kuis/disease_data.dart';

class HalamanDetail extends StatelessWidget {
  final Diseases place;
  const HalamanDetail ({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('Plant Diseases'),
          actions: <Widget>[
            IconButton(icon: new Icon(Icons.favorite, color: Colors.white), onPressed: () {

            },),
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height:MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 4,
              child: Image.network(place.imgUrls[0]), //karena array pake index []
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  place.name,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20),
                Text("Disease Name", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  place.name,
                  style: TextStyle(fontSize: 12),
                ),

                SizedBox(height: 10),
                Text("Plant Name", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  place.plantName,
                  style: TextStyle(fontSize: 12),
                ),

                SizedBox(height: 10),
                Text("Ciri-ciri", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(height: 10),

                Text(
                  place.nutshell[0],
                  style: TextStyle(fontSize: 12),

                ),
                SizedBox(height: 10),
                Text("Disease ID", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  place.id,
                  style: TextStyle(fontSize: 12),
                ),

                SizedBox(height: 10),
                Text("Sympton", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  place.symptom,
                  style: TextStyle(fontSize: 12),
                ),
                 // TextButton(onPressed: (){
                 //              _launchUrl("");
                 //            }, child: Text("Buka Link"))

    //Text(place.description),
                //Text(place.location)
              ],
            )
          ],
        ),
      ),
    );
  }
}
