OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[12];
cz q[5], q[8];
x q[11];
x q[8];
rz(pi/2) q[11];
rz(pi/2) q[8];
rx(pi/2) q[11];
rx(pi/2) q[8];
rz(-pi/2) q[11];
rz(-pi/2) q[8];
rz(-pi/4) q[8];
x q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(-pi/2) q[8];
cz q[3], q[8];
x q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(-pi/2) q[8];
rz(pi/4) q[8];
x q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(-pi/2) q[8];
cz q[5], q[8];
x q[8];
x q[5];
rz(pi/2) q[8];
rz(pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[5];
rz(-pi/4) q[8];
x q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(-pi/2) q[8];
cz q[3], q[8];
cz q[3], q[5];
cz q[6], q[8];
x q[5];
x q[8];
rz(pi/2) q[5];
rz(pi/2) q[8];
rx(pi/2) q[5];
rx(pi/2) q[8];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/4) q[5];
rz(pi/4) q[8];
x q[5];
x q[8];
rz(pi/2) q[5];
rz(pi/2) q[8];
rx(pi/2) q[5];
rx(pi/2) q[8];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
cz q[3], q[5];
cz q[2], q[8];
x q[5];
x q[8];
rz(pi/2) q[5];
rz(pi/2) q[8];
rx(pi/2) q[5];
rx(pi/2) q[8];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/4) q[8];
x q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(-pi/2) q[8];
cz q[6], q[8];
x q[8];
x q[6];
rz(pi/2) q[8];
rz(pi/2) q[6];
rx(pi/2) q[8];
rx(pi/2) q[6];
rz(-pi/2) q[8];
rz(-pi/2) q[6];
rz(pi/4) q[8];
x q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(-pi/2) q[8];
cz q[2], q[8];
cz q[2], q[6];
cz q[7], q[8];
x q[6];
x q[8];
rz(pi/2) q[6];
rz(pi/2) q[8];
rx(pi/2) q[6];
rx(pi/2) q[8];
rz(-pi/2) q[6];
rz(-pi/2) q[8];
rz(pi/4) q[6];
rz(-pi/4) q[8];
x q[6];
x q[8];
rz(pi/2) q[6];
rz(pi/2) q[8];
rx(pi/2) q[6];
rx(pi/2) q[8];
rz(-pi/2) q[6];
rz(-pi/2) q[8];
cz q[2], q[6];
cz q[1], q[8];
x q[6];
x q[8];
rz(pi/2) q[6];
rz(pi/2) q[8];
rx(pi/2) q[6];
rx(pi/2) q[8];
rz(-pi/2) q[6];
rz(-pi/2) q[8];
cz q[6], q[9];
rz(pi/4) q[8];
x q[9];
x q[8];
rz(pi/2) q[9];
rz(pi/2) q[8];
rx(pi/2) q[9];
rx(pi/2) q[8];
rz(-pi/2) q[9];
rz(-pi/2) q[8];
rz(-pi/4) q[9];
cz q[7], q[8];
x q[9];
x q[8];
x q[7];
rz(pi/2) q[9];
rz(pi/2) q[8];
rz(pi/2) q[7];
rx(pi/2) q[9];
rx(pi/2) q[8];
rx(pi/2) q[7];
rz(-pi/2) q[9];
rz(-pi/2) q[8];
rz(-pi/2) q[7];
cz q[3], q[9];
rz(-pi/4) q[8];
x q[9];
x q[8];
rz(pi/2) q[9];
rz(pi/2) q[8];
rx(pi/2) q[9];
rx(pi/2) q[8];
rz(-pi/2) q[9];
rz(-pi/2) q[8];
rz(pi/4) q[9];
cz q[1], q[8];
x q[9];
cz q[1], q[7];
x q[8];
rz(pi/2) q[9];
x q[7];
rz(pi/2) q[8];
rx(pi/2) q[9];
rz(pi/2) q[7];
rx(pi/2) q[8];
rz(-pi/2) q[9];
rx(pi/2) q[7];
rz(-pi/2) q[8];
cz q[6], q[9];
rz(-pi/2) q[7];
rz(pi/4) q[8];
x q[9];
x q[6];
rz(-pi/4) q[7];
x q[8];
rz(pi/2) q[9];
rz(pi/2) q[6];
x q[7];
rz(pi/2) q[8];
rx(pi/2) q[9];
rx(pi/2) q[6];
rz(pi/2) q[7];
rx(pi/2) q[8];
rz(-pi/2) q[9];
rz(-pi/2) q[6];
rx(pi/2) q[7];
rz(-pi/2) q[8];
rz(-pi/4) q[9];
rz(-pi/2) q[7];
x q[9];
cz q[1], q[7];
rz(pi/2) q[9];
x q[7];
rx(pi/2) q[9];
rz(pi/2) q[7];
rz(-pi/2) q[9];
rx(pi/2) q[7];
cz q[3], q[9];
rz(-pi/2) q[7];
cz q[3], q[6];
cz q[7], q[9];
x q[6];
x q[9];
rz(pi/2) q[6];
rz(pi/2) q[9];
rx(pi/2) q[6];
rx(pi/2) q[9];
rz(-pi/2) q[6];
rz(-pi/2) q[9];
rz(-pi/4) q[6];
rz(pi/4) q[9];
x q[6];
x q[9];
rz(pi/2) q[6];
rz(pi/2) q[9];
rx(pi/2) q[6];
rx(pi/2) q[9];
rz(-pi/2) q[6];
rz(-pi/2) q[9];
cz q[3], q[6];
cz q[2], q[9];
x q[6];
x q[9];
rz(pi/2) q[6];
rz(pi/2) q[9];
rx(pi/2) q[6];
rx(pi/2) q[9];
rz(-pi/2) q[6];
rz(-pi/2) q[9];
rz(-pi/4) q[9];
x q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(-pi/2) q[9];
cz q[7], q[9];
x q[9];
x q[7];
rz(pi/2) q[9];
rz(pi/2) q[7];
rx(pi/2) q[9];
rx(pi/2) q[7];
rz(-pi/2) q[9];
rz(-pi/2) q[7];
rz(pi/4) q[9];
x q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(-pi/2) q[9];
cz q[2], q[9];
cz q[2], q[7];
x q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(-pi/2) q[7];
rz(pi/4) q[7];
x q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(-pi/2) q[7];
cz q[2], q[7];
x q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(-pi/2) q[7];
cz q[7], q[10];
x q[10];
rz(pi/2) q[10];
rx(pi/2) q[10];
rz(-pi/2) q[10];
rz(-pi/4) q[10];
x q[10];
rz(pi/2) q[10];
rx(pi/2) q[10];
rz(-pi/2) q[10];
cz q[3], q[10];
x q[10];
rz(pi/2) q[10];
rx(pi/2) q[10];
rz(-pi/2) q[10];
rz(pi/4) q[10];
x q[10];
rz(pi/2) q[10];
rx(pi/2) q[10];
rz(-pi/2) q[10];
cz q[7], q[10];
x q[10];
x q[7];
rz(pi/2) q[10];
rz(pi/2) q[7];
rx(pi/2) q[10];
rx(pi/2) q[7];
rz(-pi/2) q[10];
rz(-pi/2) q[7];
rz(-pi/4) q[10];
x q[10];
rz(pi/2) q[10];
rx(pi/2) q[10];
rz(-pi/2) q[10];
cz q[3], q[10];
cz q[3], q[7];
x q[10];
x q[7];
rz(pi/2) q[10];
rz(pi/2) q[7];
rx(pi/2) q[10];
rx(pi/2) q[7];
rz(-pi/2) q[10];
rz(-pi/2) q[7];
rz(pi/4) q[10];
rz(-pi/4) q[7];
x q[10];
x q[7];
rz(pi/2) q[10];
rz(pi/2) q[7];
rx(pi/2) q[10];
rx(pi/2) q[7];
rz(-pi/2) q[10];
rz(-pi/2) q[7];
cz q[10], q[11];
cz q[3], q[7];
x q[11];
x q[10];
x q[7];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[7];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[7];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[7];
cz q[4], q[11];
cz q[9], q[10];
rz(pi/2) q[7];
x q[11];
x q[10];
x q[9];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[9];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[9];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[9];
rz(-pi/4) q[11];
cz q[8], q[9];
x q[11];
x q[9];
rz(pi/2) q[11];
rz(pi/2) q[9];
rx(pi/2) q[11];
rx(pi/2) q[9];
rz(-pi/2) q[11];
rz(-pi/2) q[9];
cz q[3], q[11];
x q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(-pi/2) q[11];
rz(pi/4) q[11];
x q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(-pi/2) q[11];
cz q[4], q[11];
x q[11];
x q[4];
rz(pi/2) q[11];
rz(pi/2) q[4];
rx(pi/2) q[11];
rx(pi/2) q[4];
rz(-pi/2) q[11];
rz(-pi/2) q[4];
rz(-pi/4) q[11];
x q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(-pi/2) q[11];
cz q[3], q[11];
cz q[3], q[4];
cz q[5], q[11];
x q[4];
x q[11];
rz(pi/2) q[4];
rz(pi/2) q[11];
rx(pi/2) q[4];
rx(pi/2) q[11];
rz(-pi/2) q[4];
rz(-pi/2) q[11];
rz(-pi/4) q[4];
rz(pi/4) q[11];
x q[4];
x q[11];
rz(pi/2) q[4];
rz(pi/2) q[11];
rx(pi/2) q[4];
rx(pi/2) q[11];
rz(-pi/2) q[4];
rz(-pi/2) q[11];
cz q[3], q[4];
cz q[2], q[11];
rz(pi) q[3];
x q[4];
x q[11];
rz(pi/2) q[4];
rz(pi/2) q[11];
rx(pi/2) q[4];
rx(pi/2) q[11];
rz(-pi/2) q[4];
rz(-pi/2) q[11];
cz q[4], q[10];
rz(-pi/4) q[11];
x q[10];
x q[11];
rz(pi/2) q[10];
rz(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[11];
rz(pi/4) q[10];
cz q[5], q[11];
x q[10];
x q[11];
x q[5];
rz(pi/2) q[10];
rz(pi/2) q[11];
rz(pi/2) q[5];
rx(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[5];
rz(-pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[5];
rz(pi/4) q[11];
x q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(-pi/2) q[11];
cz q[2], q[11];
cz q[2], q[5];
cz q[6], q[11];
x q[5];
x q[11];
rz(pi/2) q[5];
rz(pi/2) q[11];
rx(pi/2) q[5];
rx(pi/2) q[11];
rz(-pi/2) q[5];
rz(-pi/2) q[11];
rz(pi/4) q[5];
rz(pi/4) q[11];
x q[5];
x q[11];
rz(pi/2) q[5];
rz(pi/2) q[11];
rx(pi/2) q[5];
rx(pi/2) q[11];
rz(-pi/2) q[5];
rz(-pi/2) q[11];
cz q[2], q[5];
cz q[1], q[11];
cz q[2], q[10];
x q[5];
x q[11];
x q[10];
rz(pi/2) q[5];
rz(pi/2) q[11];
rz(pi/2) q[10];
rx(pi/2) q[5];
rx(pi/2) q[11];
rx(pi/2) q[10];
rz(-pi/2) q[5];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/4) q[11];
rz(-pi/4) q[10];
x q[11];
x q[10];
rz(pi/2) q[11];
rz(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
cz q[6], q[11];
cz q[4], q[10];
x q[11];
x q[6];
x q[10];
x q[4];
rz(pi/2) q[11];
rz(pi/2) q[6];
rz(pi/2) q[10];
rz(pi/2) q[4];
rx(pi/2) q[11];
rx(pi/2) q[6];
rx(pi/2) q[10];
rx(pi/2) q[4];
rz(-pi/2) q[11];
rz(-pi/2) q[6];
rz(-pi/2) q[10];
rz(-pi/2) q[4];
rz(pi/4) q[11];
rz(pi/4) q[10];
x q[11];
x q[10];
rz(pi/2) q[11];
rz(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
cz q[1], q[11];
cz q[2], q[10];
cz q[1], q[6];
cz q[7], q[11];
cz q[2], q[4];
cz q[5], q[10];
x q[6];
x q[11];
x q[4];
x q[10];
rz(pi/2) q[6];
rz(pi/2) q[11];
rz(pi/2) q[4];
rz(pi/2) q[10];
rx(pi/2) q[6];
rx(pi/2) q[11];
rx(pi/2) q[4];
rx(pi/2) q[10];
rz(-pi/2) q[6];
rz(-pi/2) q[11];
rz(-pi/2) q[4];
rz(-pi/2) q[10];
rz(pi/4) q[6];
rz(-pi/4) q[11];
rz(pi/4) q[4];
rz(-pi/4) q[10];
x q[6];
x q[11];
x q[4];
x q[10];
rz(pi/2) q[6];
rz(pi/2) q[11];
rz(pi/2) q[4];
rz(pi/2) q[10];
rx(pi/2) q[6];
rx(pi/2) q[11];
rx(pi/2) q[4];
rx(pi/2) q[10];
rz(-pi/2) q[6];
rz(-pi/2) q[11];
rz(-pi/2) q[4];
rz(-pi/2) q[10];
cz q[1], q[6];
cz q[0], q[11];
cz q[2], q[4];
cz q[1], q[10];
x q[6];
x q[11];
rz(-pi) q[2];
x q[4];
x q[10];
rz(pi/2) q[6];
rz(pi/2) q[11];
rz(pi/2) q[4];
rz(pi/2) q[10];
rx(pi/2) q[6];
rx(pi/2) q[11];
rx(pi/2) q[4];
rx(pi/2) q[10];
rz(-pi/2) q[6];
rz(-pi/2) q[11];
rz(-pi/2) q[4];
rz(-pi/2) q[10];
rz(pi/4) q[11];
cz q[4], q[9];
rz(pi/4) q[10];
x q[11];
x q[9];
x q[10];
rz(pi/2) q[11];
rz(pi/2) q[9];
rz(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[9];
rx(pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[9];
rz(-pi/2) q[10];
cz q[7], q[11];
rz(pi/4) q[9];
cz q[5], q[10];
x q[11];
x q[7];
x q[9];
x q[10];
x q[5];
rz(pi/2) q[11];
rz(pi/2) q[7];
rz(pi/2) q[9];
rz(pi/2) q[10];
rz(pi/2) q[5];
rx(pi/2) q[11];
rx(pi/2) q[7];
rx(pi/2) q[9];
rx(pi/2) q[10];
rx(pi/2) q[5];
rz(-pi/2) q[11];
rz(-pi/2) q[7];
rz(-pi/2) q[9];
rz(-pi/2) q[10];
rz(-pi/2) q[5];
rz(-pi/4) q[11];
rz(-pi/4) q[10];
x q[11];
x q[10];
rz(pi/2) q[11];
rz(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
cz q[0], q[11];
cz q[1], q[10];
cz q[0], q[7];
cz q[1], q[5];
cz q[6], q[10];
x q[7];
x q[5];
x q[10];
rz(pi/2) q[7];
rz(pi/2) q[5];
rz(pi/2) q[10];
rx(pi/2) q[7];
rx(pi/2) q[5];
rx(pi/2) q[10];
rz(-pi/2) q[7];
rz(-pi/2) q[5];
rz(-pi/2) q[10];
rz(-pi/4) q[7];
rz(-pi/4) q[5];
rz(-pi/4) q[10];
x q[7];
x q[5];
x q[10];
rz(pi/2) q[7];
rz(pi/2) q[5];
rz(pi/2) q[10];
rx(pi/2) q[7];
rx(pi/2) q[5];
rx(pi/2) q[10];
rz(-pi/2) q[7];
rz(-pi/2) q[5];
rz(-pi/2) q[10];
cz q[0], q[7];
cz q[1], q[5];
cz q[0], q[10];
x q[7];
cz q[1], q[9];
x q[5];
x q[10];
rz(pi/2) q[7];
x q[9];
rz(pi/2) q[5];
rz(pi/2) q[10];
rx(pi/2) q[7];
rz(pi/2) q[9];
rx(pi/2) q[5];
rx(pi/2) q[10];
rz(-pi/2) q[7];
rx(pi/2) q[9];
rz(-pi/2) q[5];
rz(-pi/2) q[10];
rz(-pi/2) q[9];
rz(pi/2) q[5];
rz(pi/4) q[10];
rz(-pi/4) q[9];
x q[10];
x q[9];
rz(pi/2) q[10];
rz(pi/2) q[9];
rx(pi/2) q[10];
rx(pi/2) q[9];
rz(-pi/2) q[10];
rz(-pi/2) q[9];
cz q[6], q[10];
cz q[4], q[9];
x q[10];
x q[6];
x q[9];
x q[4];
rz(pi/2) q[10];
rz(pi/2) q[6];
rz(pi/2) q[9];
rz(pi/2) q[4];
rx(pi/2) q[10];
rx(pi/2) q[6];
rx(pi/2) q[9];
rx(pi/2) q[4];
rz(-pi/2) q[10];
rz(-pi/2) q[6];
rz(-pi/2) q[9];
rz(-pi/2) q[4];
rz(-pi/4) q[10];
rz(pi/4) q[9];
x q[10];
x q[9];
rz(pi/2) q[10];
rz(pi/2) q[9];
rx(pi/2) q[10];
rx(pi/2) q[9];
rz(-pi/2) q[10];
rz(-pi/2) q[9];
cz q[0], q[10];
cz q[1], q[9];
cz q[0], q[6];
x q[10];
cz q[1], q[4];
cz q[5], q[9];
x q[6];
rz(pi/2) q[10];
x q[4];
x q[9];
rz(pi/2) q[6];
rx(pi/2) q[10];
rz(pi/2) q[4];
rz(pi/2) q[9];
rx(pi/2) q[6];
rz(-pi/2) q[10];
rx(pi/2) q[4];
rx(pi/2) q[9];
rz(-pi/2) q[6];
rz(pi/4) q[10];
rz(-pi/2) q[4];
rz(-pi/2) q[9];
rz(-pi/4) q[6];
x q[10];
rz(pi/4) q[4];
rz(-pi/4) q[9];
x q[6];
rz(pi/2) q[10];
x q[4];
x q[9];
rz(pi/2) q[6];
rx(pi/2) q[10];
rz(pi/2) q[4];
rz(pi/2) q[9];
rx(pi/2) q[6];
rz(-pi/2) q[10];
rx(pi/2) q[4];
rx(pi/2) q[9];
rz(-pi/2) q[6];
rz(-pi/2) q[4];
rz(-pi/2) q[9];
cz q[0], q[6];
cz q[1], q[4];
cz q[0], q[9];
x q[6];
x q[4];
x q[9];
rz(pi/2) q[6];
rz(pi/2) q[4];
rz(pi/2) q[9];
rx(pi/2) q[6];
rx(pi/2) q[4];
rx(pi/2) q[9];
rz(-pi/2) q[6];
rz(-pi/2) q[4];
rz(-pi/2) q[9];
cz q[4], q[8];
rz(pi/4) q[9];
x q[8];
x q[9];
rz(pi/2) q[8];
rz(pi/2) q[9];
rx(pi/2) q[8];
rx(pi/2) q[9];
rz(-pi/2) q[8];
rz(-pi/2) q[9];
rz(-pi/4) q[8];
cz q[5], q[9];
x q[8];
x q[9];
x q[5];
rz(pi/2) q[8];
rz(pi/2) q[9];
rz(pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[9];
rx(pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[9];
rz(-pi/2) q[5];
rz(-pi/4) q[9];
x q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(-pi/2) q[9];
cz q[0], q[9];
cz q[0], q[5];
x q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(-pi/2) q[5];
rz(-pi/4) q[5];
x q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(-pi/2) q[5];
cz q[0], q[5];
cz q[0], q[8];
x q[5];
x q[8];
rz(pi/2) q[5];
rz(pi/2) q[8];
rx(pi/2) q[5];
rx(pi/2) q[8];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
rz(pi/4) q[8];
x q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(-pi/2) q[8];
cz q[4], q[8];
x q[8];
x q[4];
rz(pi/2) q[8];
rz(pi/2) q[4];
rx(pi/2) q[8];
rx(pi/2) q[4];
rz(-pi/2) q[8];
rz(-pi/2) q[4];
rz(-pi/4) q[8];
x q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(-pi/2) q[8];
cz q[0], q[8];
cz q[0], q[4];
x q[8];
x q[4];
rz(pi/2) q[8];
rz(pi/2) q[4];
rx(pi/2) q[8];
rx(pi/2) q[4];
rz(-pi/2) q[8];
rz(-pi/2) q[4];
rz(pi/4) q[8];
rz(-pi/4) q[4];
x q[8];
x q[4];
rz(pi/2) q[8];
rz(pi/2) q[4];
rx(pi/2) q[8];
rx(pi/2) q[4];
rz(-pi/2) q[8];
rz(-pi/2) q[4];
cz q[0], q[4];
rz(pi) q[0];
x q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(-pi/2) q[4];
