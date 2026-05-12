import 'package:flutter/material.dart';

class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({super.key});

  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  int? selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Hai Andi Lukito!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Baru Daftar Ya? Kamu Sebagai Apa?",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 30),

                roleCard(
                  index: 0,
                  title: "Pelaku Usaha",
                  image: 'assets/gambar2.jpg', 
                  color: const Color(0xFFFFB800), 
                ),

                const SizedBox(height: 20),

                
                roleCard(
                  index: 1,
                  title: "Investor",
                  image: 'assets/gambar3.jpg', 
                  color: const Color(0xFFFFB800),
                ),

                const SizedBox(height: 25),

                const Text(
                  "MUARA akan membantu mempertemukan pelaku usaha, pelanggan, dan juga investor dalam satu aplikasi!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: Colors.black87),
                ),
                
                const SizedBox(height: 40), 

               
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: selectedRole != null ? () {} : null, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5D69FF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text("Pilih Sekarang", style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget roleCard({required int index, required String title, required String image, required Color color}) {
    bool isSelected = selectedRole == index;

    return GestureDetector(
      onTap: () => setState(() => selectedRole = index),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? const Color(0xFF5D69FF) : Colors.transparent,
            width: 4,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(image, height: 100),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xFF1E88E5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}