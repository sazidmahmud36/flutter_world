import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_data.dart';
import 'package:quiz_app/models/question_model.dart';

class QuizHomeScreen extends StatefulWidget {
  const QuizHomeScreen({super.key});

  @override
  State<QuizHomeScreen> createState() => _QuizHomeScreenState();
}

class _QuizHomeScreenState extends State<QuizHomeScreen> {
  int _currentIndex = 0;
  int _score = 0;
  int? _selectedIndex;
  bool _answered = false;



  double get _progress => (_currentIndex+1)/quizQuestions.length;
  QuestionModel get _currentQuestion => quizQuestions[_currentIndex];
  void _selectAnswer(int index){
    if(_answered){
      return;
    }
    setState(() {
      _selectedIndex = index;
      _answered = true;

      if(index == _currentQuestion.correctIndex){
        _score++;
      }
    });
  }
  Color _getbuttonColor(int index){
    if(_answered){
      return Colors.white;
    }
    if(index == _currentQuestion.correctIndex){
      return Color(0xFF4CAF50);
    }
    if(index == _selectedIndex){
      return Color(0xFFE53935);
    }
    return Colors.white;
  }
  Color _getTextColor(int index) {
    if (!_answered) return const Color(0xFF2D3142);
    if (index == _currentQuestion.correctIndex) return Colors.white;
    if (index == _selectedIndex) return Colors.white;
    return const Color(0xFF2D3142);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A2E),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                SizedBox(height: 24,),
                _buildProgressBar(),
                SizedBox(height: 32,),
                _buildQuestionCard(),
              ],
            ),
          ),
      ),
    );
  }

  Widget _buildHeader(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flutter Quiz",style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold,),),
            Text("প্রশ্ন ${_currentIndex +1 }/${quizQuestions.length}",style: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 14),),


          ],
        ),
        Container(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xFF162133E),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color(0xFF4CC90).withOpacity(0.4),
            )
          ),
          child: Row(
            children: [
              Icon(Icons.star_rounded,color: Color(0xFFFFD700),size: 18,),
              SizedBox(width: 6,),
              Text("$_score pts", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildProgressBar(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: _progress,
            backgroundColor: Colors.white.withOpacity(0.1),
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4CC9F0)),
            minHeight: 8,
          ),
        ),
        SizedBox(height: 6,),
        Text("${(_progress*100).toInt()}% সম্পন্ন", style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 14),),
      ],
    );
  }
  Widget _buildQuestionCard(){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFF0F3460),Color(0xFF16213E)],begin: Alignment.topLeft,end: AlignmentGeometry.bottomRight),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(
          color: Color(0xFF16213E).withOpacity(0.15),
          blurRadius: 20,
          offset: Offset(0, 8),
        ),],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xFF16213E).withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text("প্রশ্ন ❓",style: TextStyle(color: Color(0xFF4CC9F0),fontSize: 13,fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 16,),
          Text(_currentQuestion.question,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700,height: 1.4),),
        ],
      ),
    );
  }
  Widget _buildOptions(){
    return Column(
      children:
        List.generate(_currentQuestion.options.length, (index)=> _buildOptionButton(index)),
    );
  }
  Widget _buildOptionButton(int index){
    final isCorrect = _answered && index == _currentQuestion.correctIndex;
    final isWrong = _answered && index == _selectedIndex && !isCorrect;

    return GestureDetector(
      onTap: () => _selectAnswer(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
        decoration: BoxDecoration(
          color: _getbuttonColor(index),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _answered?(isCorrect?Color(0xFFE53935):isWrong? Color(0xFFE53935):Colors.white.withOpacity(0.1)):Colors.white.withOpacity(0.15),
            width: 1.5,
          ),
          boxShadow: _answered && isCorrect? [
            BoxShadow(
              color: Color(0xFF4CAF50).withOpacity(0.3),
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ]:[],
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: _answered?Colors.white.withOpacity(0.2):Color(0xFF1A1A2E),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  String.fromCharCode(65 + index),
                  style: TextStyle(
                    color: _getTextColor(index),
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),

    );

  }

}
