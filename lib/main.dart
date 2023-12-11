import 'package:flutter/material.dart';
import 'package:story_challenges_flutter/storiesBrain.dart';

void main() => runApp(storyApp());

StoryBrain storyBrain=StoryBrain();

class storyApp extends StatelessWidget {
  const storyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text("Stories"),
          titleTextStyle:TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: _stoyWeidget(),
          )
      ),),
    );
  }
}
class _stoyWeidget extends StatefulWidget {
  const _stoyWeidget({super.key});

  @override
  State<_stoyWeidget> createState() => _stoyWeidgetState();
}

class _stoyWeidgetState extends State<_stoyWeidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                storyBrain.getStory(),
                textAlign:TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.redAccent
                ),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(padding: EdgeInsets.all(15),
              child:Visibility(
                visible: storyBrain.buttonShouldBeVisible(),
                child:TextButton(
                  style: TextButton.styleFrom (
                    backgroundColor: Colors.teal,
                    shape: LinearBorder.start(),),
                  onPressed: (){
                    setState(() {
                      storyBrain.nextStory(2);
                    });
                    },
                  child: Text(StoryBrain().getChoos2(),
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
        ),
        Expanded(
          child: Padding(padding: EdgeInsets.all(15),
            child:  TextButton(
              style: TextButton.styleFrom (
                backgroundColor: Colors.deepOrange,
                shape: LinearBorder.start(),
              ),
              onPressed: (){
                setState(() {
                  storyBrain.nextStory(1);
                });
              },
              child: Text(
                storyBrain.getChoos1(),
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),


              ),
            ),
          ),
        ),
      ],
    );
  }
}
