import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children:[
       for(int i=0;i<8;i++)
   if(i%2==0)
    Row(children:[
       for(int j=8;j>0;j--)
       if(j%2==0)

        Container(color:Colors.white,height:30,width:30)
       else
Container(color:Colors.cyan,height:30,width:30)
    ])
     
        else
       Row(children:[ for(int j=8;j>0;j--)
       if(j%2==0)
         Container(color:Colors.cyan,height:30,width:30)
       else
         Container(color:Colors.white,height:30,width:30),])
       
     
 
    ]);
  }
}
