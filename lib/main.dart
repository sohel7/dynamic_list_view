import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.blue ),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

//  SHow Snackbar Message  IN AppBar
//==================================
class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

  MySnackBar(message,context){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
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
      appBar: AppBar(
        title: Text("Inventory"),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        //elevation: 0,
        elevation: 10,
        backgroundColor: Colors.blue,

        // ICON SET IN AppBar
        actions: [
          IconButton(onPressed: (){MySnackBar("message",context);}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){MySnackBar("Search",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("Settings", context);}, icon: Icon(Icons.settings)),
        ],
      ),
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






