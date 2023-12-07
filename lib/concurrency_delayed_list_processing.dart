/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/concurrency_delayed_list_processing_base.dart';

/*
Practice Question 1: Delayed List Processing

Task:

Write a function named processListAsync that takes a list of integers. 
For each integer in the list, the function should perform an asynchronous operation 
(e.g., multiplying the number by a constant) using Future.delayed. 
The function should return a Future<List<int>> with the processed numbers.
 */

Future<List<int>> processListAsync(List<int> input) async{
  // List<int> ans = [];
  // for(int indivInt in input){
  //   Future.delayed(Duration(milliseconds: 10)).then((_) => ans.add(indivInt * 2));
  // }
  // return ans;
  List<int> ans = [];
  await for (int indivInt in Stream.fromIterable(input)){
    await Future.delayed(Duration(milliseconds: 10)).then((_) => ans.add(indivInt * 2));
  }

  return ans;
}