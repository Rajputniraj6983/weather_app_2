import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          Icon(Icons.arrow_back,size: 25,color: Colors.black,),SizedBox(width: 90),
          Text('Location',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),SizedBox(width: 80),
          Icon(Icons.more_vert,size: 25,color: Colors.black,),SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 450),
            Center(
              child: Container(
                height: 250,width: 380,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 200),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month,size: 20,color: Colors.white,),SizedBox(width: 10),
                      Text(,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(width: 100),
                      Text("More Details",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      Icon(Icons.play_arrow,size: 15,color: Colors.white,)
                    ],
                  ),
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blueGrey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
