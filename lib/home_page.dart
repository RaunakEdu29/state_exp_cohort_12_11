import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  int count = 0;
  String pageName = "Home";

  @override
  Widget build(BuildContext context) {

    print("build called");

    /*return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
      ),
      body: Center(
        child: Text("$count", style: TextStyle(
          fontSize: 34,
        ),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (){
              /// we need to add the setState
              if(count>0){
                count--;
                pageName = "Home";
                setState((){

                });
              }
            }, child: Icon(Icons.remove),),
          FloatingActionButton(
            onPressed: (){
              /// we need to add the setState
              count++;
              pageName = "Settings";
              setState((){

              });
            }, child: Icon(Icons.add),),
        ],
      ),
    );*/
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: StatefulBuilder(builder: (context, ss){
          print("builder called");
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("$count", style: TextStyle(
                fontSize: 34,
              ),),
              SizedBox(
                height: 11,
              ),
              ElevatedButton(onPressed: (){
                count++;
                ss((){});
              }, child: Icon(Icons.add))
            ],
          );
        }),
      ),
    );
    
  }
}
