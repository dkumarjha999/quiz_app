
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app_true_false/model/question.dart';
import 'package:flutter/services.dart';

class QuizApp extends StatefulWidget{
  @override
  _QuizAppState createState()=>_QuizAppState();
}

class _QuizAppState extends State<QuizApp>{
   int _total_correct=0;
   int _currentQuestIndex=0;


  List questionBank=[
    Question.name("India is independent since 1929 ", false),
    Question.name("India's history essentially includesall of the Indiansubcontinent,including Pakistanand Bangladesh", true),
    Question.name("The name `India’ is derived from the RiverIndus, the valleys around which were thehome of the early settlers. The river Indusalso referred as the Sindhu", true),
    Question.name("The official Sanskrit name for India is Bharat", true),
    Question.name(" The Rajya Sabha can have a maximum of 552 members. ",false ),
    Question.name("Foundations of Hinduism - 800-600 BC ", true),
    Question.name("Greeks invaded India, 183-145 BC ", true),
    Question.name("Kalinga war – 100,000 died and 150,000 injured ", true),
    Question.name("The Mahabharata is a part of The Bhagavad Gita. ", false),
    Question.name("Buddhism outside India - 250 B.C. ", true),
    Question.name("Muslim invasions of India, 636-1206 ", true),
    Question.name("Muslim conquerors end Buddhism in India, 1192 ", true),
    Question.name("Vasco da Gama reaches India, 1598 ", false),
    Question.name(" Kuala Lumpur hosted the Commonwealth Game in 2010? ",false ),
    Question.name("Babur defeats Delhi sultanate, 1526-1527 founds Mughal Empire", true),
    Question.name("Akbar expands Mughal Empire, 1556-1605", true),
    Question.name("Establishment of East India company –British -1600", true),
    Question.name(" The Captain Roop Singh stadium is named after a former Indian cricketer. ", false),
    Question.name("British defeat last independent native state in India, 1848", true),
    Question.name("In indian flag White: for purity and truth", true),
    Question.name(" The Headquarters of the Southern Naval Command of the India Navy is located at Thiruvananthapuram. ", false ),
    Question.name("In indian flag Dark Green: faith and fertility Navy blue: Dharma Chakra, thewheel of law in the Sarnath LionCapital", true),
    Question.name(" In indian flag CHAKRA', is a Buddhist symbol dating back to 200th century BC.", true),
    Question.name("Thiruvalluvar - One of the greatest ethical works in Tamil language", true),
    Question.name("National Fruit: grapes", false),
    Question.name(" National Flower : Lotus", true),
    Question.name("Diwali is the celebration of victory of good over evil - and the glory of light.", true),
    Question.name("Bay of Bengal – east – Marina beach The second largest beach in the world, Marina Beach - up to 13kms.", true),
    Question.name("Kovalam beach One of the most popular beach hangouts in India. Kovalam means a grove of coconut trees. People from different countries – visit.", true),
    Question.name("Dona-Paula Beach Two of Goa's famous rivers meet in the Arabian Sea", true),
    Question.name(" William Hewlett and David Packard set up a small company called apple. ", false ),
    Question.name("Howrah Bridge – Hooghly river Built between 1847 and 1855 Kali temple 1943 a single 450-metre span with no piers to support it in between", true),
    Question.name("Indira Gandhi Nahar Project (IGNP) is one of the most gigantic projects in the world aiming to dedesertify and transform desert waste land into agriculturally productive area(1958) in Rajasthan", true),
    Question.name("Is it true about punjab Action on land, activity on land ??", true),
    Question.name("Is The Golden Temple in Amritsar ??", true),
    Question.name("Is it true that 14 children – Mumtaz died at the age of 39", true),
    Question.name("Birla Mandir is situated in Hyderadabad", true),
    Question.name(" There are 4 sessions of the Parliament each year: Spring, Summer, Autumn and Winter. ", false),
    Question.name("The number system was invented by Indians. Aryabhatta was the scientist who invented the digit zero.", true),
    Question.name("Chess was invented in India.", true),
    Question.name("Algebra, Trigonometry and Calculus are studies which originated in India.", true),
    Question.name("India has the most post offices in the world ", true),
    Question.name("The University of Nalanda built in the 4th century was one of the greatest achievements of ancient India in the field of education.", true),
    Question.name(" Amartya Sen was awarded the Nobel prize for his contribution to Welfare Economics. ", true ),
    Question.name(" Earth Rotation is also called annual motion of the earth? ", false ),
    Question.name(" Sachin Tendulkar has not played a single International T20 match for India ", false ),
    Question.name("The National Security Guards are also known as Black Cat Commandos due to their uniforms.", true ),
    Question.name(" The Census in India occur after every 8 years. ", false ),
    Question.name(" The Indian Penal Code came into operation on 1st January, 1862. ", true),
    Question.name(" was that helpful ??", true),

  ];

