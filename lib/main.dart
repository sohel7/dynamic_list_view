
//  SHow Snackbar Message  IN  List View
//======================================
class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

  MySnackBar(message,context){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  
  // JESON DATA FOR LOOPING
  //============================
 var MyItems=[
   {"img":"https://pngset.com/images/twitter-heart-icon-clip-art-library-twitter-favorite-icon-balloon-pillow-transparent-png-2657148.png","title":"Sohel"},
   {"img":"https://pngset.com/images/twitter-heart-icon-clip-art-library-twitter-favorite-icon-balloon-pillow-transparent-png-2657148.png","title":"RAna"},
   {"img":"https://pngset.com/images/twitter-heart-icon-clip-art-library-twitter-favorite-icon-balloon-pillow-transparent-png-2657148.png","title":"Alam"},
   {"img":"https://pngset.com/images/twitter-heart-icon-clip-art-library-twitter-favorite-icon-balloon-pillow-transparent-png-2657148.png","title":"Mamun"},
   {"img":"https://pngset.com/images/twitter-heart-icon-clip-art-library-twitter-favorite-icon-balloon-pillow-transparent-png-2657148.png","title":"Rabbil"},
   {"img":"https://pngset.com/images/twitter-heart-icon-clip-art-library-twitter-favorite-icon-balloon-pillow-transparent-png-2657148.png","title":"Salman"},
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
body: ListView.builder(
  itemCount: MyItems.length,
  itemBuilder: (context,index){
    return GestureDetector(
      onDoubleTap: (){MySnackBar(MyItems[index]['title'], context);},
      child: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 250,
        child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill),
      ),
    );
  },
),

    );
  }
}






