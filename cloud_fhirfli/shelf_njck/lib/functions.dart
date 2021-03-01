import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';

@CloudFunction()
Future<Response> function(Request request) async {
  var reqs = '';
  reqs += 'CanHijack: ${request.canHijack}\n******************\n';
  reqs += 'HandlerPath: ${request.handlerPath}\n******************\n';
  reqs += 'ModifiedSince: ${request.ifModifiedSince}\n******************\n';
  reqs += 'Method: ${request.method}\n******************\n';
  reqs += 'ProtocolVersion: ${request.protocolVersion}\n******************\n';
  reqs += 'RequestedUri: ${request.requestedUri}\n******************\n';
  reqs += 'Url: ${request.url}\n******************\n';
  reqs += 'ContentLength: ${request.contentLength}\n******************\n';
  reqs += 'Context: ${request.context}\n******************\n';
  reqs += 'Encoding: ${request.encoding}\n******************\n';
  reqs += 'Headers: ${request.headers}\n******************\n';
  reqs += 'HeadersAll: ${request.headersAll}\n******************\n';
  reqs += 'MimeType: ${request.mimeType}\n******************\n';
  reqs += 'RuntimeType: ${request.runtimeType}\n******************\n';

  return Response.ok(reqs);
}
