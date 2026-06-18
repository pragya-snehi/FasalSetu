import 'package:flutter/material.dart';

class UploadCropScreen extends StatelessWidget {
  const UploadCropScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9F4),

      appBar: AppBar(
        title: const Text("Upload Crop Image"),
        backgroundColor: const Color(0xFF2E7D32),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 20),

            const Icon(
              Icons.camera_alt,
              size: 100,
              color: Colors.green,
            ),

            const SizedBox(height: 20),

            const Text(
              "Crop Image Uploaded",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: const Icon(Icons.image,color: Colors.green),
                title: const Text("Image File"),
                subtitle: const Text("wheat_field.jpg"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on,color: Colors.red),
                title: const Text("GPS Location"),
                subtitle: const Text("Ghaziabad, Uttar Pradesh"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.verified,color: Colors.green),
                title: const Text("Verification Status"),
                subtitle: const Text("Geo-tag Verified ✅"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}