# submarine-protobuf
A protocol implemented in Google's protobuf to allow communication between a control station and a data collecting submarine. It allows for a simple and efficient message sending and was designed to keep the communication simple and stupid. It is intended to be used only in a direct peer-to-peer communication, so it doesn't feature things like multiple submarine management.

# Short overview
* The _control station_ may send a `ControlMessage` to the submarine -- It can schedule a dive with some parameters and cancel a scheduled dive.
* The _submarine_ may broadcasts its status or some collected data by sending a `SubmarineMessage`.

# Compiling
You can compile the protocol for Java or C (by using [nanopb](https://github.com/nanopb/nanopb)). For C, you will need to install nanopb by yourself.

Execute `update_c.sh` resp. `update_java.sh` to create the C resp. Java protocol buffer source files. You may want to adapt the paths to which the output is generated inside the scripts. Note that you should uncomment the `import "nanopb.proto";` line when compiling for C.
