import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Task {
  final String title;
  final DateTime date;
  final TimeOfDay time;
  final String category;
  final String priority;
  final bool isImportant;
  final bool notifyMe;
  final String notes;

  Task({
    required this.title,
    required this.date,
    required this.time,
    required this.category,
    required this.priority,
    required this.isImportant,
    required this.notifyMe,
    required this.notes,
  });


  @override
  String toString() {

    final dateString = "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";

    final timeString = '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';

    return """
Task: ${title.isEmpty ? 'No Title' : title}
Date: $dateString
Time: $timeString
Category: $category
Priority: $priority
Important: ${isImportant ? 'Yes' : 'No'}
Notification: ${notifyMe ? 'Enabled' : 'Disabled'}
Notes: ${notes.isEmpty ? 'No Notes' : notes}
""";

  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Planner UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      home: DailyPlannerPage(),
    );
  }
}

class DailyPlannerPage extends StatefulWidget {
  @override
  _DailyPlannerPageState createState() => _DailyPlannerPageState();
}

class _DailyPlannerPageState extends State<DailyPlannerPage> {

  final TextEditingController taskController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();


  String taskCategory = "Work";


  String priorityValue = "Low";

  bool isImportant = false;


  bool notifyMe = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  String _formatTime(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  void _createAndShowTaskSummary(BuildContext context) {
    final Task newTask = Task(
      title: taskController.text,
      date: _selectedDate,
      time: _selectedTime,
      category: taskCategory,
      priority: priorityValue,
      isImportant: isImportant,
      notifyMe: notifyMe,
      notes: notesController.text,
    );


    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Task Created (Model Preview)"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const Text("A Task object has been structured:", style: TextStyle(fontWeight: FontWeight.bold)),
                const Divider(),
                Text(newTask.toString()),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text("OK", style: TextStyle(color: Colors.blue)),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Daily Planner"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),


      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              _buildSectionTitle("Task Title  "),
              TextField(
                controller: taskController,
                decoration: const InputDecoration(
                  hintText: "Enter task title ",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20),


              _buildSectionTitle("Date & Time "),
              Row(
                children: [
                  Expanded(
                    child: _buildTimePickerButton(
                      context,
                      label: "Date",
                      value: "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
                      onPressed: () => _selectDate(context),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildTimePickerButton(
                      context,
                      label: "Time",
                      value: _formatTime(_selectedTime),
                      onPressed: () => _selectTime(context),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),


              _buildSectionTitle("Category "),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    _buildRadioTile("Work  ", "Work"),
                    _buildRadioTile("Personal", "Personal"),
                    _buildRadioTile("Health  ", "Health"),
                  ],
                ),
              ),

              const SizedBox(height: 20),



              _buildSectionTitle("Notes "),
              TextField(
                controller: notesController,
                maxLines: 3,
                decoration: const InputDecoration(
                  hintText: "Additional notes",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20),


              _buildSectionTitle("Priority "),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: priorityValue,
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(value: "Low", child: Text("Low")),
                      DropdownMenuItem(value: "Medium", child: Text("Medium ")),
                      DropdownMenuItem(value: "High", child: Text("High ")),
                    ],
                    onChanged: (String? value) {
                      if (value != null) {
                        setState(() {
                          priorityValue = value;
                        });
                      }
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),


              Row(
                children: [
                  Checkbox(
                    value: isImportant,
                    onChanged: (value) {
                      setState(() {
                        isImportant = value!;
                      });
                    },
                  ),
                  const Text("Mark as important", style: TextStyle(fontSize: 16)),
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Notify me",
                      style: TextStyle(fontSize: 16)),
                  Switch(
                    value: notifyMe,
                    onChanged: (value) {
                      setState(() {
                        notifyMe = value;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                ],
              ),

              const SizedBox(height: 30),


              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _createAndShowTaskSummary(context),
                  child: const Text("Create Task"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
    );
  }

  Widget _buildTimePickerButton(BuildContext context, {required String label, required String value, required VoidCallback onPressed}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(12),
            side: const BorderSide(color: Colors.blue),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const Icon(Icons.edit, size: 20, color: Colors.blue),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Center(child: Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey))),
      ],
    );
  }

  Widget _buildRadioTile(String title, String value) {
    return RadioListTile<String>(
      title: Text(title, style: const TextStyle(fontSize: 15)),
      value: value,
      groupValue: taskCategory,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            taskCategory = newValue;
          });
        }
      },
      activeColor: Colors.blue,
    );
  }
}