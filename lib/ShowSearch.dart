import 'package:flutter/material.dart';

class MyHomePage3 extends StatefulWidget {
  const MyHomePage3({super.key});

  @override
  State<MyHomePage3> createState() => _MyHomePage3State();
}

class _MyHomePage3State extends State<MyHomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        actions: [
          IconButton(
            onPressed: (){
              showSearch(
                context: context, 
                delegate: CustomSearchDelegate(),
                );
            }, 
            icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List  <String> searchTerms = [
    'Apple',
    'Banana',
    'Pear',
    'Watermelons',
    'Oranges',
    'Blueberries',
    'Strawberries',
    'Raspberries'

  ];
  
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = '';
      }
      , icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      onPressed: (){
        close(context, null);
      },
       icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context){
    List<String>matchQuery = [];
    for (var fruit in searchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      });
  }

  @override
  Widget buildSuggestions(BuildContext context){
    List<String>matchQuery = [];
    for (var fruit in searchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      });
  }
  
  
}
