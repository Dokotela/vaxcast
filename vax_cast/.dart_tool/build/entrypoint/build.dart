// Ensure that the build script itself is not opted in to null safety,
// instead of taking the language version from the current package.
//
// @dart=2.9
//
// ignore_for_file: directives_ordering
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:source_gen/builder.dart' as _i2;
import '../../../vax_cast/supporting_data/supporting_data_builder/supporting_data_builder.dart'
    as _i3;
import 'dart:isolate' as _i4;
import 'package:build_runner/build_runner.dart' as _i5;
import 'dart:io' as _i6;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(r'source_gen:combining_builder', [_i2.combiningBuilder],
      _i1.toNoneByDefault(),
      hideOutput: false, appliesBuilders: const [r'source_gen:part_cleanup']),
  _i1.apply(r'vax_cast:supportingDataBuilder', [_i3.supportingDataBuilder],
      _i1.toDependentsOf(r'vax_cast'),
      hideOutput: false),
  _i1.applyPostProcess(r'source_gen:part_cleanup', _i2.partCleanup)
];
void main(List<String> args, [_i4.SendPort sendPort]) async {
  var result = await _i5.run(args, _builders);
  sendPort?.send(result);
  _i6.exitCode = result;
}