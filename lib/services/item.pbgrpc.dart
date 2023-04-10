///
//  Generated code. Do not modify.
//  source: item.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'item.pb.dart' as $0;
export 'item.pb.dart';

class ItemServiceClient extends $grpc.Client {
  static final _$findAll =
      $grpc.ClientMethod<$0.FindAllRequest, $0.FindAllResponse>(
          '/protos.ItemService/FindAll',
          ($0.FindAllRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FindAllResponse.fromBuffer(value));

  ItemServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.FindAllResponse> findAll($0.FindAllRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findAll, request, options: options);
  }
}

abstract class ItemServiceBase extends $grpc.Service {
  $core.String get $name => 'protos.ItemService';

  ItemServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FindAllRequest, $0.FindAllResponse>(
        'FindAll',
        findAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindAllRequest.fromBuffer(value),
        ($0.FindAllResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.FindAllResponse> findAll_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FindAllRequest> request) async {
    return findAll(call, await request);
  }

  $async.Future<$0.FindAllResponse> findAll(
      $grpc.ServiceCall call, $0.FindAllRequest request);
}
