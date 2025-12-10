import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String name = "";
  String? nameError;
  String? emailError;
  String? passError;

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Converter Page"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 3,
      ),

      // 🔥 BACKGROUND GRADIENT
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF223344),
              Color(0xFF112233),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(
          child: SizedBox(
            height: 500,
            width: 330,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xFF3B4A59),

              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      "User Form",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 🔹 NAME FIELD
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        errorText: nameError,
                        hintText: "Enter Your Name",
                        labelText: "Name",
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 🔹 EMAIL FIELD
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        errorText: emailError,
                        hintText: "Enter Email",
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 🔹 PASSWORD FIELD
                    TextField(
                      controller: passController,
                      obscureText: !showPassword,
                      decoration: InputDecoration(
                        errorText: passError,
                        hintText: "Enter Password",
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock),

                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          icon: Icon(
                            showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // 🔥 BUTTONS SECTION
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // SUBMIT BUTTON
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Reset Errors
                              nameError = null;
                              emailError = null;
                              passError = null;

                              // Validation
                              if (nameController.text.isEmpty) {
                                nameError = "Name required";
                              }
                              if (emailController.text.isEmpty ||
                                  !emailController.text.contains("@")) {
                                emailError = "Valid email required";
                              }
                              if (passController.text.length < 6) {
                                passError = "Min 6 characters";
                              }

                              // Success
                              if (nameError == null &&
                                  emailError == null &&
                                  passError == null) 
                              {
                                name = nameController.text;

                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Form Submitted Successfully!"),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            fixedSize: const Size(100, 45),
                          ),
                          child: const Text(
                            "Submit",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),

                        // RESET BUTTON
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nameController.clear();
                              emailController.clear();
                              passController.clear();
                              name = "";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            fixedSize: const Size(100, 45),
                          ),
                          child: const Text(
                            "Reset",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // OUTPUT BOX
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF253140),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Output: $name",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