  @override
   Widget build(BuildContext context){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    double c_width = MediaQuery.of(context).size.width/5;
    return Scaffold(
       appBar:AppBar(
         title: Text(" Check Your Gk "),
         centerTitle: true,
        // backgroundColor: Colors.blueGrey
       ) ,
      // backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        // we use builder to use the content of Scaffold
        child: Builder(
          builder:(BuildContext context) => Container(
            padding: EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Image.asset("images/indinflag.jpg",
                      fit:BoxFit.fitWidth,
                      height: 220,),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(13.5),
                        border: Border.all(
                          color: Colors.blueGrey.shade700,style: BorderStyle.solid,
                        )
                      ),
                      height: 180.0,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Center(child: Text(questionBank[_currentQuestIndex].questionText,
                            style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),)),
                        ),
                      ),

                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: c_width,
                        padding: EdgeInsets.only(top: 10.0,right: 4.0),
                        child: RaisedButton(onPressed: ()=>_prevQuestion(),
                          color: Colors.black,
                          child: Icon(Icons.arrow_back,color: Colors.white,),
                        ),
                      ),
                      Container(

                        padding: EdgeInsets.only(top: 10.0,right: 4.0,left: 4.0),
                        child: RaisedButton(onPressed: ()=>_checkAnswer(true,context),
                          color: Colors.black,
                          child: Text("TRUE", style: TextStyle(
                            fontSize: 13,
                            color: Colors.red,
                          ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right:4.0,left:4.0,top: 10.0 ),
                        child: RaisedButton(onPressed: ()=>_checkAnswer(false,context),
                          materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
                          color: Colors.black,
                          child: Text("FALSE", style: TextStyle(
                            fontSize: 13,
                            color: Colors.red,
                          ),),
                        ),
                      ),
                      Container(
                        width:c_width,
                        padding: EdgeInsets.only(top: 10.0,left: 4.0),
                        child: RaisedButton(onPressed: ()=>_nextQuestion(),
                          color: Colors.black,
                          child: Icon(Icons.arrow_forward,color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                    RaisedButton(
                      child: Text("Check your Score and Details",style: TextStyle(color: Colors.red,),),
                      color: Colors.greenAccent,
                      disabledColor: Colors.greenAccent,      //add this to get color of raised button
                      onPressed:(){
                        showAlertDialog(context);
                      },
                    ),
                    Spacer(),
                  ],
              ),
          ),
        ),
      ),
    );
  }
  _checkAnswer( bool userChoice,BuildContext context){
        if(userChoice==questionBank[_currentQuestIndex].isCorrect){
          _total_correct++;
          final snackbar=SnackBar(
             backgroundColor: Colors.green.shade900,
              duration: Duration(milliseconds: 300),
              content: Text("Correct!!",style: TextStyle(
                fontSize: 15,
              ),));
          Scaffold.of(context).showSnackBar(snackbar);
          _nextQuestion();
        }
        else{
          final snackbar=SnackBar(
              backgroundColor: Colors.red.shade900,
              duration: Duration(milliseconds: 300),
              content: Text("Incorrect!! ",style: TextStyle(
                fontSize: 15,
              ),));
          Scaffold.of(context).showSnackBar(snackbar);
            _nextQuestion();
        }
  }

   showAlertDialog(BuildContext context) {

     // set up the buttons
     Widget cancelButton = FlatButton(
       child: Text("Cancel",style: TextStyle(color:Colors.red,)),
       onPressed:  () {},
     );
     Widget continueButton = FlatButton(
       child: Text("Continue",style: TextStyle(color: Colors.green),),
       onPressed:  () {
         Navigator.pop(context);
       },
     );

     // set up the AlertDialog
     AlertDialog alert = AlertDialog(
       backgroundColor: Colors.white,
       title: Text('Result',style: TextStyle(color:Colors.red,)),
       content: Text("Questions attempted = $_currentQuestIndex \n\nYour total number of correct answers = $_total_correct",style: TextStyle(color: Colors.black),),
       actions: [
         cancelButton,
         continueButton,
       ],
     );

     // show the dialog
     showDialog(
       context: context,
       builder: (BuildContext context) {
         return alert;
       },
     );
   }

  _nextQuestion(){
    setState(() {
      if(_currentQuestIndex==questionBank.length-1){
      _currentQuestIndex=0;
      _total_correct=0;
      _currentQuestIndex++;
      }
      else{
        _currentQuestIndex++;
      }
    });

  }

  _prevQuestion() {
    setState(() {
      if(_currentQuestIndex==0) {
        _currentQuestIndex=questionBank.length-1;
        _total_correct=0;
        _currentQuestIndex--;
      }
      else{
        _currentQuestIndex--;
      }
    });
  }

}