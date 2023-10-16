import 'package:flutter/material.dart';
import 'package:login/formdatascreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.amber),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController ucontroller = TextEditingController();
  TextEditingController pcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  String selectedGender = '';
  DateTime _selectedDateOfBirth = DateTime(2000, 09, 3);

  Future<void> _selectDateOfBirth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedDateOfBirth = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Form')),
      ),
      body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: ucontroller,
                  decoration: const InputDecoration(
                      labelText: "Name", border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                        labelText: "email", border: OutlineInputBorder()),
                    validator: (value) {
                      RegExp regex = RegExp(
                          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                      if (value!.isEmpty) {
                        return "Please enter an email address";
                      } else if (!regex.hasMatch(value)) {
                        return "Please enter a valid email address";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: pcontroller,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: "Password", border: OutlineInputBorder()),
                    validator: (value) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (value!.length < 8) {
                        return 'Password must contain at least 8 characters';
                      } else if (!regex.hasMatch(value)) {
                        return 'Password must contain at least 1 lowercase, 1 uppercase and 1  special character';
                      } else {
                        return null;
                      }
                    }),
                Column(
                  children: [
                    const Text(
                      'Select your gender:',
                      style: TextStyle(fontSize: 20),
                    ),
                    RadioListTile(
                      title: const Text('Male'),
                      value: 'Male',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('Female'),
                      value: 'Female',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('Others'),
                      value: 'Others',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Select Your Date of Birth',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => _selectDateOfBirth(context),
                      child: const Text('Pick a Date'),
                    ),
                    const SizedBox(height: 20),
                    _selectedDateOfBirth != null
                        ? Text(
                            'Date of Birth: ${_selectedDateOfBirth.toLocal()}'
                                .split(' ')[3],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        : const SizedBox(),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormDataScreen(
                              name: ucontroller.text,
                              email: emailcontroller.text,
                              gender: selectedGender,
                              dateOfBirth: _selectedDateOfBirth,
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text("Submit"))
              ],
            ),
          )),
    );
  }
}
