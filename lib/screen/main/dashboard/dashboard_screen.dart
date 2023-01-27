import 'package:flutter/material.dart';

import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Header(),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    height: 500,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.purple,
                    height: 500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
