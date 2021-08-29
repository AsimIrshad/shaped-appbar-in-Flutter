import 'package:flutter/material.dart';

class Shapped_App_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(400),
        child: AppBar(
          title: Text('App Bar'),
          backgroundColor: Colors.green,
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [Icon(Icons.search)],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(2000),
          )),
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(2000),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/dubai.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(400),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Dubai',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
