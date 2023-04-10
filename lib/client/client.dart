
import 'package:grpc/grpc.dart';

class GrpcClient{
  late ClientChannel channel;

  ClientChannel getClient(String ghost, int gport){
    channel = ClientChannel(
        ghost,
        port: gport,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure())
    );
    return channel;
  }
}