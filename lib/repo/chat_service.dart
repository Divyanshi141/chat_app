import 'package:web_socket_channel/web_socket_channel.dart';

class ChatService {
  late WebSocketChannel _channel;
  
  void connect() {
    _channel = WebSocketChannel.connect(Uri.parse('ws://your-production-url/ws'));
  }
  
  Stream get messageStream => _channel.stream;
  
  void sendMessage(String text) => _channel.sink.add(text);
}

