import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tablabs/utils/color-resource.dart';
import 'package:tablabs/widgets/custom_button.dart';

class AttendanceDetails extends StatefulWidget {
  const AttendanceDetails({Key? key}) : super(key: key);

  @override
  State<AttendanceDetails> createState() => _AttendanceDetailsState();
}

class _AttendanceDetailsState extends State<AttendanceDetails> {
  String Date = DateTime.now().toString();
  TextEditingController timeinput = TextEditingController();
  String dropdownvalue = 'Home';
  var items = [
    'Home',
    'Office',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Details: ${Date}'),
        backgroundColor: Color(0xFF6c5ede),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 100,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Color(0xFF21d3ff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                        size: Size.fromRadius(28),
                        child: Center(
                          child: Text(
                            'Start Time',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 100,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Color(0xFF21d3ff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(28),
                      child: Center(
                          child: TextField(
                        controller:
                            timeinput, //editing controller of this TextField
                        decoration: InputDecoration(
                          icon: Icon(Icons.timer), //icon of text field
                          labelText: "Enter Time",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          //label text of field
                        ),
                        readOnly:
                            true, //set it true, so that user will not able to edit text
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                            initialTime: TimeOfDay.now(),
                            context: context,
                          );

                          if (pickedTime != null) {
                            print(pickedTime.format(context)); //output 10:51 PM
                            DateTime parsedTime = DateFormat.jm()
                                .parse(pickedTime.format(context).toString());
                            //converting to DateTime so that we can further format on different pattern.
                            print(parsedTime); //output 1970-01-01 22:53:00.000
                            String formattedTime =
                                DateFormat('HH:mm:ss').format(parsedTime);
                            print(formattedTime); //output 14:59:00
                            //DateFormat() is from intl package, you can format the time on any pattern you need.

                            setState(() {
                              timeinput.text =
                                  formattedTime; //set the value of text field.
                            });
                          } else {
                            print("Time is not selected");
                          }
                        },
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 160,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                        size: Size.fromRadius(28),
                        child: Center(
                          child: Text(
                            'Working From',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 100,
                  width: 160,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(28),
                      child: Center(
                        child: DropdownButton(
                          value: dropdownvalue,
                          elevation: 16,
                          isDense: true,
                          style: const TextStyle(color: Colors.deepPurple, fontSize: 17,fontWeight: FontWeight.w800),
                          underline: Container(
                            height: 2,
                            color: Colors.cyanAccent,
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70,),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: AppColors.backColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                    size: Size.fromRadius(28),
                    child: CustomButton(onTap: (){}, buttonText: 'Save'),
                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}
