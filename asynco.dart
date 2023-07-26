import 'dart:async';
import 'dart:math';

// Asynchronous function with a loop
Future<void> asyncFunction(int id) async {
  for (int i = 0; i < 5; i++) {
    int randomInt = Random().nextInt(100);
    print("Function $id: Random Int: $randomInt");
    // gelecek sonucu awaitle bekle / delaydan sonuç al
    await Future.delayed(Duration(seconds: 1));
  }
  print("Function $id completed.");
}

void main() async {
  print("Starting asynchronous functions...");

  // Run all three functions asynchronously using await
  await Future.wait([asyncFunction(1), asyncFunction(2), asyncFunction(3)]);

  print("All functions completed.");
}
