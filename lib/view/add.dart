import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController _habitNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
   @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/image 1 (1).png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 55),
                      child: Center(
                        child: Text(
                          'Start New Habit',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Enter Your Habit Name',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, right: 68),
                                  child: TextFormField(
                                    controller: _habitNameController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter habit name';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        // IconButton(
                        //   icon: Padding(
                        //     padding: const EdgeInsets.only(right: 30, top: 15
                        //     ),
                        //     child: Icon(
                        //       selectedIcon ?? Icons.mood_outlined,
                        //       size: 30,
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        //   onPressed: () {
                        //     setState(() {
                        //       showIconPicker = !showIconPicker;
                        //     });
                        //   },
                        // ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Description(Optional)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 68),
                      child: TextFormField(
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Date and Time:',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15, left: 10),
                            child: TextFormField(
                              controller: _dateController,
                              readOnly: true,
                              // onTap: () => _selectDate(context),
                              decoration: const InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                fillColor: Colors.white,
                                hintText: 'Select Date',
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: TextFormField(
                              controller: _timeController,
                              readOnly: true,
                              // onTap: () => _selectTime(context),
                              decoration: const InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                fillColor: Colors.white,
                                hintText: 'Select Time',
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),

                    // const Padding(
                    //   padding: EdgeInsets.only(left: 10),
                    // child: Text(
                    //   'Select Icon:',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //     color: Colors.white,
                    //     fontStyle: FontStyle.italic,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),

                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      // child: _buildIconGrid(),
                    ),
                    const SizedBox(
                      height: 40,
                      width: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState?.validate() == true) {
                              String habitName = _habitNameController.text;
                              String description = _descriptionController.text;
                              String date = _dateController.text;
                              String time = _timeController.text;

                              print('Habit Name: $habitName');
                              print('Description: $description');
                              print('Date: $date');
                              print('Time: $time');
                              // if (selectedIcon != null) {
                              //   print('Icon: $selectedIcon');
                              // }
                            }
                          },
                          child: const Text(
                            '     Submit     ',
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF29068D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

