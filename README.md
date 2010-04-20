Pig throws an error here because it can't cast DefaultDataBags to java Lists when it attempts to store the repeated NestedField message in the given protobuf interface. The store function it uses is generated using HadoopProtoCodeGenerator in elephant-bird 1.0.

See issue: http://github.com/kevinweil/elephant-bird/issues/#issue/3