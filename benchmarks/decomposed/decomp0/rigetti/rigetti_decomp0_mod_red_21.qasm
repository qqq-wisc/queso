OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[1], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[1], q[4];
cz q[1], q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[1], q[3];
rz(pi/4) q[1];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rx(pi) q[4];
rx(pi) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[5], q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[4], q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[5], q[6];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[4], q[6];
cz q[4], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/4) q[4];
rx(pi) q[4];
rx(pi) q[4];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rx(pi) q[5];
rx(pi) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rx(pi) q[6];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[7], q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/4) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[6], q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(pi/4) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[7], q[9];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/4) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[6], q[9];
cz q[6], q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/4) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
cz q[6], q[7];
rz(pi/4) q[6];
rx(pi) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[5], q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[4], q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[5], q[6];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[4], q[6];
cz q[4], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/4) q[4];
rx(pi) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[1], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[1], q[4];
cz q[1], q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[1], q[3];
rz(pi/4) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rx(pi) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/4) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(pi/4) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[9], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[10], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[9], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[10], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[8], q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
cz q[8], q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[1], q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[0], q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[1], q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[0], q[2];
cz q[0], q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/4) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0], q[1];
rz(pi/4) q[0];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/4) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rx(pi) q[2];
cz q[2], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[2], q[4];
cz q[2], q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[2], q[3];
rz(pi/4) q[2];
rx(pi) q[2];
rx(pi) q[2];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rx(pi) q[4];
cz q[8], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[5], q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[4], q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[5], q[6];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[4], q[6];
cz q[4], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/4) q[4];
rx(pi) q[4];
rx(pi) q[4];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rx(pi) q[6];
cz q[8], q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/4) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
cz q[6], q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/4) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
cz q[8], q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/4) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
cz q[6], q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/4) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[6], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[6], q[8];
rz(pi/4) q[6];
rx(pi) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[5], q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[4], q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[5], q[6];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
cz q[4], q[6];
cz q[4], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/4) q[4];
rx(pi) q[4];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/4) q[6];
rz(pi/2) q[6];
rx(pi/2) q[6];
rz(pi/2) q[6];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
cz q[8], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[8], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[4], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[4], q[8];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[2], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[2], q[4];
cz q[2], q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[2], q[3];
rz(pi/4) q[2];
rx(pi) q[2];
rx(pi) q[2];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
cz q[8], q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[2], q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[8], q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cz q[2], q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[2], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[2], q[8];
rz(pi/4) q[2];
rx(pi) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[1], q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[0], q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[1], q[2];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
cz q[0], q[2];
cz q[0], q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/4) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0], q[1];
rz(pi/4) q[0];
rx(pi) q[0];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/4) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
cz q[8], q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/4) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0], q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/4) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[8], q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/4) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cz q[0], q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/4) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[0], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[0], q[8];
rz(pi/4) q[0];
rx(pi) q[0];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[10], q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/4) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[10], q[9];
rz(pi/4) q[10];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(pi/4) q[9];
cz q[9], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[10], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[9], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[10], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[10], q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/4) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[10], q[9];
rz(pi/4) q[10];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(pi/4) q[9];
