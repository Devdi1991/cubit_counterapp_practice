import 'package:cubit_counterapp_practice/counteraapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit_counterapp'),
      ),
      body: BlocBuilder<CounterApp,int>(builder: (context,state)=>
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$state",
         style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
         ),
                ),
              
              ],
            ),
          ),

      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(onPressed: (){
            context.read<CounterApp>().increment();
          },
          child: Icon(Icons.add),),
          FloatingActionButton(onPressed: (){
            context.read<CounterApp>().decrement();
          },
            child: Icon(Icons.minimize),),
        ],
      ),

    );
  }
}
