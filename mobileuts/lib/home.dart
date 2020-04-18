import 'produk.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.person),
        onPressed: () {},
      ),
      title: Text('PC Part Dealer'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    //create produk tile hero
    createTile(Produk produk) => Hero(
      tag: produk.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.white30,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'detail/${produk.title}');
          },
          child: Image(
            image: AssetImage(produk.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    //create produk grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 2,
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: produks.map((produk) => createTile(produk)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}
