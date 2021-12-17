import 'package:flutter/material.dart';
import 'package:malawi_football/NewsDetailsPage.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();

}

class _NewsPageState extends State<NewsPage> {

  void gotoDetails(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewsDetailsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 5,
          itemBuilder: (BuildContext context,int index){
            return Card(
              child:  ListTile(
                onTap: gotoDetails,
                leading: Container(
                    width: 45.0,
                    height: 50.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")
                        )
                    )),

                trailing: const Text("19:30", style: TextStyle(color: Colors.green,fontSize: 11),),
                title: Column(
                  children: const <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("News Header", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Some example news text before the text becomes very very long... etc", maxLines: 3,),
                    )
                  ],
                ),
                subtitle: const Text("By Twabi"),
            ),
            );
          }
      ),
    );
  }


}