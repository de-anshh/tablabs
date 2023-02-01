import 'package:flutter/material.dart';
import 'package:tablabs/utils/appConstant.dart';
import 'package:tablabs/widgets/holiday_tile.dart';

class HolidaysScreen extends StatelessWidget {
  const HolidaysScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffeff),
      appBar: AppBar(
        title: Text(AppConstants.holiday, ),
        backgroundColor: Color(0xFF0064fe),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.all(80),
              child: LinearProgressIndicator(
                value: 0.22,
              ),
            )


           /* Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("January", textAlign: TextAlign.start , style:TextStyle(fontSize: 28,fontWeight: FontWeight.w600,  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                  height: 90,
                  child:  HolidayTile(title: 'Sankarant', color: Color(0xFFfff4e3), Subtitle: '14th Jan', textColor: Color(0xFFd7655a),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                  height: 90,
                  child:  HolidayTile(title: 'Republic Day', color: Color(0xFFeef4fe), Subtitle: '26th Jan', textColor: Color(0xFF4892ba),)
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("March", textAlign: TextAlign.start , style:TextStyle(fontSize: 28,fontWeight: FontWeight.w600,  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                  height: 90,
                  child:  HolidayTile(title: 'Ram Navami', color: Color(0xFFFFD580), Subtitle: '30th Mar', textColor: Color(0xFFFF8C00),)
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("April", textAlign: TextAlign.start , style:TextStyle(fontSize: 28,fontWeight: FontWeight.w600,  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                  height: 90,
                  child:  HolidayTile(title: 'Eid Ul Fitr', color: Color(0xFFfff4e3), Subtitle: '21st Apr', textColor: Color(0xFFd7655a),)
              ),
            ),

            */







          ],
        ),
      ),
    );
  }
}
