import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  var searchController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Search a city'),

      ),
      body: Center(
        child:TextFormField(
          controller:searchController,
          keyboardType:TextInputType.text,
          onFieldSubmitted: (String text){

          },
          decoration:InputDecoration(
            labelText:"Search",
            prefixIcon: Icon(
                Icons.search
            ),
            border:OutlineInputBorder(
              borderSide:
              BorderSide(
                width: 5, //<-- SEE HERE
                color: Colors.greenAccent,),
            ),
          ),
          validator:(value) {
            if(value!.isEmpty){
              return "enter text to search ";
            }
            return null;
          },
        ),
      ),
    );
  }
}
