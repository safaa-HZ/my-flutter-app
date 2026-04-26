import 'package:flutter/material.dart';
class Customer1 extends StatefulWidget {
  const Customer1({super.key});
  @override
  State<Customer1> createState() => _Customer12State();
}
class _Customer12State extends State<Customer1> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  bool _isEmailValid = true;
  bool _isPasswordValid = true;
  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(() => setState(() {}));
    _passwordFocus.addListener(() => setState(() {}));
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }
  Widget _buildTextField({
    required String hint,
    required TextEditingController controller,
    required FocusNode focusNode,
    required bool isValid,
    required IconData icon,
    required Function(String) onChanged,
    bool isPassword = false,
  }) {
    bool isFocused = focusNode.hasFocus;
    return SizedBox(
      width: 320,
      height: 56,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        onChanged: onChanged,
        obscureText: isPassword,
        style: const TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: !isValid 
              ? const Color(0xFFFBAEB0) 
              : (isFocused ? const Color(0xFFCBDCFC) : const Color(0xFFFBF7F2)),
          hintText: hint,
          hintStyle: TextStyle(color: !isValid ? const Color(0xFF7F1214) : const Color(0xFF968A8A)),
          prefixIcon: Icon(icon, color: !isValid ? const Color(0xFF7F1214) : (isFocused ? Colors.blue : Colors.grey)),         
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: !isValid ? const Color(0xFF7F1214) : Colors.transparent,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: !isValid ? const Color(0xFF7F1214) : const Color(0xFF1540CE),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4ECDD),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("image/home.png", width: 50, height: 50, errorBuilder: (c, e, s) => const Icon(Icons.home, size: 50)),
                  const SizedBox(width: 20),
                  const Text("AT Your \nDoor",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24, fontFamily: 'Inter')),
                ],
              ),
              const SizedBox(height: 10),
              const Column(
                children: [
                  Text("Welcome Back",
                      style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 36)),
                  Text("Login to continue using the service"),
                ],
              ),
              const SizedBox(height: 10),
              Image.asset("image/homme.png", width: 338, height: 225, errorBuilder: (c, e, s) => const Icon(Icons.person, size: 100)),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: MaterialButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    color: const Color(0xFF2B2B2B),
                    height: 37,
                    minWidth: 154,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: const Text("Customer", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                  ),
                ),
              ),
              _buildTextField(
                hint: "ENTER YOUR EMAIL",
                controller: emailController,
                focusNode: _emailFocus,
                isValid: _isEmailValid,
                icon: Icons.email_outlined,
                onChanged: (val) => setState(() => _isEmailValid = val.isNotEmpty),
              ),         
              const SizedBox(height: 15),
              _buildTextField(
                hint: "ENTER YOUR PASSWORD",
                controller: passwordController,
                focusNode: _passwordFocus,
                isValid: _isPasswordValid,
                icon: Icons.lock_outline,
                isPassword: true,
                onChanged: (val) => setState(() => _isPasswordValid = val.isNotEmpty),
              ),
              const SizedBox(height: 15),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _isEmailValid = emailController.text.isNotEmpty;
                    _isPasswordValid = passwordController.text.isNotEmpty;
                  });
                },
                textColor: Colors.white,
                color: const Color(0xFF4A4A4A),
                height: 56,
                minWidth: 320,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                child: const Text("connect", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}