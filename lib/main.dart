import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    final title = "Floating app bar";
    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(title),
              floating: true,
              flexibleSpace: Image.network("https://picsum.photos/id/1011/400/300",fit: BoxFit.cover,),
              expandedHeight: 200.0,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context,index) => ListTile(title:Text("Item #$index"),),
                childCount: 1000
              ),
            )
          ],
        ),
      ),
    );
  }
}