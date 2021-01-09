import 'package:hive_core/src/models/metadata.dart';

class MetadataTools {
  Metadata initMetadata(String userId, Metadata model) {
    Metadata _metadata;

    _metadata = model != null
        ? model.rebuild((b) => b
          ..creation.update((b) => b
            ..userId = userId
            ..date = DateTime.now().toString())
          ..modification.update((b) => b
            ..userId = userId
            ..date = DateTime.now().toString())
          ..lastRead.update((b) => b
            ..userId = userId
            ..date = DateTime.now().toString()))
        : Metadata((b) => b
          ..creation.update((b) => b
            ..userId = userId
            ..date = DateTime.now().toString())
          ..modification.update((b) => b
            ..userId = userId
            ..date = DateTime.now().toString())
          ..lastRead.update((b) => b
            ..userId = userId
            ..date = DateTime.now().toString()));

    return _metadata;
  }

  Metadata updateMetadata(String userId, Metadata model) =>
      model.rebuild((b) => b
        ..modification.update((b) => b
          ..userId = userId
          ..date = DateTime.now().toString())
        ..lastRead.update((b) => b
          ..userId = userId
          ..date = DateTime.now().toString()));

  Metadata readMetadata(String userId, Metadata model) => model.rebuild((b) => b
    ..lastRead.update((b) => b
      ..userId = userId
      ..date = DateTime.now().toString()));
}
