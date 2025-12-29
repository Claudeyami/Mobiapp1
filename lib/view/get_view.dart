import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetView extends StatefulWidget {
  const GetView({super.key});

  @override
  State<GetView> createState() => _GetViewState();
}

class _GetViewState extends State<GetView> {
  String result = "Chưa gọi API";

  Future<void> fetchData() async {
    setState(() {
      result = "⏳ Đang gọi API...";
    });

    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        result =
            "✅ Gọi API thành công!\n\n"
            "Tiêu đề trả về:\n"
            "${data["title"]}";
      });
    } else {
      setState(() {
        result = "❌ Gọi API thất bại";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP GET"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.cloud_download),
              label: const Text("Gọi API GET"),
              onPressed: fetchData,
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(result),
            ),
          ],
        ),
      ),
    );
  }
}
