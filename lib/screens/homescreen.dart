import 'package:flutter/material.dart';
import 'package:login/widgets/postcard.dart';
import 'package:login/widgets/storywidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  final List _stories = ['story 1' , 'story 2' ,'story 3','story 4', 'story 5'];
 final List _post = ['story 1' , 'story 2' ,'story 3','story 4', 'story 5'];
 final List likes = ['345345 likes','54254 likes','4352523 likes','3452345 likes','765656 likes'];
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation:0 ,
        backgroundColor:const Color.fromARGB(255, 0, 0, 0),
        title:const SizedBox(
          height: 50,
          width: 120,
          child: Image(image:AssetImage('assets/images/Instagram.png')),
          
        ),
          actions:const [Row(
            children:[
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.add_box_outlined,
                size: 30,),
                ),
               Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.favorite_border_rounded,
                size: 30,),
                ) ,
                Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.energy_savings_leaf_outlined,
                size: 30,),
                )  
            ],
          )]
      ),
      body: Column(children: [
        Container(
          color: Colors.grey.shade700,
          height: 1,
          width: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: 120,
          child:ListView.builder(
            itemCount: _stories.length,
            scrollDirection:Axis.horizontal ,
            itemBuilder: (context,index){
            return storyWidget(username: _stories[index]);
          }) ,
        ),
        Container(
          color: Colors.grey.shade700,
          height: 1,
          width: MediaQuery.of(context).size.width,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _post.length,
            scrollDirection: Axis.vertical,
            itemBuilder:(context,index){
              return PostCart(likes: likes[index],);
            } ))
      ],
    ),
    );
  }
}