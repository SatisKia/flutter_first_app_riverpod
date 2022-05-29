import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import '../model.dart';
import '../view/loading_view.dart';

class MyLoadingWidget extends ConsumerStatefulWidget {
  const MyLoadingWidget({Key? key}) : super(key: key);

  @override
  MyLoadingState createState() => MyLoadingState();
}

class MyLoadingState extends MyState {
  MyLoadingState() : super( LoadingView() );

  @override
  void onReady() async {
    debugPrint( 'loading onReady' );

    // バックグラウンド画像
    SharedPreferences prefs = await SharedPreferences.getInstance();
    MyModel.app.imageFlag = prefs.getBool( 'imageFlag' ) ?? false;
    MyModel.app.imageData = prefs.getString( 'imageData') ?? '';
    MyModel.app.imageX = prefs.getDouble( 'imageX_${MyModel.app.imageData.hashCode}') ?? 0.0;
    MyModel.app.imageY = prefs.getDouble( 'imageY_${MyModel.app.imageData.hashCode}') ?? 0.0;
    if( MyModel.app.imageData.isNotEmpty ) {
      MyModel.app.image = MemoryImage( base64.decode( MyModel.app.imageData ) );
    }

    MyModel.getOptionModel(ref).setImageFlag( MyModel.app.imageFlag );
    MyModel.getOptionModel(ref).setImageX( MyModel.app.imageX );
    MyModel.getOptionModel(ref).setImageY( MyModel.app.imageY );
    if( MyModel.app.image != null ) {
      MyModel.getOptionModel(ref).setImage(MyModel.app.image);
    }

    await MyModel.calc.load();

//    await Future.delayed( const Duration( seconds: 3 ), (){ return true; } );

    go( '/number' );
  }

  @override
  void onInit(){
    debugPrint( 'loading onInit' );
  }
  @override
  void onDispose(){
    debugPrint( 'loading onDispose' );
  }
  @override
  void onEnter(){
    debugPrint( 'loading onEnter' );
  }
  @override
  void onLeave(){
    debugPrint( 'loading onLeave' );
  }
  @override
  void onPause(){
    debugPrint( 'loading onPause' );
  }
  @override
  void onResume(){
    debugPrint( 'loading onResume' );
  }
  @override
  void onBack(){
    debugPrint( 'loading onBack' );
  }
}
