///
//  Generated code. Do not modify.
//  source: item.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use findAllRequestDescriptor instead')
const FindAllRequest$json = const {
  '1': 'FindAllRequest',
};

/// Descriptor for `FindAllRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findAllRequestDescriptor = $convert.base64Decode('Cg5GaW5kQWxsUmVxdWVzdA==');
@$core.Deprecated('Use findAllResponseDescriptor instead')
const FindAllResponse$json = const {
  '1': 'FindAllResponse',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.protos.Item', '10': 'Items'},
  ],
};

/// Descriptor for `FindAllResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findAllResponseDescriptor = $convert.base64Decode('Cg9GaW5kQWxsUmVzcG9uc2USIgoFSXRlbXMYASADKAsyDC5wcm90b3MuSXRlbVIFSXRlbXM=');
@$core.Deprecated('Use itemDescriptor instead')
const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'quantity', '3': 3, '4': 1, '5': 5, '10': 'quantity'},
    const {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'status', '3': 5, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhoKCHF1YW50aXR5GAMgASgFUghxdWFudGl0eRIUCgVwcmljZRgEIAEoAVIFcHJpY2USFgoGc3RhdHVzGAUgASgIUgZzdGF0dXM=');
