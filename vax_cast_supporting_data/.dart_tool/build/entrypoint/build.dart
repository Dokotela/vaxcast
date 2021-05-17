// Ensure that the build script itself is not opted in to null safety,
// instead of taking the language version from the current package.
//
// @dart=2.9
//
// ignore_for_file: directives_ordering
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import '../../../supporting_data_builder/supporting_data_builder.dart' as _i2;
import 'dart:isolate' as _i3;
import 'package:build_runner/build_runner.dart' as _i4;
import 'dart:io' as _i5;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
      r'vax_cast_supporting_data:supportingDataBuilder',
      [_i2.supportingDataBuilder],
      _i1.toDependentsOf(r'vax_cast_supporting_data'),
      hideOutput: false)
];
void main(List<String> args, [_i3.SendPort sendPort]) async {
  var result = await _i4.run(args, _builders);
  sendPort?.send(result);
  _i5.exitCode = result;
}
