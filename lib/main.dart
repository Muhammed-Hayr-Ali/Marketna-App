import 'package:flutter/material.dart';
import 'package:marketna_app/app.dart';
import 'package:marketna_app/services/init_services.dart';

void main() async {
  await initServices();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
