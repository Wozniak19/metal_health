import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  final String bigTitle;
  final String question;

  const RadioButton({super.key, 
    required this.bigTitle,
    required this.question,
  });

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? groupValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 0, 0, 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.bigTitle,
              overflow: TextOverflow.ellipsis,
              maxLines: null,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2, top: 10),
              child: Row(
                children: [
                  Text(
                    widget.question,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Radio(
                  value: "Yes",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
                const Text(
                  "Yes",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(width: 20),
                Radio(
                  value: "No",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
                const Text(
                  "No",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
