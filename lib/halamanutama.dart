import 'package:flutter/material.dart';

import 'disease_data.dart';
import 'halamandetail.dart';


class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Plant Diseases'),
        automaticallyImplyLeading: false,
      ),
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemCount: listDisease.length,
          itemBuilder: (context, index){
            final Diseases place = listDisease[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HalamanDetail(place: place,);
                }));
              },

                child: Card(
                  child: Column(
                    children: [
                      //SizedBox(width: 10),
                      Container(
                        //height:MediaQuery.of(context).size.height / 4,
                        //width: MediaQuery.of(context).size.width / 4,
                        child: Image.network(place.imgUrls[0]), //karena array pake index []
                      ),
                      //SizedBox(width: 10),
                      Text(place.name)
                    ]
                    ,)
                  ,),
            );
          }),
    );
  }
}
