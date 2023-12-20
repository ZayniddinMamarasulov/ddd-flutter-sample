import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sampleflutter/injection.dart';
import 'package:sampleflutter/presentation/core/app_widget.dart';

void main() {
  configureDependencies();
  runApp(const AppWidget());
}
