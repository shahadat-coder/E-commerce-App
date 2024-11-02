import 'package:bloc_ecommerce/app.dart';
import 'package:bloc_ecommerce/src/blocs/bloc_ecommerce_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = BlocEcommerceObserver();
  runApp(const BlocEcommerceApp());
}