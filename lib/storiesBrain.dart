//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';
// TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain{
  int _StoryNum=0;
  //TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
  List<Story> _storydate = [
    Story(A: "One scorching summer, a drought gripped the land, leaving the once-lush savanna barren and dry. ",
        Ch1: 'I\'ll hop in. Thanks for the help!', Ch2: 'Better ask him if he\'s a murderer first.'),
    Story(A: 'The journey was perilous. They traversed through parched lands, facing obstacles and dangers along the way. '
        'Yet, Kazi\'s guidance and bravery inspired the pride to push forward.',
        Ch1: 'I\'ll hop in. Thanks for the help!', Ch2: 'Better ask him if he\'s a murderer first.'),
    Story(A: 'With a mighty roar, Kazi called for a meeting among the animals. "We must embark on a journey to find a new watering hole," he declared, his voice echoing across the plains.',
        Ch1: 'I\'ll hop in. Thanks for the help!', Ch2: 'Better ask him if he\'s a murderer first.'),
    Story(A: 'Usergenerate short story about lionChatGPT Once upon a time, in the heart of the vast African savanna, there lived a majestic lion named Kazi. His shimmering golden mane cascaded down his neck, a testament to his strength and courage. Kazi was not just any lion; he was the protector of his pride, ruling over them with wisdom and compassion.One scorching summer, a drought gripped the land, leaving the once-lush savanna barren and dry. '
        'The animals of the pride struggled to find water and food. Kazi knew he had to lead them to safety.With a mighty roar, Kazi called for a meeting among the animals. "We must embark on a journey to find a new watering hole," he declared, his voice echoing across the plains.The journey was perilous. They traversed through parched lands, facing obstacles and dangers along the way. '
        'Yet, Kazi\'s guidance and bravery inspired the pride to push forward. He encouraged them with his unwavering determination, never letting despair overshadow their spirits.One night, as they rested under the twinkling stars, they heard the distress calls of a trapped elephant calf. Without hesitation',
        Ch1: 'I\'ll hop in. Thanks for the help!', Ch2: 'Better ask him if he\'s a murderer first.'),
    Story(A: 'Working together, the lion and his pride orchestrated a plan. With Kazi\s strength and the agility of the other animals, they managed to pull the calf to safety. ',
        Ch1: 'I\'ll hop in. Thanks for the help!', Ch2: 'Better ask him if he\'s a murderer first.'),
    Story(A: 'With a mighty roar, Kazi called for a meeting among the animals. "We must embark on a journey to find a new watering hole," he declared, his voice echoing across the plains.',
        Ch1: 'I\'ll hop in. Thanks for the help!', Ch2: 'Better ask him if he\'s a murderer first.'),


  ];
  String getStory(){
    return _storydate[_StoryNum].storiesTitle;
  }
  String getChoos1(){
    return _storydate[_StoryNum].storiesCh1;
  }
  String getChoos2(){
    return _storydate[_StoryNum].storiesCh2;
  }
  void nextStory(int choiceNumber){

    if(choiceNumber==1 && _StoryNum==0){
      _StoryNum=2;
    }else if(choiceNumber==2 && _StoryNum==0){
      _StoryNum=1;
    }else if(choiceNumber==1 && _StoryNum==1){
      _StoryNum=2;
    }else if(choiceNumber==2 && _StoryNum==1){
      _StoryNum=3;
    }else if(choiceNumber==1 && _StoryNum==2){
      _StoryNum=5;
    }else if(choiceNumber==2 && _StoryNum==2){
      _StoryNum=4;
    }

    //TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    else if (_StoryNum == 3 ||_StoryNum == 4 || _StoryNum== 5) {
      restart();
    }
  }
  void restart(){
    _StoryNum=0;
  }
  bool buttonShouldBeVisible(){
    if(_StoryNum==0 || _StoryNum==1 || _StoryNum==2){
      return true;
    }else{
      return false;
    }
  }
}
