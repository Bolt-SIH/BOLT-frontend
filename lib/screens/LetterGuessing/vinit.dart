import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Vinit extends StatefulWidget {
  static const routeName = "/vinit";
  const Vinit({super.key});

  @override
  State<Vinit> createState() => _VinitState();
}

class _VinitState extends State<Vinit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("hi"),
      ),
    );
  }
}
