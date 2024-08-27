import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  final String bigTitle;
  final String question;
  final Function(String, String) onChanged; // Change int to String
  final String initialValue; // Change int to String

  const RadioButton({
    super.key,
    required this.bigTitle,
    required this.question,
    required this.onChanged,
    this.initialValue = "0", // Default is "No" as String
  });

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  late String groupValue; // Keeping it as String

  @override
  void initState() {
    super.initState();
    groupValue = widget.initialValue == "1" ? 'Yes' : 'No';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 0, 0, 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.bigTitle.toUpperCase(),
                overflow: TextOverflow.visible,
                maxLines: null,
                softWrap: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2, top: 10),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.question,
                      overflow: TextOverflow.visible,
                      maxLines: null,
                      softWrap: true,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
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
                    widget.onChanged(widget.bigTitle, "1"); // "Yes" -> "1"
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
                    widget.onChanged(widget.bigTitle, "0"); // "No" -> "0"
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
