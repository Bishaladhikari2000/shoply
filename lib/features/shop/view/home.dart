// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_shapes/container/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // Header
          children: [PrimaryHeaderContainer(child: Column(children: []))],
        ),
      ),
    );
  }
}
