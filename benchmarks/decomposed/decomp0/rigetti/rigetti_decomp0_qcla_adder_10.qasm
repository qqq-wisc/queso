OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
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
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[3], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[3], q[5];
cz q[3], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
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
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[2], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[4], q[5];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
cz q[2], q[5];
cz q[2], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/4) q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[2], q[4];
rz(pi/4) q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
rz(pi/4) q[4];
cz q[4], q[2];
rz(pi/2) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
cz q[3], q[4];
rz(pi/2) q[4];
rx(pi/2) q[4];
rz(pi/2) q[4];
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
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/4) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
cz q[6], q[7];
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
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[11], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[10], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[11], q[12];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[10], q[12];
cz q[10], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/4) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
cz q[10], q[11];
rz(pi/4) q[10];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/4) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
cz q[10], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
cz q[11], q[8];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[7], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[11], q[8];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[7], q[8];
cz q[7], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/4) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
cz q[7], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/4) q[11];
cz q[11], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/4) q[7];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[9], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[11], q[12];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[9], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[8], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[5], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[8], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
cz q[5], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[5], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[5], q[8];
rz(pi/4) q[5];
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
cz q[9], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/4) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
cz q[9], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/4) q[11];
cz q[11], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[9];
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
cz q[5], q[9];
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
cz q[5], q[9];
cz q[5], q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/4) q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
cz q[5], q[7];
rz(pi/4) q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
rz(pi/4) q[7];
cz q[7], q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[11], q[8];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/4) q[8];
rz(pi/2) q[8];
rx(pi/2) q[8];
rz(pi/2) q[8];
cz q[7], q[8];
cz q[7], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/4) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
cz q[7], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/4) q[11];
rz(pi/4) q[7];
cz q[7], q[5];
rz(pi/2) q[5];
rx(pi/2) q[5];
rz(pi/2) q[5];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
cz q[6], q[7];
rz(pi/2) q[7];
rx(pi/2) q[7];
rz(pi/2) q[7];
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
rz(pi/4) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
cz q[11], q[9];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
cz q[10], q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(pi/2) q[11];
rz(pi/2) q[9];
rx(pi/2) q[9];
rz(pi/2) q[9];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
cz q[14], q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(-pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
cz q[13], q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
cz q[14], q[16];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(-pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
cz q[13], q[16];
cz q[13], q[14];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
rz(-pi/4) q[14];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
cz q[13], q[14];
rz(pi/4) q[13];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
rz(pi/4) q[14];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
cz q[13], q[14];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[18], q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(-pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[17], q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[18], q[20];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(-pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[17], q[20];
cz q[17], q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(-pi/4) q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[17], q[18];
rz(pi/4) q[17];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(pi/4) q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[17], q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[18], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(-pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
cz q[14], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
cz q[18], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(-pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
cz q[14], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[14], q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(-pi/4) q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[14], q[18];
rz(pi/4) q[14];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(pi/4) q[18];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[18], q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(-pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[16], q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[18], q[20];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(-pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[16], q[20];
cz q[16], q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(-pi/4) q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[16], q[18];
rz(pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
cz q[14], q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(-pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(pi/4) q[18];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
cz q[22], q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(-pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
cz q[21], q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
cz q[22], q[24];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(-pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
cz q[21], q[24];
cz q[21], q[22];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
rz(-pi/4) q[22];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
cz q[21], q[22];
rz(pi/4) q[21];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
rz(pi/4) q[22];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
cz q[21], q[22];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[26], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(-pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[25], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[26], q[27];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(-pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[25], q[27];
cz q[25], q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(-pi/4) q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[25], q[26];
rz(pi/4) q[25];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(pi/4) q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[25], q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[26], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(-pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[22], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[26], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(-pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[22], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[23], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(-pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
cz q[15], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
cz q[23], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(-pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
cz q[15], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[15], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(-pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[15], q[23];
rz(pi/4) q[15];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/4) q[23];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[22], q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(-pi/4) q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[22], q[26];
rz(pi/4) q[22];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(pi/4) q[26];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[26], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(-pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[24], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[26], q[27];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(-pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[24], q[27];
cz q[24], q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(-pi/4) q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[24], q[26];
rz(pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
cz q[22], q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(-pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(pi/4) q[26];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[23], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(-pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[20], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[23], q[27];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(-pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[20], q[27];
cz q[20], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(-pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[20], q[23];
rz(pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[15], q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(-pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/4) q[23];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[19], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(-pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[12], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[19], q[27];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(-pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
cz q[12], q[27];
cz q[12], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(-pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
cz q[12], q[19];
rz(pi/4) q[12];
cz q[12], q[20];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[15], q[20];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(-pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[12], q[20];
cz q[12], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(-pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
cz q[12], q[15];
rz(pi/4) q[12];
cz q[12], q[16];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/4) q[15];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
cz q[14], q[16];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(-pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
cz q[12], q[16];
cz q[12], q[14];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
rz(-pi/4) q[14];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
cz q[12], q[14];
rz(pi/4) q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
rz(pi/4) q[14];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/4) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
cz q[20], q[24];
cz q[23], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(-pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
cz q[15], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
cz q[23], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(-pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
cz q[15], q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/4) q[19];
rz(pi/2) q[19];
rx(pi/2) q[19];
rz(pi/2) q[19];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[15], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(-pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[15], q[23];
rz(pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
cz q[18], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(-pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
cz q[14], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
cz q[18], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(-pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
cz q[14], q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/4) q[15];
rz(pi/2) q[15];
rx(pi/2) q[15];
rz(pi/2) q[15];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[14], q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(-pi/4) q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[14], q[18];
rz(pi/4) q[14];
cz q[14], q[12];
rz(pi/2) q[12];
rx(pi/2) q[12];
rz(pi/2) q[12];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
cz q[13], q[14];
rz(pi/2) q[14];
rx(pi/2) q[14];
rz(pi/2) q[14];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(pi/4) q[18];
cz q[18], q[16];
rz(pi/2) q[16];
rx(pi/2) q[16];
rz(pi/2) q[16];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
cz q[17], q[18];
rz(pi/2) q[18];
rx(pi/2) q[18];
rz(pi/2) q[18];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
cz q[22], q[24];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(-pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
cz q[20], q[24];
cz q[20], q[22];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
rz(-pi/4) q[22];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
cz q[20], q[22];
rz(pi/4) q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
rz(pi/4) q[22];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/4) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
cz q[26], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(-pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[22], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[26], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(-pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
cz q[22], q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/4) q[23];
rz(pi/2) q[23];
rx(pi/2) q[23];
rz(pi/2) q[23];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[22], q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(-pi/4) q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[22], q[26];
rz(pi/4) q[22];
cz q[22], q[20];
rz(pi/2) q[20];
rx(pi/2) q[20];
rz(pi/2) q[20];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
cz q[21], q[22];
rz(pi/2) q[22];
rx(pi/2) q[22];
rz(pi/2) q[22];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(pi/4) q[26];
cz q[26], q[24];
rz(pi/2) q[24];
rx(pi/2) q[24];
rz(pi/2) q[24];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
cz q[25], q[26];
rz(pi/2) q[26];
rx(pi/2) q[26];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
cz q[29], q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(-pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
cz q[28], q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
cz q[29], q[31];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(-pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
cz q[28], q[31];
cz q[28], q[29];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
rz(-pi/4) q[29];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
cz q[28], q[29];
rz(pi/4) q[28];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
rz(pi/4) q[29];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
cz q[28], q[29];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[33], q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(-pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[32], q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[33], q[34];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(-pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[32], q[34];
cz q[32], q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(-pi/4) q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[32], q[33];
rz(pi/4) q[32];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(pi/4) q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[32], q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[33], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(-pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
cz q[29], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
cz q[33], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(-pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
cz q[29], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[29], q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(-pi/4) q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[29], q[33];
rz(pi/4) q[29];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(pi/4) q[33];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[33], q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(-pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[31], q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[33], q[34];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(-pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[31], q[34];
cz q[31], q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(-pi/4) q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[31], q[33];
rz(pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
cz q[29], q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(-pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
cz q[27], q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
cz q[29], q[31];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(-pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
cz q[27], q[31];
cz q[27], q[29];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
rz(-pi/4) q[29];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
cz q[27], q[29];
rz(pi/4) q[27];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
rz(pi/4) q[29];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(pi/4) q[31];
rz(pi/2) q[31];
rx(pi/2) q[31];
rz(pi/2) q[31];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(pi/4) q[33];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[30], q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(-pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[27], q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[30], q[34];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(-pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
cz q[27], q[34];
cz q[27], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(-pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
cz q[27], q[30];
rz(pi/4) q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
cz q[33], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(-pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
cz q[29], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
cz q[33], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(-pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
cz q[29], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/4) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[29], q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(-pi/4) q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[29], q[33];
rz(pi/4) q[29];
cz q[29], q[27];
rz(pi/2) q[27];
rx(pi/2) q[27];
rz(pi/2) q[27];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
cz q[28], q[29];
rz(pi/2) q[29];
rx(pi/2) q[29];
rz(pi/2) q[29];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(pi/4) q[33];
cz q[33], q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/2) q[30];
rx(pi/2) q[30];
rz(pi/2) q[30];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
cz q[32], q[33];
rz(pi/2) q[33];
rx(pi/2) q[33];
rz(pi/2) q[33];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(pi/4) q[34];
rz(pi/2) q[34];
rx(pi/2) q[34];
rz(pi/2) q[34];
rz(pi/2) q[35];
rx(pi/2) q[35];
rz(pi/2) q[35];
cz q[1], q[35];
rz(pi/2) q[35];
rx(pi/2) q[35];
rz(pi/2) q[35];
rz(pi/2) q[35];
rx(pi/2) q[35];
rz(pi/2) q[35];
cz q[0], q[35];
rz(pi/2) q[35];
rx(pi/2) q[35];
rz(pi/2) q[35];
