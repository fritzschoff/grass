import Peer from "peerjs";

export default function usePeer() {
  const initPeer = new Peer();
  const newPeer = new Peer();
  const connection = newPeer.connect("0aad3b6c-f841-4b52-8351-a1fd6014c6d1");
  initPeer.on("open", (id) => {
    console.log(id);

    connection.send("hey");
    connection.on("data", function (data) {
      console.log("Received", data);
    });
  });
  return { initPeer };
}
