import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_vendor_app/constants/constants.dart';
import 'package:multi_vendor_app/my_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: kPrimary));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
