import 'package:flutter/material.dart';
import 'package:tontine/Tontine.dart';
class JOIN extends StatelessWidget {
  const JOIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accueil"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        // alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("creer ou rejoigner une tontine", style: TextStyle(fontWeight: FontWeight.w600,
              fontSize: 20,),),
              SizedBox(height: 20,),
              
        
               ElevatedButton(
                onPressed: () {
                   Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tontine()));
                },
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.all(20),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    
                child: Text(
                  "creer une reunion",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    
                  ),
                ),
              ),
               SizedBox(height: 15,),
        
         ElevatedButton(onPressed: (){
           Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tontine()));
        
         },
               style: ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.all(20),
          ),
          backgroundColor: MaterialStatePropertyAll(Colors.blue)
               ), 
               child: Text("rejoindre une reunion", style: 
               TextStyle(fontSize: 20,
               color: Colors.white,
              
               ),
               ),
        
               ),
            ],
          ),
        ),
      ),
    );
  }
}