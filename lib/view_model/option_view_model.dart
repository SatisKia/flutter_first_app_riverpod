import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import '../model.dart';
import '../model/calc_model.dart';
import '../view/option_view.dart';

class MyOptionArguments {
  String? returnRoute;
}

class MyOptionWidget extends ConsumerStatefulWidget {
  const MyOptionWidget({Key? key}) : super(key: key);

  @override
  MyOptionState createState() => MyOptionState();
}

class MyOptionState extends MyState {
  MyOptionState() : super( OptionView() );

  @override
  bool autoScroll(){ return true; }

  String returnRoute = '';

  // イタリック
  void setItalic(bool flag){
    MyModel.getOptionModel(ref).setItalic( flag );

    MyModel.calc.italicFlag = flag;
    MyModel.calc.save( CalcModel.saveItalicFlag );
  }

  // 桁区切り
  void setSeparator(int value){
    MyModel.getOptionModel(ref).setSeparator( value );

    MyModel.calc.separatorType = value;
    MyModel.calc.save( CalcModel.saveSeparatorType );
  }

  // 画像を読み込む
  void loadImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? imageFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if( imageFile != null ){
      File file = File.fromUri(Uri.file(imageFile.path));
      Uint8List data = file.readAsBytesSync();
      try {
        await file.delete();
      } catch(_) {
      }

      SharedPreferences prefs = await SharedPreferences.getInstance();

      MyModel.app.imageData = base64.encode(data);
      MyModel.app.imageX = prefs.getDouble( 'imageX_${MyModel.app.imageData.hashCode}') ?? 0.0;
      MyModel.app.imageY = prefs.getDouble( 'imageY_${MyModel.app.imageData.hashCode}') ?? 0.0;
      MyModel.app.image = MemoryImage( data );
      MyModel.app.imageFlag = true;

      MyModel.getOptionModel(ref).setImageFlag( MyModel.app.imageFlag );
      MyModel.getOptionModel(ref).setImageX( MyModel.app.imageX );
      MyModel.getOptionModel(ref).setImageY( MyModel.app.imageY );
      MyModel.getOptionModel(ref).setImage( MyModel.app.image );

      await prefs.setBool( 'imageFlag', MyModel.app.imageFlag );
      await prefs.setString( 'imageData', MyModel.app.imageData );
    }
  }

  // 画像を設定解除
  void removeImage() async {
    MyModel.app.imageFlag = false;
    MyModel.app.imageData = '';
    MyModel.app.image = null;

    MyModel.getOptionModel(ref).setImageFlag( MyModel.app.imageFlag );

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool( 'imageFlag', MyModel.app.imageFlag );
    await prefs.setString( 'imageData', MyModel.app.imageData );
  }

  // 水平方向の配置
  void onChangedImageX( double value ){
    MyModel.getOptionModel(ref).setImageX( value );
  }
  void onChangeEndImageX( double value ) async {
    MyModel.app.imageX = value;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble( 'imageX_${MyModel.app.imageData.hashCode}', MyModel.app.imageX );
  }

  // 垂直方向の配置
  void onChangedImageY( double value ){
    MyModel.getOptionModel(ref).setImageY( value );
  }
  void onChangeEndImageY( double value ) async {
    MyModel.app.imageY = value;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble( 'imageY_${MyModel.app.imageData.hashCode}', MyModel.app.imageY );
  }

  // 戻る
  void onButtonBack(){
    go( returnRoute );
  }

  @override
  void onReady(){
    debugPrint( 'option onReady' );

    MyModel.getOptionModel(ref).setItalic( MyModel.calc.italicFlag );
    MyModel.getOptionModel(ref).setSeparator( MyModel.calc.separatorType );
  }

  @override
  void onEnter(){
    debugPrint( 'option onEnter' );

    MyOptionArguments arguments = this.arguments as MyOptionArguments;
    returnRoute = arguments.returnRoute!;
  }

  @override
  void onBack(){
    debugPrint( 'option onBack' );

    onButtonBack();
  }

  @override
  void onInit(){
    debugPrint( 'option onInit' );
  }
  @override
  void onDispose(){
    debugPrint( 'option onDispose' );
  }
  @override
  void onLeave(){
    debugPrint( 'option onLeave' );
  }
  @override
  void onPause(){
    debugPrint( 'option onPause' );
  }
  @override
  void onResume(){
    debugPrint( 'option onResume' );
  }
}
