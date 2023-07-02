import 'package:flutter/material.dart';
class Tontine extends StatefulWidget {
  const Tontine({super.key});

  @override
  State<Tontine> createState() => _TontineState();
}

class _TontineState extends State<Tontine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tontine"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("tres bien ", style: TextStyle(fontSize: 20,),
         textAlign: TextAlign.center,
        ),
      ),
      persistentFooterButtons:<Widget> [
        
        IconButton(onPressed: null, 
        icon: Icon(Icons.home),
        ),

        IconButton(onPressed: null, 
        icon: Icon(Icons.add),
        ),
        IconButton(onPressed: null, 
        icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}