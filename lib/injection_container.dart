import 'package:di_basic/app_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  debugPrint('setup is called');
  // 1. singleton
  // アプリ起動・リロード時にインスタンスを生成
  locator.registerSingleton<AppService>(AppService());

  // 2. lazy singleton
  // アプリ起動・リロード時に同じインスタンスは作成されない
  // ボタンを押して初めてインスタンスが生成される
  // もう一度押しても生成はされない
  // locator.registerLazySingleton<AppService>(() => AppService());

  // 3. factory
  // アプリ起動・リロード時・ボタンを押すたびにインスタンスが新しく生成される
  // locator.registerFactory<AppService>(() => AppService());
}
