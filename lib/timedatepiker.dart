import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datetime extends StatefulWidget {
  const datetime({Key? key}) : super(key: key);

  @override
  State<datetime> createState() => _DatetimeState();
}

class _DatetimeState extends State<datetime> {
  DateTime datetime = DateTime(2023, 2, 1, 10, 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${datetime.day}/${datetime.month}/${datetime.year}- ${datetime.hour}:${datetime.minute}',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 10),
            Container(
              width: 500, // Set your desired width
              height: 40, // Set your desired height
              child: ElevatedButton(
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: datetime,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (newDate == null) return;
                  TimeOfDay? newTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay(hour: datetime.hour, minute: datetime.minute),
                  );
                  if (newTime == null) return;
                  final newDatetime = DateTime(
                    newDate.year,
                    newDate.month,
                    newDate.day,
                    newTime.hour,
                    newTime.minute,
                  );
                  setState(() {
                    datetime = newDatetime;
                  });
                },
                child: Text(
                  "احجز",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
