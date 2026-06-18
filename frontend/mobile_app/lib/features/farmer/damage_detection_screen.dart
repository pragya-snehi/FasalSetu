import 'package:flutter/material.dart';

class DamageDetectionScreen extends StatelessWidget {
  const DamageDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F4),

      appBar: AppBar(
        title: const Text(
          "AI Damage Detection",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              const SizedBox(height: 10),

              const Icon(Icons.analytics, size: 100, color: Colors.green),

              const SizedBox(height: 20),

              const Text(
                "AI Crop Analysis Report",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // Detected Crop
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(Icons.grass, color: Colors.green, size: 35),
                  title: Text(
                    "Detected Crop",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Wheat"),
                ),
              ),

              const SizedBox(height: 10),

              // Damage Level
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(Icons.warning, color: Colors.orange, size: 35),
                  title: Text(
                    "Damage Level",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("12%"),
                ),
              ),

              const SizedBox(height: 10),

              // Confidence Score
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(Icons.verified, color: Colors.blue, size: 35),
                  title: Text(
                    "Model Confidence",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("97%"),
                ),
              ),

              const SizedBox(height: 10),

              // Crop Status
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 35,
                  ),
                  title: Text(
                    "Crop Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Healthy Crop 🌾"),
                ),
              ),

              const SizedBox(height: 10),

              // AI Recommendation
              Card(
                color: Colors.green.shade50,
                elevation: 4,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(Icons.lightbulb, color: Colors.green, size: 35),

                  title: Text(
                    "AI Recommendation",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  subtitle: Text(
                    "Continue irrigation and routine monitoring. No insurance claim required currently.",
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Result Banner
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const Column(
                  children: [
                    Text(
                      "AI RESULT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Crop is healthy with minimal damage. Claim verification not required at this stage.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
