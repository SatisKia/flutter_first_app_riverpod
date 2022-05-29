import '../model.dart';
import '../model/calc_model.dart';
import 'calc_service.dart';

class CalcNumberService extends CalcService {
  @override
  void setDispError( int type ){
    if( type == CalcModel.errorTypeDivideByZero ){
      MyModel.getNumberModel(ref!).setDispStr( "Divide by zero" );
    } else if( type == CalcModel.errorTypePositiveInfinity ){
      MyModel.getNumberModel(ref!).setDispStr( "Infinity" );
    } else if( type == CalcModel.errorTypeNegativeInfinity ){
      MyModel.getNumberModel(ref!).setDispStr( "-Infinity" );
    } else if( type == CalcModel.errorTypeNotANumber ){
      MyModel.getNumberModel(ref!).setDispStr( "NaN" );
    }
  }
  @override
  void setDispResult( double value ){
    MyModel.getNumberModel(ref!).setDispStr( valueToString( value, 15 ) );
  }
  @override
  void setDispEntry( String entry ){
    MyModel.getNumberModel(ref!).setDispStr( entry );
  }
  @override
  void clearDispLog(){
    MyModel.getNumberModel(ref!).setDispLog( "" );
  }
  @override
  void setDispLog( value, opType ){
    if( opType == CalcModel.opTypeDiv ){ MyModel.getNumberModel(ref!).setDispLog( valueToString( value, 10 ) + " ÷" ); }
    if( opType == CalcModel.opTypeMul ){ MyModel.getNumberModel(ref!).setDispLog( valueToString( value, 10 ) + " ×" ); }
    if( opType == CalcModel.opTypeSub ){ MyModel.getNumberModel(ref!).setDispLog( valueToString( value, 10 ) + " -" ); }
    if( opType == CalcModel.opTypeAdd ){ MyModel.getNumberModel(ref!).setDispLog( valueToString( value, 10 ) + " +" ); }
  }
  @override
  void addDispLog( value ){
    String dispLog = MyModel.readNumberData(ref!).dispLog;
    MyModel.getNumberModel(ref!).setDispLog( dispLog + " " + valueToString( value, 10 ) + " =" );
  }
  @override
  void setDispAnswer( value ){
    MyModel.getNumberModel(ref!).setDispAnswer( valueToString( value, 10 ) );
  }
  @override
  void setDispMemory( value ){
    MyModel.getNumberModel(ref!).setDispMemory( valueToString( value, 10 ) );
  }
  @override
  void memoryRecalled( bool flag ){
    MyModel.getNumberModel(ref!).setMrcButtonText( flag ? "MC" : "MR" );
  }

  // 入力値の操作
  void delEntry(){
    updateEntryStr( false );
    if( MyModel.calc.entryStr.length == 1 ){
      MyModel.calc.entryStr = "0";
    } else {
      MyModel.calc.entryStr = MyModel.calc.entryStr.substring( 0, MyModel.calc.entryStr.length - 1 );
    }
    setDispStr( false );

    setMemoryRecalled( false );
    MyModel.calc.save( CalcModel.saveMemoryRecalled );
  }
  void addNumber( chr ){
    procOp();
    updateEntryStr( false );
    if( MyModel.calc.entryStr.contains( "." ) ){
      MyModel.calc.entryStr += chr;
    } else if( double.parse( MyModel.calc.entryStr ) == 0.0 ){
      MyModel.calc.entryStr = chr;
    } else {
      MyModel.calc.entryStr += chr;
    }
    setDispStr( false );

    setMemoryRecalled( false );
    MyModel.calc.save( CalcModel.saveMemoryRecalled );
  }
  void addPoint(){
    procOp();
    updateEntryStr( false );
    if( !MyModel.calc.entryStr.contains( "." ) ){
      MyModel.calc.entryStr += ".";
    }
    setDispStr( false );

    setMemoryRecalled( false );
    MyModel.calc.save( CalcModel.saveMemoryRecalled );
  }

  // 符号反転
  void negative(){
    clearAndSetEntry( 0.0 - getEntry() );
  }

  // 演算の予約
  void setOp( type ){
    MyModel.calc.opFlag = true;
    MyModel.calc.nextOpType = type;
    procOp();	// 前回の演算を実行

    if( type == CalcModel.opTypeSet ){
      setEntry( MyModel.calc.answer );	// 計算結果をセット
      updateEntryStr( true );
      MyModel.calc.opFlag = true;	// 次に数値入力ボタンが押された場合にprocOpが発動するように
    }
    setDispStr( true );

    setMemoryRecalled( false );
    MyModel.calc.save( CalcModel.saveMemoryRecalled );
  }

  // 演算の実行
  void procOp(){
    if( MyModel.calc.opFlag ){
      if( MyModel.calc.opType == CalcModel.opTypeSet ){
        MyModel.calc.answer = getEntry();
        MyModel.calc.save( CalcModel.saveAnswer );
      } else if( MyModel.calc.opType == CalcModel.opTypeDiv ){
        double value = getEntry();
        if( value == 0.0 ){
          MyModel.getCalcModel(ref!).setErrorFlag( true );
          MyModel.calc.errorType = CalcModel.errorTypeDivideByZero;
          errorChanged( true );
        } else {
          MyModel.calc.answer /= value;
          MyModel.calc.save( CalcModel.saveAnswer );
        }
      } else if( MyModel.calc.opType == CalcModel.opTypeMul ){
        MyModel.calc.answer *= getEntry();
        MyModel.calc.save( CalcModel.saveAnswer );
      } else if( MyModel.calc.opType == CalcModel.opTypeSub ){
        MyModel.calc.answer -= getEntry();
        MyModel.calc.save( CalcModel.saveAnswer );
      } else if( MyModel.calc.opType == CalcModel.opTypeAdd ){
        MyModel.calc.answer += getEntry();
        MyModel.calc.save( CalcModel.saveAnswer );
      }
      if( MyModel.readCalcData(ref!).errorFlag ){
        return;
      }
      setDispAnswer( MyModel.calc.answer );

      if( MyModel.calc.opType != CalcModel.opTypeSet && MyModel.calc.nextOpType == CalcModel.opTypeSet ){
        updateEntryStr( true );
        addDispLog( getEntry() );
      } else {
        if( MyModel.calc.nextOpType == CalcModel.opTypeSet ){
          clearDispLog();
        } else {
          setDispLog( MyModel.calc.answer, MyModel.calc.nextOpType );
        }
      }

      // 計算が終わったらクリア
      setEntry( 0.0 );
      MyModel.calc.entryStr = "0";

      MyModel.calc.opFlag = false;
      MyModel.calc.opType = MyModel.calc.nextOpType;
    }
  }
}
