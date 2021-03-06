namespace scala com.gu.fezziwig

struct StructC {
  1: required string s
}

struct StructD {
  1: required string s
}

union Union {
  1: StructC c
  2: StructD d
}

enum Enum {
  ENUM_A = 0
  ENUM_B = 1
}

struct StructB {
  1: required Union u
}

struct StructA {
  1: required StructB b
  2: optional string foo
  3: optional i32 bar
  4: required Enum e
  5: required map<string, list<i32>> intMap
}
