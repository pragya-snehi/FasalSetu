import 'package:flutter/material.dart';

class ClaimStatusScreen extends StatelessWidget {
  const ClaimStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F4),

      appBar: AppBar(
        title: const Text(
          "Insurance Claim Tracker",
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

              const Icon(
                Icons.assignment_turned_in,
                size: 100,
                color: Colors.green,
              ),

              const SizedBox(height: 20),

              const Text(
                "PMFBY Claim Status",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              // Claim ID
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(
                    Icons.confirmation_number,
                    color: Colors.blue,
                    size: 35,
                  ),
                  title: Text(
                    "Claim ID",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("FS2026-001"),
                ),
              ),

              const SizedBox(height: 10),

              // Status
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(
                    Icons.hourglass_bottom,
                    color: Colors.orange,
                    size: 35,
                  ),
                  title: Text(
                    "Current Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Pending Verification"),
                ),
              ),

              const SizedBox(height: 10),

              // Settlement
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(
                    Icons.currency_rupee,
                    color: Colors.green,
                    size: 35,
                  ),
                  title: Text(
                    "Estimated Settlement",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("₹15,000"),
                ),
              ),

              const SizedBox(height: 20),

              // Progress
              Card(
                elevation: 4,

                child: Padding(
                  padding: const EdgeInsets.all(15),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Claim Progress",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      LinearProgressIndicator(
                        value: 0.75,
                        minHeight: 12,
                        borderRadius: BorderRadius.circular(10),
                        backgroundColor: Colors.grey.shade300,
                        color: Colors.green,
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "75% Completed",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Timeline
              Card(
                color: Colors.green.shade50,
                elevation: 4,

                child: const Padding(
                  padding: EdgeInsets.all(15),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Verification Timeline",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text("✅ Claim Submitted"),

                      SizedBox(height: 5),

                      Text("✅ AI Damage Assessment Completed"),

                      SizedBox(height: 5),

                      Text("✅ Field Verification Initiated"),

                      SizedBox(height: 5),

                      Text("⏳ Final Approval Pending"),
                    ],
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
                      "CLAIM UPDATE",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Your crop insurance claim is under verification. Estimated settlement amount is ₹15,000.",
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
