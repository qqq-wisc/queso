OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[12];
h q[8];
h q[9];
h q[10];
cx q[5], q[8];
rz(-pi/4) q[8];
cx q[3], q[8];
rz(pi/4) q[8];
cx q[5], q[8];
rz(-pi/4) q[8];
cx q[3], q[8];
cx q[3], q[5];
cx q[6], q[8];
rz(-pi/4) q[5];
rz(pi/4) q[8];
cx q[3], q[5];
cx q[2], q[8];
rz(-pi/4) q[8];
cx q[6], q[8];
rz(pi/4) q[8];
cx q[2], q[8];
cx q[2], q[6];
cx q[7], q[8];
rz(pi/4) q[6];
rz(-pi/4) q[8];
cx q[2], q[6];
cx q[1], q[8];
cx q[6], q[9];
rz(pi/4) q[8];
rz(-pi/4) q[9];
cx q[7], q[8];
cx q[3], q[9];
rz(-pi/4) q[8];
rz(pi/4) q[9];
cx q[1], q[8];
cx q[6], q[9];
cx q[1], q[7];
rz(pi/4) q[8];
rz(-pi/4) q[9];
rz(-pi/4) q[7];
h q[8];
cx q[3], q[9];
cx q[1], q[7];
cx q[3], q[6];
cx q[7], q[9];
rz(-pi/4) q[6];
rz(pi/4) q[9];
cx q[3], q[6];
cx q[2], q[9];
rz(-pi/4) q[9];
cx q[7], q[9];
rz(pi/4) q[9];
cx q[2], q[9];
h q[9];
cx q[2], q[7];
rz(pi/4) q[7];
cx q[2], q[7];
cx q[7], q[10];
rz(-pi/4) q[10];
cx q[3], q[10];
rz(pi/4) q[10];
cx q[7], q[10];
rz(-pi/4) q[10];
cx q[3], q[10];
cx q[3], q[7];
rz(pi/4) q[10];
rz(-pi/4) q[7];
h q[10];
cx q[3], q[7];
cx q[10], q[11];
rz(pi/2) q[7];
cx q[9], q[10];
h q[11];
cx q[8], q[9];
h q[10];
cx q[4], q[11];
h q[9];
h q[8];
rz(-pi/4) q[11];
cx q[3], q[11];
rz(pi/4) q[11];
cx q[4], q[11];
rz(-pi/4) q[11];
cx q[3], q[11];
cx q[3], q[4];
cx q[5], q[11];
rz(-pi/4) q[4];
rz(pi/4) q[11];
cx q[3], q[4];
cx q[2], q[11];
rz(pi) q[3];
cx q[4], q[10];
rz(-pi/4) q[11];
rz(pi/4) q[10];
cx q[5], q[11];
rz(pi/4) q[11];
cx q[2], q[11];
cx q[2], q[5];
cx q[6], q[11];
rz(pi/4) q[5];
rz(pi/4) q[11];
cx q[2], q[5];
cx q[1], q[11];
cx q[2], q[10];
rz(-pi/4) q[11];
rz(-pi/4) q[10];
cx q[6], q[11];
cx q[4], q[10];
rz(pi/4) q[11];
rz(pi/4) q[10];
cx q[1], q[11];
cx q[2], q[10];
cx q[1], q[6];
cx q[7], q[11];
cx q[2], q[4];
cx q[5], q[10];
rz(pi/4) q[6];
rz(-pi/4) q[11];
rz(pi/4) q[4];
rz(-pi/4) q[10];
cx q[1], q[6];
cx q[0], q[11];
cx q[2], q[4];
cx q[1], q[10];
rz(pi/4) q[11];
rz(-pi) q[2];
cx q[4], q[9];
rz(pi/4) q[10];
cx q[7], q[11];
rz(pi/4) q[9];
cx q[5], q[10];
rz(-pi/4) q[11];
rz(-pi/4) q[10];
cx q[0], q[11];
cx q[1], q[10];
h q[11];
cx q[0], q[7];
cx q[1], q[5];
cx q[6], q[10];
rz(-pi/4) q[7];
rz(-pi/4) q[5];
rz(-pi/4) q[10];
cx q[0], q[7];
cx q[1], q[5];
cx q[0], q[10];
rz(pi/2) q[5];
cx q[1], q[9];
rz(pi/4) q[10];
rz(-pi/4) q[9];
cx q[6], q[10];
cx q[4], q[9];
rz(-pi/4) q[10];
rz(pi/4) q[9];
cx q[0], q[10];
cx q[1], q[9];
cx q[0], q[6];
rz(pi/4) q[10];
cx q[1], q[4];
cx q[5], q[9];
rz(-pi/4) q[6];
h q[10];
rz(pi/4) q[4];
rz(-pi/4) q[9];
cx q[0], q[6];
cx q[1], q[4];
cx q[0], q[9];
cx q[4], q[8];
rz(pi/4) q[9];
rz(-pi/4) q[8];
cx q[5], q[9];
rz(-pi/4) q[9];
cx q[0], q[9];
h q[9];
cx q[0], q[5];
rz(-pi/4) q[5];
cx q[0], q[5];
cx q[0], q[8];
rz(pi/4) q[8];
cx q[4], q[8];
rz(-pi/4) q[8];
cx q[0], q[8];
cx q[0], q[4];
rz(pi/4) q[8];
rz(-pi/4) q[4];
h q[8];
cx q[0], q[4];
rz(pi) q[0];
