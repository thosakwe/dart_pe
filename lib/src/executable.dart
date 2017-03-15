library pe.executable;

import 'package:charcode/ascii.dart';
import 'coff_file_header.dart';
part 'executable_mapper.dart';

const List<int> PE_SIGNATURE = const [$P, $E, $nul, $nul];

class Executable {
  List<int> msDosStub, signature;
  COFFFileHeader fileHeader;

  Executable({this.msDosStub, this.signature: PE_SIGNATURE});
  factory Executable.fromBytes(List<int> buf) => ExecutableMapper.parse(buf);

  List<int> compile() => ExecutableMapper.toBytes(this);
}
