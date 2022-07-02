import 'dart:ffi';

import 'package:flutter/material.dart';

class Gird extends StatefulWidget {
  const Gird({Key? key}) : super(key: key);

  @override
  State<Gird> createState() => _GirdState();
}

class _GirdState extends State<Gird> {
  var Alphabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "English Alphabet",
          style: TextStyle(fontSize: 30.0, color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue.shade400,
      body: Container(
        child: GridView.builder(
          itemCount: Alphabet.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Card(
                elevation: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                    title: Center(
                  child: Text(
                    Alphabet[index],
                    style: TextStyle(
                      fontSize: 80,
                    ),
                  ),
                )

                    //  leading: Icon(Icons.favorite),
                    ),
              ),

              // Card(
              //   elevation: 5.0,
              //   child: new Container(
              //     alignment:  Alignment.center,
              //     margin: EdgeInsets.only(top: 10.0, bottom: 10.0,left: 10.0),
              //   child: new Text(Alphabet[index]),
              //
              //   ),
              // ),
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const ListTile(
                        title: Center(
                          child: Text(
                            "Hello",
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                        subtitle: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 80,
                        ),
                      ),
                      content: Center(
                        child: Card(
                          elevation: 2,
                          child: ListTile(
                              title: Center(
                            child: Text(
                              Alphabet[index],
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                          )),
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Ok"),
                        )
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
