// 异常处理

// throw Exception('aaaa');
// throw 'bbbbb';
// 处理异常方法 try on catch

// 自定义异常
// dart中的每个异常类型都是内置类Exception的子类，可以通过扩展现有的异常来创建自定义异常
class AmtException implements Exception {
  // can contain constructors, variable and methods
  String errMsg() => 'Amount should be greater than zero';
}

void withdraw_amt(int amt) {
  if (amt <= 0) {
    throw new AmtException();
  }
}

void main() {
  int handleCatch() {
    throw Exception('exception');
  }

  try {
    withdraw_amt(-1);
  } on AmtException catch (e) {
    print('自定义异常');
    print('withdraw_amt: ${e.errMsg()}');
  } finally {
    print('Ending requested operation');
  }

  try {
    handleCatch();
  } on Exception catch (e, s) {
    // 需要指定异常类型时用on
    print('Unknown exception: $e');
    print('_StackTrace: ${s.toString()}');
  } catch (e, s) {
    // 当程序需要捕获异常对象时用catch
    print('Something really unknown: $e');
    print('_StackTrace: ${s.toString()}');
    // 如果你无法完全处理该异常，请使用 rethrow 关键字再次抛出异常：
    // rethrow
  } finally {
    print("无论是否抛出异常都会执行的代码");
  }

  // 内置的异常
  // DeferredLoadException 延迟库无法加载时抛出
  // formatException 当字符串或某些其他数据没有预期格式且无法解析或处理时抛出异常
  // IntegerDivisionByZeroException 当数字除以0时抛出
  // IOEException所有与输入输出相关的异常的基类
  // IsolateSpawnException 无法创建隔离时抛出异常
  // Timeout 在等待异步结果时发生计划超时时抛出异常
}
