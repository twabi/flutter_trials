import 'package:flutter/material.dart';

class FixturePage extends StatefulWidget {
  const FixturePage({Key? key}) : super(key: key);

  @override
  State<FixturePage> createState() => _FixturePage();

}

class _FixturePage extends State<FixturePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 25,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
                leading: Icon(Icons.list),
                trailing: const Text("GFG",
                  style: TextStyle(
                      color: Colors.green,fontSize: 15),),
                title:Text("List item $index")
            );
          }
      ),
    );
  }


}