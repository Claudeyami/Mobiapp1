import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherView extends StatelessWidget {
  const UrlLauncherView({super.key});

  Future<void> openWebsite() async {
    final Uri url = Uri.parse("https://flutter.dev");
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("URL Launcher"),
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.language),
          label: const Text("Mở Website Flutter"),
          onPressed: openWebsite,
        ),
      ),
    );
  }
}
