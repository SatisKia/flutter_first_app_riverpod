import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../model.dart';
import '../model/calc_model.dart';
import '../service.dart';
import '../view/number_view.dart';

class MyNumberWidget extends ConsumerStatefulWidget {
  const MyNumberWidget({Key? key}) : super(key: key);

  @override
  MyNumberState createState() => MyNumberState();
}

class MyNumberState extends MyState {
  MyNumberState() : super( NumberView() );

  @override
  void onReady(){
    debugPrint( 'number onReady' );

    MyService.calcNumber.initWithRef(ref);
  }

  @override
  void onBack(){
    debugPrint( 'number onBack' );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => CupertinoAlertDialog(
          title: const Text("アプリ終了"),
          content: const Text("アプリを終了してもよろしいですか？"),
          actions: [
            CupertinoDialogAction(
              child: const Text('いいえ'),
              onPressed: (){ closeDialog(); },
            ),
            CupertinoDialogAction(
              child: const Text('はい'),
              onPressed: (){ finish(); },
            )
          ],
        )
    );
  }

  void vibrate(){
    // TODO: 振動機能呼び出し
  }

  void onButtonNumber( Function() function ){
    if( !MyModel.readCalcData(ref).errorFlag ){
      vibrate();
      function();
    }
  }
  void onButtonClear( bool allFlag ){
    vibrate();
    MyService.calcNumber.clearEntry( allFlag );
  }
  void onButtonMAdd(){ onButtonNumber( (){ MyService.calcNumber.addMemory(); } ); }
  void onButtonMSub(){ onButtonNumber( (){ MyService.calcNumber.subMemory(); } ); }
  void onButtonMRC(){ onButtonNumber( (){ if( MyModel.calc.memoryRecalled ){ MyService.calcNumber.clearMemory(); } else { MyService.calcNumber.recallMemory(); } } ); }
  void onButtonFunction(){ onButtonNumber( (){ MyService.calcNumber.setOp( CalcModel.opTypeSet ); goNoDuration( '/function' ); } ); }
  void onButtonCE(){ onButtonClear( false ); }
  void onButtonC(){ onButtonClear( true ); }
  void onButtonDEL(){ if( !MyModel.readCalcData(ref).errorFlag && MyModel.calc.entryFlag ){ vibrate(); MyService.calcNumber.delEntry(); } }
  void onButtonDiv(){ onButtonNumber( (){ MyService.calcNumber.setOp( CalcModel.opTypeDiv ); } ); }
  void onButtonMul(){ onButtonNumber( (){ MyService.calcNumber.setOp( CalcModel.opTypeMul ); } ); }
  void onButtonSub(){ onButtonNumber( (){ MyService.calcNumber.setOp( CalcModel.opTypeSub ); } ); }
  void onButtonAdd(){ onButtonNumber( (){ MyService.calcNumber.setOp( CalcModel.opTypeAdd ); } ); }
  void onButton0(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "0" ); } ); }
  void onButton1(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "1" ); } ); }
  void onButton2(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "2" ); } ); }
  void onButton3(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "3" ); } ); }
  void onButton4(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "4" ); } ); }
  void onButton5(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "5" ); } ); }
  void onButton6(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "6" ); } ); }
  void onButton7(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "7" ); } ); }
  void onButton8(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "8" ); } ); }
  void onButton9(){ onButtonNumber( (){ MyService.calcNumber.addNumber( "9" ); } ); }
  void onButtonPoint(){ onButtonNumber( (){ MyService.calcNumber.addPoint(); } ); }
  void onButtonNegative(){ onButtonNumber( (){ MyService.calcNumber.negative(); } ); }
  void onButtonEqual(){ onButtonNumber( (){ MyService.calcNumber.setOp( CalcModel.opTypeSet ); } ); }

  @override
  void onInit(){
    debugPrint( 'number onInit' );
  }
  @override
  void onDispose(){
    debugPrint( 'number onDispose' );
  }
  @override
  void onEnter(){
    debugPrint( 'number onEnter' );
  }
  @override
  void onLeave(){
    debugPrint( 'number onLeave' );
  }
  @override
  void onPause(){
    debugPrint( 'number onPause' );
  }
  @override
  void onResume(){
    debugPrint( 'number onResume' );
  }
}
