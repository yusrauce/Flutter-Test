import 'package:flutter/material.dart';


class HealtyFoodView extends StatefulWidget {
  HealtyFoodView({Key? key}) : super(key: key);

  @override
  State<HealtyFoodView> createState() => _HealtyFoodViewState();
}

class _HealtyFoodViewState extends State<HealtyFoodView> {
  int currentIndex = 0;
  @override
  List<String> categories = ["Breakfast","Launch","Breakfast","Launch","Breakfast","Launch"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: a1(),
      bottomNavigationBar: bars(),
      body: b2(),
    );
  }

  Column b2() {
    return Column(
      children: [
        b1(),
        cards(),
        SizedBoxEmpty(),
        categoriesTitle(),
        SizedBoxEmpty(),
        SizedBoxEmpty(),
        SizedBoxCategories(), 
      ],
    );
  }

  SizedBox SizedBoxCategories() {
    return SizedBox(
        height: 100,
        child: ListViewCategories());
  }

  ListView ListViewCategories() {
    return ListView.builder(itemCount: categories.length, 
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => SizedBoxCategorie(index),);
  }

  SizedBox SizedBoxCategorie(int index) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          CircleAvatar(
            child:
            Icon(Icons.fastfood),
          ),
          Text(categories[index]),
        ],
      ),
    );
  }

  SizedBox SizedBoxEmpty() => SizedBox(height: 10,);

  Text categoriesTitle() => Text("Categories",style: Theme.of(context).textTheme.headline5,);

  SizedBox cards() {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: cardslistview(),
      );
  }

  ListView cardslistview() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => 
        Card(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: containercard(context)
          ),
        );
  }

  Container containercard(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(10),
          width:  MediaQuery.of(context).size.width * 0.6,
          child: Column(
            children: [
              cardimage(),
              carddetails(),
              Row(
                children: [
                  Text("data"),
                  Icon(Icons.star_border_outlined),
                  Spacer(),
                  Text("data"),
                  Icon(Icons.star_border_outlined),
                ],
              )
            ],
          )
          );
  }

  Expanded carddetails() {
    return Expanded(flex:2, child: ListTile(
              title: Text("Title"),
              trailing: CircleAvatar(
                child: Icon(Icons.shopping_cart),
              ),
              subtitle: Text("subtitle"),
            ));
  }

  Expanded cardimage() => Expanded(flex: 7, child: Placeholder());


  Row b1() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: (){}, 
            child: 
            Text("data"),
            style: 
            ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),))),
            ),
            ElevatedButton(
            onPressed: (){}, 
            child: 
            Text("data"),
            style: 
            ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),))),
            ),
            ElevatedButton(
            onPressed: (){}, 
            child: 
            Text("data"),
            style: 
            ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),))),
            ),
            ElevatedButton(
            onPressed: (){}, 
            child: 
            Text("data"),
            style: 
            ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),))),
            ),
        ],
      );
  }

  

  BottomNavigationBar bars() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index)=>setState(() => currentIndex = index),
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.red,),label: 'Feed',backgroundColor: Colors.pink,),
      BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat',backgroundColor: Colors.green),
    ]);
  }

  AppBar a1() => AppBar(
    automaticallyImplyLeading: false,
    iconTheme: IconThemeData(
    color: Colors.black),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: text(),
    centerTitle: false,
    actions: [
      icon()
    ],
  );

  IconButton icon() => IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,));

  Text text() => Text("Welcome Again",style: Theme.of(context).textTheme.headline4);
}
