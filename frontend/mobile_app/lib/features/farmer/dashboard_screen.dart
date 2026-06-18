import 'package:flutter/material.dart';
import 'upload_crop_screen.dart';
import 'damage_detection_screen.dart';
import 'claim_status_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F4),

      appBar: AppBar(
        title: const Text(
          "FasalSetu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF2E7D32),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            // Logo
            Center(
              child: Image.asset(
                'assets/images/fasalsetu_logo.png',
                height: 180,
              ),
            ),

            const SizedBox(height: 20),

            // Welcome Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color(0xFF2E7D32),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Color(0xFF2E7D32),
                    ),
                  ),

                  SizedBox(width: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Farmer 🌾",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Farmer ID : FS1024",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Farmer Details
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Padding(
                padding: const EdgeInsets.all(15),

                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.person, color: Colors.green),
                        SizedBox(width: 10),
                        Text("Farmer: Ram Kumar"),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: const [
                        Icon(Icons.location_on, color: Colors.red),
                        SizedBox(width: 10),
                        Text("Village: Ghaziabad"),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: const [
                        Icon(Icons.grass, color: Colors.green),
                        SizedBox(width: 10),
                        Text("Crop: Wheat"),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: const [
                        Icon(Icons.landscape, color: Colors.brown),
                        SizedBox(width: 10),
                        Text("Area: 3 Acres"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Crop Health Score
            Card(
              elevation: 4,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Padding(
                padding: const EdgeInsets.all(15),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.grass, color: Colors.green),

                        SizedBox(width: 10),

                        Text(
                          "Crop Health Score",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const Text("92% Healthy"),

                    const SizedBox(height: 10),

                    LinearProgressIndicator(
                      value: 0.92,
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(10),
                      backgroundColor: Colors.grey.shade300,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Weather
            Card(
              elevation: 4,

              child: const ListTile(
                leading: Icon(Icons.cloud, color: Colors.blue, size: 35),
                title: Text(
                  "Weather Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("28°C | Clear Sky"),
              ),
            ),

            const SizedBox(height: 15),

            // Claim Status
            Card(
              elevation: 4,

              child: const ListTile(
                leading: Icon(Icons.assignment, color: Colors.orange, size: 35),
                title: Text(
                  "Claim Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("No Active Claim"),
              ),
            ),

            const SizedBox(height: 15),

            // AI Prediction
            Card(
              color: Color(0xFFE8F5E9),
              elevation: 4,

              child: const ListTile(
                leading: Icon(Icons.psychology, color: Colors.green, size: 35),
                title: Text(
                  "AI Prediction",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Crop condition healthy. No significant damage detected.",
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Quick Actions",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.camera_alt),
                label: const Text("Upload Crop Image"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const UploadCropScreen()),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.analytics),
                label: const Text("AI Damage Detection"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DamageDetectionScreen(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.assignment),
                label: const Text("View Claims"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ClaimStatusScreen(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
