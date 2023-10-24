import 'package:flutter/material.dart';
import 'package:login/widgets/circlewidget.dart';

class PostCart extends StatefulWidget{
     const PostCart( {super.key, required this.likes, } );

   final String likes;

  @override
  State<PostCart> createState() => _PostCartState();
}

class _PostCartState extends State<PostCart> {

   bool isPressed=false;
   

  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      const Row(
        children: [
          Row(
            children: [
              
             Padding(
              padding:EdgeInsets.only(left: 8,top: 3),
              child: SizedBox(
                height: 55,
                width: 55,
                child:Circlewidget(),
              ),) ,
              SizedBox(width: 3,),
              Text('username',
              style: TextStyle(color: Colors.white),)
            ],

          ),
          SizedBox(width: 230,),
          Padding(padding: EdgeInsets.only(right:5),
          child: Icon(Icons.more_vert ,color: Colors.white,),)

        ],
      ),
        Stack(
          children: [
           
             Container(height: 250, width: MediaQuery.of(context).size.width,color: const Color.fromARGB(255, 241, 231, 202),child:const Padding(
               padding: EdgeInsets.all(16.0),
               child: Image(image: AssetImage('assets/images/post.jpg'),
                         ),
             ) ,),
             
          ],
        ),
        const SizedBox(height: 10,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          
          Row(children: [
            
              
              IconButton(
                              color: isPressed ? const Color.fromARGB(255, 255, 17, 0) : const Color.fromARGB(255, 255, 255, 255),             

                onPressed:() {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            } ,
              icon: isPressed? const Icon(Icons.favorite,size: 30,) : const Icon(Icons.favorite_border_outlined,size: 30,)),
            
            const Padding(padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.chat_bubble_outline_outlined , color: Colors.white,),)
            
          ],),
          
          const Icon(Icons.bookmark_border_outlined , size: 30, color: Colors.white,)

        ],),
        const SizedBox(height: 6,),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(widget.likes , style: const TextStyle(fontWeight: FontWeight.bold ,color: Colors.white ),),
            ),
          ],
        ),
        const Row(children: [
          Padding(
            padding: EdgeInsets.only(left:8),
            child: Text('username' ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
          Text('  discription...' ,style: TextStyle(color: Colors.white))
        ],),
        const SizedBox(height: 10,),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text('view all 35 comments' ,style: TextStyle(color: Color.fromARGB(255, 198, 198, 198), ),),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text('12 HOURS AGO' ,style: TextStyle(color: Color.fromARGB(255, 194, 194, 194),fontSize: 10),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(height: 1,color: const Color.fromARGB(255, 57, 57, 57),)


    ],
  ) ;
  }
}