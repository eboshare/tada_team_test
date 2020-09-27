import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:web_socket_channel/io.dart';

part 'sender.g.dart';

@JsonSerializable()
class Sender {
  @JsonKey(name: 'username')
  final String username;

  const Sender({
    @required this.username,
  });

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
  Map<String, dynamic> toJson() => _$SenderToJson(this);
}
