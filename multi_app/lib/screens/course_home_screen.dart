import 'package:flutter/material.dart';
import 'package:multi_app/models/courseModel.dart';
import 'package:multi_app/widgets/course_expandable_card.dart';

class CourseHomeScreen extends StatelessWidget {
  final List<Coursemodel> courses =  [
    Coursemodel(title: "ফ্লাটার ডেভেলপমেন্ট", price: "5000", duration: "৩ মাস", level: "বিগিনার", rating: 4.8, instructor: "জন দো", students: 1250),
    Coursemodel(title: "উইকেট ডেভেলপমেন্ট", price: "6000", duration: "৪ মাস", level: "ইন্টারমিডিয়েট", rating: 4.9, instructor: "জেন স্মিথ", students: 890),
    Coursemodel(title: "পাইথন প্রোগ্রামিং", price: "4500", duration: "২ মাস", level: "বিগিনার", rating: 4.7, instructor: "মাইক জনসন", students: 2100),
  ];

  CourseHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("কোর্সসমূহ"),elevation: 0,backgroundColor: Colors.blue,foregroundColor: Colors.white,centerTitle: true,),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue.shade50, Colors.white],
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 16),
            itemCount: courses.length,
            itemBuilder: (context, index){
            return CourseExpandableCard(coursemodel: courses[index],);
            }
        ),
      ),
    );
  }
}
