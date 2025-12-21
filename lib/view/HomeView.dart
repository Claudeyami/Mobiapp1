import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String title = "Chưa có dữ liệu";

  Future<void> fetchData() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        title = data["title"];
      });
    } else {
      setState(() {
        title = "Lỗi khi gọi API";
      });
    }
  }
  Future<void> openWebsite() async {
    final Uri url = Uri.parse("https://flutter.dev");
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        title: const Text("Flutter Demo GET & URL Launcher"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.language),
                      label: const Text("Mở Website Flutter"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: openWebsite,
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.cloud_download),
                      label: const Text("Gọi API GET"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: fetchData,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dữ liệu nhận được:",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 8),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                title,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
