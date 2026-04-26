import 'package:flutter/material.dart';
class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _Customer2State();
}
class _Customer2State extends State<Customer> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController familyNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _familyFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();
  bool _isNameValid = true;
  bool _isFamilyValid = true;
  bool _isEmailValid = true;
  bool _isPasswordValid = true;
  bool _isPhoneValid = true;
  @override
  void initState() {
    super.initState();
    _nameFocus.addListener(() => setState(() {}));
    _familyFocus.addListener(() => setState(() {}));
    _emailFocus.addListener(() => setState(() {}));
    _passwordFocus.addListener(() => setState(() {}));
    _phoneFocus.addListener(() => setState(() {}));
  }
  @override
  void dispose() {
    nameController.dispose();
    familyNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    _nameFocus.dispose();
    _familyFocus.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    _phoneFocus.dispose();
    super.dispose();
  }
  Widget _buildTextField({
    required String hint,
    required String errorLabel,
    required TextEditingController controller,
    required FocusNode focusNode,
    required bool isValid,
    required Widget prefixWidget, 
    required Function(String) onChanged,
    bool isPassword = false,
  }) {
    bool isFocused = focusNode.hasFocus;
    Color getFillColor() {
      if (!isValid) return const Color(0xFFFBAEB0); 
      if (isFocused) return const Color(0xFFCBDCFC);
      return const Color(0xFFFBF7F2); 
    }

    Color getBorderColor() {
      if (!isValid) return const Color(0xFF7F1214);
      if (isFocused) return const Color(0xFF1540CE); 
      return Colors.transparent;
    }

    return Container(
      width: 320,
      margin: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        onChanged: onChanged,
        obscureText: isPassword,
        style: const TextStyle(fontWeight: FontWeight.w800, color: Colors.black, fontFamily: 'Inter'),
        decoration: InputDecoration(
          filled: true,
          fillColor: getFillColor(),
          hintText: hint,
          errorText: isValid ? null : "$errorLabel obligatoire",
          hintStyle: const TextStyle(color: Color(0xFF968A8A), fontSize: 14),
          prefixIcon: prefixWidget,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: getBorderColor(), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: getBorderColor(), width: 2),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4ecdd),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("image/home.png", width: 50, height: 50, errorBuilder: (c, e, s) => const Icon(Icons.home, size: 50)),
                const SizedBox(width: 15),
                const Text("AT Your\n Door", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: 'Inter')),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Welcome Back", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 36, fontFamily: 'Inter')),
            const Text("Login to continue using the service", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, fontFamily: 'Inter')),
            const SizedBox(height: 30),
            _buildTextField(
              hint: "ENTER YOUR NAME",
              errorLabel: "Name",
              controller: nameController,
              focusNode: _nameFocus,
              isValid: _isNameValid,
              prefixWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("image/persone.png", width: 24, height: 24),
              ),
              onChanged: (val) => setState(() => _isNameValid = val.isNotEmpty),
            ),
            _buildTextField(
              hint: "ENTER YOUR FAMILY NAME",
              errorLabel: "Family Name",
              controller: familyNameController,
              focusNode: _familyFocus,
              isValid: _isFamilyValid,
              prefixWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("image/persone.png", width: 24, height: 24),
              ),
              onChanged: (val) => setState(() => _isFamilyValid = val.isNotEmpty),
            ),
            _buildTextField(
              hint: "ENTER YOUR EMAIL",
              errorLabel: "Email",
              controller: emailController,
              focusNode: _emailFocus,
              isValid: _isEmailValid,
              prefixWidget: Icon(Icons.email_outlined, color: _isEmailValid ? Colors.grey : Colors.red),
              onChanged: (val) => setState(() => _isEmailValid = val.isNotEmpty),
            ),
            _buildTextField(
              hint: "ENTER YOUR PASSWORD",
              errorLabel: "Password",
              controller: passwordController,
              focusNode: _passwordFocus,
              isValid: _isPasswordValid,
              prefixWidget: Icon(Icons.lock, color: _isPasswordValid ? Colors.grey : Colors.red),
              isPassword: true,
              onChanged: (val) => setState(() => _isPasswordValid = val.isNotEmpty),
            ),
            _buildTextField(
              hint: "ENTER YOUR PHONE NUMBER",
              errorLabel: "Phone",
              controller: phoneController,
              focusNode: _phoneFocus,
              isValid: _isPhoneValid,
              prefixWidget: Icon(Icons.phone, color: _isPhoneValid ? Colors.grey : Colors.red),
              onChanged: (val) => setState(() => _isPhoneValid = val.isNotEmpty),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                setState(() {
                  _isNameValid = nameController.text.isNotEmpty;
                  _isFamilyValid = familyNameController.text.isNotEmpty;
                  _isEmailValid = emailController.text.isNotEmpty;
                  _isPasswordValid = passwordController.text.isNotEmpty;
                  _isPhoneValid = phoneController.text.isNotEmpty;
                });
              },
              color: const Color(0xFF4A4A4A),
              textColor: Colors.white,
              minWidth: 320,
              height: 56,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              child: const Text("Connect", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}