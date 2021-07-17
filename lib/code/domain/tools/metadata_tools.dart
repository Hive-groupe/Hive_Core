import 'package:hive_core/code/data/models/_index.dart';

class MetadataTools {
  Metadata initMetadata(String userId, Metadata? metadata) {
    Metadata _metadata;

    _metadata = metadata != null
        ? metadata.rebuild((b) => b
          ..creation.update(
            (b) => b
              ..userId = userId
              ..date = DateTime.now().toString(),
          )
          ..modification.update(
            (b) => b
              ..userId = userId
              ..date = DateTime.now().toString(),
          )
          ..lastRead.update(
            (b) => b
              ..userId = userId
              ..date = DateTime.now().toString(),
          ))
        : Metadata((b) => b
          ..creation.update(
            (b) => b
              ..userId = userId
              ..date = DateTime.now().toString(),
          )
          ..modification.update(
            (b) => b
              ..userId = userId
              ..date = DateTime.now().toString(),
          )
          ..lastRead.update(
            (b) => b
              ..userId = userId
              ..date = DateTime.now().toString(),
          ));

    return _metadata;
  }

  Metadata updateMetadata(String userId, Metadata metadata) =>
      metadata.rebuild((b) => b
        ..modification.update(
          (b) => b
            ..userId = userId
            ..date = DateTime.now().toString(),
        )
        ..lastRead.update(
          (b) => b
            ..userId = userId
            ..date = DateTime.now().toString(),
        ));

  Metadata readMetadata(String userId, Metadata metadata) =>
      metadata.rebuild((b) => b
        ..lastRead.update(
          (b) => b
            ..userId = userId
            ..date = DateTime.now().toString(),
        ));
}
