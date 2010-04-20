REGISTER ./lib/elephant-bird-1.0.jar;
REGISTER ./lib/google-collect-1.0.jar;
REGISTER ./lib/hadoop-core-0.20.1+133.jar;
REGISTER ./lib/hadoop-lzo-0.3.0.jar;
REGISTER ./lib/pig-core-0.4.99.0+7.jar;
REGISTER ./lib/protobuf-java-2.3.0.jar;
REGISTER ./doopgen.jar;

data = LOAD '$DATA' USING PigStorage() AS (
	id: chararray,
	something: bag {
		something_tuple: tuple (
			first_string: chararray,
			second_string: chararray
		)
	}
);
DUMP data;
STORE data INTO '$OUT' USING doopgen.proto.pig.store.LzoBadProtoProtobufB64LinePigStorage();