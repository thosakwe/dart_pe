part of pe.executable;

abstract class ExecutableMapper {
  static Executable parse(List<int> buf) => null;
  static List<int> toBytes(Executable executable) => null;
}
