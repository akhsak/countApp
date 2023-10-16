
import 'package:flutter/material.dart';

class count extends StatefulWidget {
  const count({super.key});

  @override
  State<count> createState() => _countState();
}

class _countState extends State<count> {
  int _count=0;
  void _num(){
    setState(() {
      _count=_count+5;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('count appp'),
      ),
      body: Center(
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(child:Text('click'),onTap: () =>
                 _num(),splashColor: Colors.deepPurple,),
                Text('$_count'),  
              ],
            ),
          ),
        ),
      );
  }
}