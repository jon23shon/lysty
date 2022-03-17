import 'package:flutter/material.dart';
import 'navigation.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> itemz = [];
  final controller0 = TextEditingController();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Tesco',
    'Sainsburys',
    'Lidl',
    'Iceland',
    'Tesco',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigation(),
      appBar: AppBar(title: Text("lysty"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                      backgroundColor: Colors.blueGrey,
                      title: Text("To lyst?"),
                      actions: [
                        Container(
                          width: 280,
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            controller: controller0,
                            autocorrect: true,
                            decoration: InputDecoration(hintText: 'Product'),
                          ),
                        ),
                        Container(
                          width: 280,
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            controller: controller1,
                            autocorrect: true,
                            decoration: InputDecoration(hintText: 'price'),
                          ),
                        ),
                        Container(
                          width: 280,
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            controller: controller2,
                            autocorrect: true,
                            decoration: InputDecoration(hintText: 'amount'),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                itemz.add(controller0.text);
                                itemz.add(controller1.text);
                                itemz.add(controller2.text);
                              });
                              Navigator.of(context).pop();
                              controller0.clear();
                              controller1.clear();
                              controller2.clear();
                            },
                            child: Text("Add to lyst"))
                      ],
                    ));
          },
          child: Icon(
            Icons.shopping_cart,
            size: 30,
          )),
      body: ListView.builder(
          itemCount: itemz.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  title: Text(itemz[index]),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        itemz.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
            );
          }),
    );
  }
}
