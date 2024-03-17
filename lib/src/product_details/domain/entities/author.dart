// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';
part 'author.g.dart';

@freezed
class Author with _$Author {
  const factory Author({
    required int id,
    @Default('') String name,
    required String email,
    required int role_id,
    @Default('') String status,
    @Default('') String profile,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  factory Author.empty() => const Author(
        id: 0,
        name: '',
        email: '',
        role_id: 0,
        status: '',
        profile: '',
      );
}
