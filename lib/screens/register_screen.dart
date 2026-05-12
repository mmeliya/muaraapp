import 'package:flutter/material.dart';
import 'login_screen.dart'; 
import 'choose_role_screen.dart'; 

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/gambar1.jpg', height: 80), 
                    const Text(
                      "MUARA", 
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2)
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

             
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Masuk", 
                      style: TextStyle(fontSize: 18, color: Colors.black54)
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Daftar", 
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)
                      ),
                      const SizedBox(height: 4),
                      Container(height: 3, width: 50, color: Colors.blue), 
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),

              buildInputLabel("Nama Lengkap"),
              buildTextField("Nama kamu"),
              const SizedBox(height: 15),

              buildInputLabel("Email/No Wa"),
              buildTextField("Email/No Wa kamu"),
              const SizedBox(height: 15),

              buildInputLabel("Password"),
              buildTextField("Masukkan password", isPassword: true),
              const SizedBox(height: 15),

              buildInputLabel("Konfirmasi Password"),
              buildTextField("Masukkan konfirmasi password", isPassword: true),
              const SizedBox(height: 30),

              
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChooseRoleScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5D69FF),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Daftar Sekarang", 
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)
                  ),
                ),
              ),

              const SizedBox(height: 25),
              
              const Center(
                child: Text("——— Atau Masuk Dengan ———", style: TextStyle(color: Colors.grey, fontSize: 12)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  socialButton("Google", Icons.g_mobiledata), 
                  socialButton("Apple", Icons.apple),
                ],
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Dengan ini, kamu menyetujui tentang\nKetentuan Layanan",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
    );
  }

  Widget buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
    );
  }

  Widget socialButton(String label, IconData icon) {
    return Container(
      width: 140,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}