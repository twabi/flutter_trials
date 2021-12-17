import 'package:flutter/material.dart';

class NewsDetailsPage extends StatefulWidget {
  const NewsDetailsPage({Key? key}) : super(key: key);

  @override
  State<NewsDetailsPage> createState() => _NewsDetailsPage();

}

class _NewsDetailsPage extends State<NewsDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Column(
          children:  <Widget>[

          ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: Image.network(
                  "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                  // width: 300,
                  //height: 400,
                  fit:BoxFit.fill
              )
          ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Align(
              alignment: Alignment.topLeft,
              child: Text("News Header", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            ),)
            ,
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                  "The 2021/22 Premier League handbook includes Covid protocols, and states the Premier League board will only permit the rearrangement or postponement of a league match in exceptional circumstances."
                  "The board make calls on a case-by-case basis, and, by way of guidance, the Premier League says permission for a postponement will not be granted if a club have 14 or more players from their squad list available."
                  "In a statement, the Premier League added it would assess a number of factors, including the ability of a club to field a team; the status, severity and potential impact of the Covid-19 outbreak at the club; and the ability of the players to safely prepare for and play the match."
                  "The Board must also consider the wider risks to the opposition and other people the club may come into contact with."
                , style: TextStyle(fontSize: 16,)),
            ),
            Row(
              children: const [
                Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("By Ahmed Twabi", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text("19:30", style: TextStyle(color: Colors.green,fontSize: 16, fontStyle: FontStyle.italic)
                    )
                  )
                ),
              ],
            )

          ],
        ),
      ),
    );
  }


}