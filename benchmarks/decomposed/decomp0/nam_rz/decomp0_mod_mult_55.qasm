OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
x q[2];
h q[6];
h q[7];
cx q[2], q[7];
rz(-pi/4) q[7];
cx q[0], q[7];
rz(pi/4) q[7];
cx q[2], q[7];
rz(-pi/4) q[7];
cx q[0], q[7];
cx q[0], q[2];
rz(-pi/4) q[2];
cx q[0], q[2];
rz(pi/4) q[0];
x q[0];
rz(pi/4) q[2];
x q[2];
rz(pi/4) q[7];
h q[7];
cx q[7], q[6];
rz(-pi/4) q[6];
cx q[1], q[6];
rz(pi/4) q[6];
cx q[7], q[6];
rz(-pi/4) q[6];
cx q[1], q[6];
cx q[1], q[7];
rz(pi/4) q[6];
h q[6];
cx q[6], q[5];
cx q[6], q[3];
h q[3];
h q[6];
rz(-pi/4) q[7];
cx q[1], q[7];
rz(pi/4) q[1];
x q[1];
rz(pi/4) q[7];
h q[8];
cx q[2], q[8];
rz(-pi/4) q[8];
cx q[0], q[8];
rz(pi/4) q[8];
cx q[2], q[8];
rz(-pi/4) q[8];
cx q[0], q[8];
cx q[0], q[2];
rz(-pi/4) q[2];
cx q[0], q[2];
rz(pi/4) q[0];
rz(pi/4) q[2];
rz(pi/4) q[8];
h q[8];
cx q[8], q[7];
x q[7];
cx q[7], q[3];
rz(-pi/4) q[3];
cx q[8], q[6];
rz(-pi/4) q[6];
cx q[1], q[6];
rz(pi/4) q[6];
cx q[8], q[6];
rz(-pi/4) q[6];
cx q[1], q[6];
cx q[1], q[8];
rz(pi/4) q[6];
h q[6];
cx q[6], q[4];
rz(-pi/4) q[8];
cx q[1], q[8];
rz(pi/4) q[1];
cx q[1], q[3];
rz(pi/4) q[3];
cx q[7], q[3];
rz(-pi/4) q[3];
cx q[1], q[3];
cx q[1], q[7];
rz(pi/4) q[3];
h q[3];
rz(-pi/4) q[7];
cx q[1], q[7];
rz(pi/4) q[1];
x q[1];
rz(pi/4) q[7];
rz(pi/4) q[8];
cx q[5], q[8];
h q[5];
cx q[7], q[5];
rz(-pi/4) q[5];
cx q[1], q[5];
rz(pi/4) q[5];
cx q[7], q[5];
rz(-pi/4) q[5];
cx q[1], q[5];
cx q[1], q[7];
rz(pi/4) q[5];
h q[5];
rz(-pi/4) q[7];
cx q[1], q[7];
rz(pi/4) q[1];
rz(pi/4) q[7];
x q[7];
h q[8];
cx q[2], q[8];
rz(-pi/4) q[8];
cx q[0], q[8];
rz(pi/4) q[8];
cx q[2], q[8];
rz(-pi/4) q[8];
cx q[0], q[8];
cx q[0], q[2];
rz(-pi/4) q[2];
cx q[0], q[2];
rz(pi/4) q[0];
x q[0];
rz(pi/4) q[2];
rz(pi/4) q[8];
h q[8];
cx q[5], q[8];
