import 'package:flutter/material.dart';
import 'package:multi_app/models/courseModel.dart';

class CourseExpandableCard extends StatefulWidget {
  final Coursemodel coursemodel;
  const CourseExpandableCard({required this.coursemodel,super.key});

  @override
  State<CourseExpandableCard> createState() => _CourseExpandableCardState();
}

class _CourseExpandableCardState extends State<CourseExpandableCard> {
  bool isExpanded = false;


  @override
  Widget build(BuildContext context) {
    if(isExpanded){

    }
    return GestureDetector(
      onTap: (){
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.school,color: Colors.blue,size: 30,),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.coursemodel.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 4,),
                          Text("Price: ${widget.coursemodel.price}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.grey.shade600),),
                        ],
                      ),
                  ),
                  Icon(isExpanded ? Icons.expand_less : Icons.expand_more,color: Colors.blue,),
                ],
              ),
              if(isExpanded)...[
                SizedBox(height: 16,),
                Divider(),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(child: _buildDetailItem(icon: Icons.timer, label: "Duration", value: widget.coursemodel.duration),),
                    Expanded(child: _buildDetailItem(icon: Icons.bar_chart, label: "Level", value: widget.coursemodel.level),),
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Expanded(child: _buildDetailItem(icon: Icons.star, label: "Rating", value: "${widget.coursemodel.rating}+"),),
                    Expanded(child: _buildDetailItem(icon: Icons.people, label: "Student", value: "${widget.coursemodel.students}+"))
                  ],
                ),
                SizedBox(height: 12,),
                //instructor Info
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person,color: Colors.white,size: 18,),
                      ),
                      SizedBox(width: 12,),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Instractor",style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                              Text(widget.coursemodel.instructor, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),)
                            ],
                          ),
                      ),
                      Container(
                        // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        // decoration: BoxDecoration(
                        //   color: Colors.green.shade50,
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        child: ElevatedButton(onPressed: (){}, child: Text("Enroll Now"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[50])),),
                      )
                    ],
                  ),
                )
              ],
            ],
          ),
        ),
      ),
    );

  }
}

Widget _buildDetailItem({required IconData icon,required String label,required String value}){
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.grey.shade50,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Icon(icon, size: 20, color: Colors.blue.shade400,),
        SizedBox(width: 8,),
        Column(
          children: [
            Text(label,style: TextStyle(fontSize: 11,color: Colors.grey.shade600),),
            Text(value,style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
          ],
        ),
      ],
    ),
  );
}
