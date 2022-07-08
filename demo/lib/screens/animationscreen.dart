
import 'package:flutter/material.dart';


class AnimationScreen extends StatefulWidget {
 const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double _width = 200;
  double _height = 200;

  double? Changes() {
    setState(() {
      _width = 500;
      _height = 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                 Changes();
                },
                child: Text("Animation view"),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 900), decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80") )),
                curve: Curves.easeInOutBack,
                width: _width,
                height: _height,
               
                ),

            ],
          ),
      ),

    );
  }
}