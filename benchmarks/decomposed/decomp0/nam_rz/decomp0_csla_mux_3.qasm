OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
h q[3];
cx q[2], q[3];
rz(-pi/4) q[3];
cx q[1], q[3];
rz(pi/4) q[3];
cx q[2], q[3];
rz(-pi/4) q[3];
cx q[1], q[3];
cx q[1], q[2];
rz(-pi/4) q[2];
cx q[1], q[2];
rz(pi/4) q[1];
rz(pi/4) q[2];
cx q[1], q[2];
rz(pi/4) q[3];
h q[3];
cx q[3], q[4];
cx q[2], q[3];
h q[7];
cx q[6], q[7];
rz(-pi/4) q[7];
cx q[5], q[7];
rz(pi/4) q[7];
cx q[6], q[7];
rz(-pi/4) q[7];
cx q[5], q[7];
cx q[5], q[6];
rz(-pi/4) q[6];
cx q[5], q[6];
rz(pi/4) q[5];
rz(pi/4) q[6];
cx q[5], q[6];
rz(pi/4) q[7];
h q[7];
cx q[7], q[9];
h q[7];
cx q[6], q[7];
rz(-pi/4) q[7];
cx q[3], q[7];
rz(pi/4) q[7];
cx q[6], q[7];
rz(-pi/4) q[7];
cx q[3], q[7];
cx q[3], q[6];
rz(-pi/4) q[6];
cx q[3], q[6];
rz(pi/4) q[3];
rz(pi/4) q[6];
rz(pi/4) q[7];
h q[7];
h q[9];
cx q[6], q[9];
rz(-pi/4) q[9];
cx q[4], q[9];
rz(pi/4) q[9];
cx q[6], q[9];
rz(-pi/4) q[9];
cx q[4], q[9];
cx q[4], q[6];
rz(-pi/4) q[6];
cx q[4], q[6];
rz(pi/4) q[4];
rz(pi/4) q[6];
cx q[6], q[8];
cx q[3], q[6];
cx q[4], q[8];
cx q[8], q[6];
h q[8];
cx q[6], q[8];
rz(-pi/4) q[8];
rz(pi/4) q[9];
h q[9];
h q[12];
cx q[11], q[12];
rz(-pi/4) q[12];
cx q[10], q[12];
rz(pi/4) q[12];
cx q[11], q[12];
rz(-pi/4) q[12];
cx q[10], q[12];
cx q[10], q[11];
rz(-pi/4) q[11];
cx q[10], q[11];
rz(pi/4) q[10];
rz(pi/4) q[11];
cx q[10], q[11];
rz(pi/4) q[12];
h q[12];
cx q[11], q[13];
cx q[12], q[14];
h q[12];
cx q[11], q[12];
rz(-pi/4) q[12];
h q[14];
cx q[7], q[12];
rz(pi/4) q[12];
cx q[11], q[12];
rz(-pi/4) q[12];
cx q[7], q[12];
rz(pi/4) q[12];
h q[12];
cx q[7], q[11];
rz(-pi/4) q[11];
cx q[7], q[11];
rz(pi/4) q[11];
cx q[11], q[14];
rz(-pi/4) q[14];
rz(pi/4) q[7];
cx q[9], q[14];
rz(pi/4) q[14];
cx q[11], q[14];
rz(-pi/4) q[14];
cx q[9], q[14];
rz(pi/4) q[14];
h q[14];
cx q[14], q[12];
h q[14];
cx q[12], q[14];
rz(-pi/4) q[14];
cx q[0], q[14];
rz(pi/4) q[14];
cx q[12], q[14];
rz(-pi/4) q[14];
cx q[0], q[14];
cx q[0], q[12];
rz(-pi/4) q[12];
cx q[0], q[12];
rz(pi/4) q[0];
rz(pi/4) q[12];
rz(pi/4) q[14];
h q[14];
cx q[14], q[12];
cx q[9], q[11];
rz(-pi/4) q[11];
cx q[9], q[11];
rz(pi/4) q[11];
cx q[7], q[11];
rz(pi/4) q[9];
cx q[9], q[13];
cx q[13], q[11];
h q[13];
cx q[11], q[13];
rz(-pi/4) q[13];
cx q[0], q[13];
rz(pi/4) q[13];
cx q[11], q[13];
rz(-pi/4) q[13];
cx q[0], q[13];
cx q[0], q[11];
rz(-pi/4) q[11];
cx q[0], q[11];
rz(pi/4) q[0];
cx q[0], q[8];
rz(pi/4) q[11];
rz(pi/4) q[13];
h q[13];
cx q[13], q[11];
rz(pi/4) q[8];
cx q[6], q[8];
rz(-pi/4) q[8];
cx q[0], q[8];
cx q[0], q[6];
rz(-pi/4) q[6];
cx q[0], q[6];
rz(pi/4) q[0];
cx q[0], q[2];
rz(pi/4) q[6];
rz(pi/4) q[8];
h q[8];
cx q[8], q[6];
