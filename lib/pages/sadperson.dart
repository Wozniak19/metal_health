import 'package:flutter/material.dart';

class SadPersonScale extends StatefulWidget {
  const SadPersonScale({Key? key}) : super(key: key);

  @override
  _SadPersonScaleState createState() => _SadPersonScaleState();
}

class _SadPersonScaleState extends State<SadPersonScale> {
  String _gender = 'Male';
  String _ageRange = '0-10';
  String _hasDepression = 'No';
  String _previousAttempts = 'No';
  String _ethanolUse = 'No';
  String _rationaleThinkingLoss = 'No';
  String _lackOfSocialSupport = 'No';
  String _organizedPlanning = 'No';
  String _noPartnersOrDivorced = 'No';
  String _sickness = 'No';

  final List<String> _genders = ['Male', 'Female'];
  final List<String> _ageRanges = ['0-10', '11-20', '21-40', 'Above 40'];
  final List<String> _yesNoOptions = ['Yes', 'No'];

  int _calculateScore() {
    int score = 0;

    // Convert responses to score
    if (_hasDepression == 'Yes') score += 1;
    if (_previousAttempts == 'Yes') score += 1;
    if (_ethanolUse == 'Yes') score += 1;
    if (_rationaleThinkingLoss == 'Yes') score += 1;
    if (_organizedPlanning == 'Yes') score += 1;
    if (_noPartnersOrDivorced == 'Yes') score += 1;
    if (_sickness == 'Yes') score += 1;

    // Add 2 points for the age and gender questions, regardless of their answers
    score += 2;

    return score;
  }

  String _getRiskMessage() {
    final score = _calculateScore();
    final lackOfSocialSupport = _lackOfSocialSupport == 'No';

    if (score < 4 && lackOfSocialSupport) {
      return "May be managed on outpatient basis with adequate psychoeducational if patient has good social support";
    } else if (score >= 4 && score <= 6) {
      return "Consider admission, moderate risk";
    } else if (score >= 7) {
      return "High risk, should be admitted";
    } else {
      return "Score does not fit any category";
    }
  }

  void _submit() {
    final score = _calculateScore();
    final message = _getRiskMessage();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Assessment Result'),
          content: Text(
            'Final Score: $score\n$message',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sad Persons Scale',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DropdownButtonFormField<String>(
              value: _gender,
              onChanged: (String? newValue) {
                setState(() {
                  _gender = newValue!;
                });
              },
              decoration: const InputDecoration(labelText: 'Gender'),
              items: _genders.map((gender) {
                return DropdownMenuItem(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _ageRange,
              onChanged: (String? newValue) {
                setState(() {
                  _ageRange = newValue!;
                });
              },
              decoration: const InputDecoration(labelText: 'Age Range'),
              items: _ageRanges.map((range) {
                return DropdownMenuItem(
                  value: range,
                  child: Text(range),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _hasDepression,
              onChanged: (String? newValue) {
                setState(() {
                  _hasDepression = newValue!;
                });
              },
              decoration:
                  const InputDecoration(labelText: 'Presence of Depression'),
              items: _yesNoOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _previousAttempts,
              onChanged: (String? newValue) {
                setState(() {
                  _previousAttempts = newValue!;
                });
              },
              decoration: const InputDecoration(
                  labelText: 'Previous Attempts of Suicide'),
              items: _yesNoOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _ethanolUse,
              onChanged: (String? newValue) {
                setState(() {
                  _ethanolUse = newValue!;
                });
              },
              decoration:
                  const InputDecoration(labelText: 'Presence of Ethanol Use'),
              items: _yesNoOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _rationaleThinkingLoss,
              onChanged: (String? newValue) {
                setState(() {
                  _rationaleThinkingLoss = newValue!;
                });
              },
              decoration:
                  const InputDecoration(labelText: 'Rationale Thinking Loss'),
              items: _yesNoOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _lackOfSocialSupport,
              onChanged: (String? newValue) {
                setState(() {
                  _lackOfSocialSupport = newValue!;
                });
              },
              decoration:
                  const InputDecoration(labelText: 'Lack of Social Support'),
              items: _yesNoOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _organizedPlanning,
              onChanged: (String? newValue) {
                setState(() {
                  _organizedPlanning = newValue!;
                });
              },
              decoration:
                  const InputDecoration(labelText: 'Organized Planning'),
              items: _yesNoOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _noPartnersOrDivorced,
              onChanged: (String? newValue) {
                setState(() {
                  _noPartnersOrDivorced = newValue!;
                });
              },
              decoration:
                  const InputDecoration(labelText: 'No Partners or Divorced'),
              items: _yesNoOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            DropdownButtonFormField<String>(
              value: _sickness,
              onChanged: (String? newValue) {
                setState(() {
                  _sickness = newValue!;
                });
              },
              decoration: const InputDecoration(labelText: 'Sickness'),
              items: _yesNoOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
