import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopping_app/product.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // all your functions are created here
  List<Product> products = [];


  Future<void> getProductData()async{
    String url = "";
    Uri converteduri = Uri.parse(url);
    var result = await http.get(converteduri);
    if (result.statusCode == 200){
      List resultingList = jsonDecode(result.body) as List;
      resultingList.forEach((element) {
        print("");

       });
    }
      }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 60,
          actions: [
            IconButton(onPressed: (){ }, icon: Icon)
          ],
          leading: Container(
            margin: EdgeInsets.only(left: 8),
            child: ClipRRect(
              child: Image.network(
                "src",
                fit: BoxFit.cover,
                width: 28,
                height: 28,
              ),
            ),
          ),
        ),
        body:Container (
            // we'll have the splash screen here
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int pos){
                return Card(
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)
                  ),
                  child: Container(
                    height: 50,
                    child: ListTile(
                      onTap: (){
                        
                      },
                      title:Text(
                        "title of item",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                      ) ,
                      subtitle: Text(
                        "More on item",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: Colors.grey
                        ),
                      ),
                      leading: Image.network(
                        "src",
                        height: 48,
                        width: 48,
                        ),
                        trailing: Text(
                          "USD 10.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          ),
                        ),
                    ),
                  ),
                )
              }, 
              separatorBuilder: (BuildContext context, int pos){
                return SizedBox( height: 16,);
              }
              ), 
              itemCount: 20;
              ),
            );
        // This trailing comma makes auto-formatting nicer for build methods.
  }
}
