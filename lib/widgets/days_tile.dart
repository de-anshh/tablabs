import 'package:flutter/material.dart';

class Day_tile extends StatelessWidget {
  final Color color;
  final String Days;
  final String Title;
  const Day_tile({Key? key, required this.color, required this.Days, required this.Title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: 180,
      decoration:BoxDecoration(color: color, shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              const SizedBox(height: 10,width:30,),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(Title,
                    style: TextStyle(
                      color: Color(0xFFf7f2f6),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 73,),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(Days,textAlign: TextAlign.end, style: TextStyle(
                  color: Color(0xFFf7f2f6),
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                ),),
              ),

            ],
          )),
    );
  }
}
