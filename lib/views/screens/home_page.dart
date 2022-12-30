import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/providers/counter_provider.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Counter Using Provider'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 10,
         shadowColor: Colors.white,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.add,color: Colors.black,),
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false).increment();
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.remove,color: Colors.black,),
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false).decrement();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "${Provider.of<CounterProvider>(context).conter}",
          style: TextStyle(
              fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
