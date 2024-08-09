import "dart:async";

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:my_first_app/title_page.dart";



// class HomePage extends StatelessWidget {
  
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text(  
//             "Button",
//           ),
//           onPressed: () {},
//         ),
        
//      ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});
   
  
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  

  void onTapTile(String title){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>TitlePage(title)),
    );   
  } 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home page",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
       body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text("$index"),
            leading: Icon(Icons.facebook, color: Colors.blue,),
            trailing: Icon(Icons.chevron_right),
            subtitle: Text("$index"),
            dense: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            horizontalTitleGap: 30,
            onTap: ()=>
            onTapTile,
          ),

          
        ), 
      ),
    );
  }
}