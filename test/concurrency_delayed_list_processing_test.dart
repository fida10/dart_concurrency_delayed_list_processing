import 'package:concurrency_delayed_list_processing/concurrency_delayed_list_processing.dart';
import 'package:test/test.dart';

void main() {
  test('processListAsync processes each number asynchronously', () async {
    var result = await processListAsync([1, 2, 3]);
    // Assuming the function doubles each number in the list
    expect(result, equals([2, 4, 6]));
  });
}
