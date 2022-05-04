import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_crud/model/user_model.dart';
import 'package:rest_api_crud/repository/user_repo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var name = TextEditingController();
  var job = TextEditingController();
  Map response = {};

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold( 
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rest API CRUD"),
        backgroundColor: Color.fromARGB(255, 117, 13, 5),
      ),

      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CupertinoTextField(
                controller: name,
                placeholder: "Name",
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: CupertinoTextField(
                controller: name,
                placeholder: "Job",
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
              ),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                color: Colors.amber,
                child: Text("Create"),
                onPressed: (){
                  
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                color: Colors.amber,
                child: Text("Read"),
                onPressed: (){
                  
                },
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                color: Colors.amber,
                child: Text("Update"),
                onPressed: (){
                  
                },
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                color: Colors.amber,
                child: Text("Delete"),
                onPressed: (){
                  
                },
              ),
            )
          ],
        ),
        
      ),
    
    );
  }
}