{ edge, edges }:

edge.capnp {
  src = ./.;
  edges = with edges.capnp; [ NetHttpRequestMethod NetHttpRequestHeader NetHttpRequestVersion ];
  schema = with edges; ''
    struct NetHttpRequest {
      id @0 :UInt64;
      url @1 :Text;
      method @2 :NetHttpRequestMethod;
      headers @3 :List(NetHttpRequestHeader);
      httpVersion @4 :NetHttpRequestVersion;
      content @5 :Text;
    }
  '';
}
