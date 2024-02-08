OPENQASM 2.0;
include "qelib1.inc";
qreg q[21];
h q[14];
cx q[8], q[14];
rz(-pi/4) q[14];
cx q[6], q[14];
rz(pi/4) q[14];
cx q[8], q[14];
rz(-pi/4) q[14];
cx q[6], q[14];
rz(pi/4) q[14];
cx q[6], q[8];
rz(-pi/4) q[8];
cx q[6], q[8];
rz(pi/4) q[6];
rz(pi/4) q[8];
cx q[9], q[14];
rz(-pi/4) q[14];
cx q[5], q[14];
rz(pi/4) q[14];
cx q[9], q[14];
rz(-pi/4) q[14];
cx q[5], q[14];
rz(pi/4) q[14];
cx q[10], q[14];
rz(-pi/4) q[14];
cx q[4], q[14];
rz(pi/4) q[14];
cx q[10], q[14];
rz(-pi/4) q[14];
cx q[4], q[14];
rz(pi/4) q[14];
cx q[11], q[14];
rz(-pi/4) q[14];
cx q[3], q[14];
rz(pi/4) q[14];
cx q[11], q[14];
rz(-pi/4) q[14];
cx q[3], q[14];
rz(pi/4) q[14];
cx q[12], q[14];
rz(-pi/4) q[14];
cx q[2], q[14];
rz(pi/4) q[14];
cx q[12], q[14];
rz(-pi/4) q[14];
cx q[2], q[14];
rz(pi/4) q[14];
cx q[13], q[14];
rz(-pi/4) q[14];
cx q[1], q[14];
rz(pi/4) q[14];
cx q[13], q[14];
rz(-pi/4) q[14];
cx q[1], q[14];
cx q[1], q[13];
rz(-pi/4) q[13];
cx q[1], q[13];
rz(pi/4) q[1];
rz(pi/4) q[13];
rz(pi/4) q[14];
h q[14];
cx q[2], q[12];
rz(-pi/4) q[12];
cx q[2], q[12];
rz(pi/4) q[12];
rz(pi/4) q[2];
cx q[3], q[11];
rz(-pi/4) q[11];
cx q[3], q[11];
rz(pi/4) q[11];
rz(pi/4) q[3];
cx q[4], q[10];
rz(-pi/4) q[10];
cx q[4], q[10];
rz(pi/4) q[10];
rz(pi/4) q[4];
cx q[5], q[9];
rz(-pi/4) q[9];
cx q[5], q[9];
rz(pi/4) q[5];
rz(pi/4) q[9];
h q[15];
cx q[9], q[15];
rz(-pi/4) q[15];
cx q[6], q[15];
rz(pi/4) q[15];
cx q[9], q[15];
rz(-pi/4) q[15];
cx q[6], q[15];
rz(pi/4) q[15];
cx q[10], q[15];
rz(-pi/4) q[15];
cx q[5], q[15];
rz(pi/4) q[15];
cx q[10], q[15];
rz(-pi/4) q[15];
cx q[5], q[15];
rz(pi/4) q[15];
cx q[11], q[15];
rz(-pi/4) q[15];
cx q[4], q[15];
rz(pi/4) q[15];
cx q[11], q[15];
rz(-pi/4) q[15];
cx q[4], q[15];
rz(pi/4) q[15];
cx q[12], q[15];
rz(-pi/4) q[15];
cx q[3], q[15];
rz(pi/4) q[15];
cx q[12], q[15];
rz(-pi/4) q[15];
cx q[3], q[15];
rz(pi/4) q[15];
cx q[13], q[15];
rz(-pi/4) q[15];
cx q[2], q[15];
rz(pi/4) q[15];
cx q[13], q[15];
rz(-pi/4) q[15];
cx q[2], q[15];
rz(pi/4) q[15];
h q[15];
cx q[2], q[13];
rz(-pi/4) q[13];
cx q[2], q[13];
rz(pi/4) q[13];
rz(pi/4) q[2];
cx q[3], q[12];
rz(-pi/4) q[12];
cx q[3], q[12];
rz(pi/4) q[12];
rz(pi/4) q[3];
cx q[4], q[11];
rz(-pi/4) q[11];
cx q[4], q[11];
rz(pi/4) q[11];
rz(pi/4) q[4];
cx q[5], q[10];
rz(-pi/4) q[10];
cx q[5], q[10];
rz(pi/4) q[10];
rz(pi/4) q[5];
cx q[6], q[9];
rz(-pi/4) q[9];
cx q[6], q[9];
rz(pi/4) q[6];
rz(pi/4) q[9];
h q[16];
cx q[10], q[16];
rz(-pi/4) q[16];
cx q[6], q[16];
rz(pi/4) q[16];
cx q[10], q[16];
rz(-pi/4) q[16];
cx q[6], q[16];
rz(pi/4) q[16];
cx q[11], q[16];
rz(-pi/4) q[16];
cx q[5], q[16];
rz(pi/4) q[16];
cx q[11], q[16];
rz(-pi/4) q[16];
cx q[5], q[16];
rz(pi/4) q[16];
cx q[12], q[16];
rz(-pi/4) q[16];
cx q[4], q[16];
rz(pi/4) q[16];
cx q[12], q[16];
rz(-pi/4) q[16];
cx q[4], q[16];
rz(pi/4) q[16];
cx q[13], q[16];
rz(-pi/4) q[16];
cx q[3], q[16];
rz(pi/4) q[16];
cx q[13], q[16];
rz(-pi/4) q[16];
cx q[3], q[16];
rz(pi/4) q[16];
h q[16];
cx q[3], q[13];
rz(-pi/4) q[13];
cx q[3], q[13];
rz(pi/4) q[13];
rz(pi/4) q[3];
cx q[4], q[12];
rz(-pi/4) q[12];
cx q[4], q[12];
rz(pi/4) q[12];
rz(pi/4) q[4];
cx q[5], q[11];
rz(-pi/4) q[11];
cx q[5], q[11];
rz(pi/4) q[11];
rz(pi/4) q[5];
cx q[6], q[10];
rz(-pi/4) q[10];
cx q[6], q[10];
rz(pi/4) q[10];
rz(pi/4) q[6];
h q[17];
cx q[11], q[17];
rz(-pi/4) q[17];
cx q[6], q[17];
rz(pi/4) q[17];
cx q[11], q[17];
rz(-pi/4) q[17];
cx q[6], q[17];
rz(pi/4) q[17];
cx q[12], q[17];
rz(-pi/4) q[17];
cx q[5], q[17];
rz(pi/4) q[17];
cx q[12], q[17];
rz(-pi/4) q[17];
cx q[5], q[17];
rz(pi/4) q[17];
cx q[13], q[17];
rz(-pi/4) q[17];
cx q[4], q[17];
rz(pi/4) q[17];
cx q[13], q[17];
rz(-pi/4) q[17];
cx q[4], q[17];
rz(pi/4) q[17];
h q[17];
cx q[4], q[13];
rz(-pi/4) q[13];
cx q[4], q[13];
rz(pi/4) q[13];
rz(pi/4) q[4];
cx q[5], q[12];
rz(-pi/4) q[12];
cx q[5], q[12];
rz(pi/4) q[12];
rz(pi/4) q[5];
cx q[6], q[11];
rz(-pi/4) q[11];
cx q[6], q[11];
rz(pi/4) q[11];
rz(pi/4) q[6];
h q[18];
cx q[12], q[18];
rz(-pi/4) q[18];
cx q[6], q[18];
rz(pi/4) q[18];
cx q[12], q[18];
rz(-pi/4) q[18];
cx q[6], q[18];
rz(pi/4) q[18];
cx q[13], q[18];
rz(-pi/4) q[18];
cx q[5], q[18];
rz(pi/4) q[18];
cx q[13], q[18];
rz(-pi/4) q[18];
cx q[5], q[18];
rz(pi/4) q[18];
h q[18];
cx q[5], q[13];
rz(-pi/4) q[13];
cx q[5], q[13];
rz(pi/4) q[13];
rz(pi/4) q[5];
cx q[6], q[12];
rz(-pi/4) q[12];
cx q[6], q[12];
rz(pi/4) q[12];
rz(pi/4) q[6];
h q[19];
cx q[13], q[19];
rz(-pi/4) q[19];
cx q[6], q[19];
rz(pi/4) q[19];
cx q[13], q[19];
rz(-pi/4) q[19];
cx q[6], q[19];
rz(pi/4) q[19];
h q[19];
cx q[6], q[13];
rz(-pi/4) q[13];
cx q[6], q[13];
rz(pi/4) q[13];
rz(pi/4) q[6];
cx q[19], q[20];
cx q[18], q[19];
cx q[17], q[18];
cx q[16], q[17];
cx q[15], q[16];
cx q[14], q[15];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
cx q[7], q[20];
rz(-pi/4) q[20];
cx q[6], q[20];
rz(pi/4) q[20];
cx q[7], q[20];
rz(-pi/4) q[20];
cx q[6], q[20];
rz(pi/4) q[20];
cx q[6], q[7];
rz(-pi/4) q[7];
cx q[6], q[7];
rz(pi/4) q[6];
rz(pi/4) q[7];
cx q[7], q[19];
rz(-pi/4) q[19];
cx q[8], q[20];
rz(-pi/4) q[20];
cx q[5], q[20];
rz(pi/4) q[20];
cx q[8], q[20];
rz(-pi/4) q[20];
cx q[5], q[20];
rz(pi/4) q[20];
cx q[5], q[8];
rz(-pi/4) q[8];
cx q[5], q[8];
rz(pi/4) q[5];
cx q[5], q[19];
rz(pi/4) q[19];
cx q[7], q[19];
rz(-pi/4) q[19];
cx q[5], q[19];
rz(pi/4) q[19];
cx q[5], q[7];
rz(-pi/4) q[7];
cx q[5], q[7];
rz(pi/4) q[5];
rz(pi/4) q[7];
cx q[7], q[18];
rz(-pi/4) q[18];
rz(pi/4) q[8];
cx q[8], q[19];
rz(-pi/4) q[19];
cx q[9], q[20];
rz(-pi/4) q[20];
cx q[4], q[20];
rz(pi/4) q[20];
cx q[9], q[20];
rz(-pi/4) q[20];
cx q[4], q[20];
rz(pi/4) q[20];
cx q[10], q[20];
rz(-pi/4) q[20];
cx q[3], q[20];
rz(pi/4) q[20];
cx q[10], q[20];
rz(-pi/4) q[20];
cx q[3], q[20];
rz(pi/4) q[20];
cx q[11], q[20];
rz(-pi/4) q[20];
cx q[2], q[20];
rz(pi/4) q[20];
cx q[11], q[20];
rz(-pi/4) q[20];
cx q[2], q[20];
cx q[2], q[11];
rz(-pi/4) q[11];
cx q[2], q[11];
rz(pi/4) q[11];
rz(pi/4) q[2];
rz(pi/4) q[20];
cx q[12], q[20];
rz(-pi/4) q[20];
cx q[1], q[20];
rz(pi/4) q[20];
cx q[12], q[20];
rz(-pi/4) q[20];
cx q[1], q[20];
cx q[1], q[12];
rz(-pi/4) q[12];
cx q[1], q[12];
rz(pi/4) q[1];
rz(pi/4) q[12];
rz(pi/4) q[20];
cx q[13], q[20];
rz(-pi/4) q[20];
cx q[0], q[20];
rz(pi/4) q[20];
cx q[13], q[20];
rz(-pi/4) q[20];
cx q[0], q[20];
cx q[0], q[13];
rz(-pi/4) q[13];
cx q[0], q[13];
rz(pi/4) q[0];
rz(pi/4) q[13];
rz(pi/4) q[20];
h q[20];
cx q[3], q[10];
rz(-pi/4) q[10];
cx q[3], q[10];
rz(pi/4) q[10];
rz(pi/4) q[3];
cx q[4], q[9];
rz(-pi/4) q[9];
cx q[4], q[9];
rz(pi/4) q[4];
cx q[4], q[19];
rz(pi/4) q[19];
cx q[8], q[19];
rz(-pi/4) q[19];
cx q[4], q[19];
rz(pi/4) q[19];
cx q[4], q[8];
rz(-pi/4) q[8];
cx q[4], q[8];
rz(pi/4) q[4];
cx q[4], q[18];
rz(pi/4) q[18];
cx q[7], q[18];
rz(-pi/4) q[18];
cx q[4], q[18];
rz(pi/4) q[18];
cx q[4], q[7];
rz(-pi/4) q[7];
cx q[4], q[7];
rz(pi/4) q[4];
rz(pi/4) q[7];
cx q[7], q[17];
rz(-pi/4) q[17];
rz(pi/4) q[8];
cx q[8], q[18];
rz(-pi/4) q[18];
rz(pi/4) q[9];
cx q[9], q[19];
rz(-pi/4) q[19];
cx q[3], q[19];
rz(pi/4) q[19];
cx q[9], q[19];
rz(-pi/4) q[19];
cx q[3], q[19];
rz(pi/4) q[19];
cx q[10], q[19];
rz(-pi/4) q[19];
cx q[2], q[19];
rz(pi/4) q[19];
cx q[10], q[19];
rz(-pi/4) q[19];
cx q[2], q[19];
rz(pi/4) q[19];
cx q[11], q[19];
rz(-pi/4) q[19];
cx q[1], q[19];
rz(pi/4) q[19];
cx q[11], q[19];
rz(-pi/4) q[19];
cx q[1], q[19];
cx q[1], q[11];
rz(-pi/4) q[11];
cx q[1], q[11];
rz(pi/4) q[1];
rz(pi/4) q[11];
rz(pi/4) q[19];
cx q[12], q[19];
rz(-pi/4) q[19];
cx q[0], q[19];
rz(pi/4) q[19];
cx q[12], q[19];
rz(-pi/4) q[19];
cx q[0], q[19];
cx q[0], q[12];
rz(-pi/4) q[12];
cx q[0], q[12];
rz(pi/4) q[0];
rz(pi/4) q[12];
rz(pi/4) q[19];
h q[19];
cx q[2], q[10];
rz(-pi/4) q[10];
cx q[2], q[10];
rz(pi/4) q[10];
rz(pi/4) q[2];
cx q[3], q[9];
rz(-pi/4) q[9];
cx q[3], q[9];
rz(pi/4) q[3];
cx q[3], q[18];
rz(pi/4) q[18];
cx q[8], q[18];
rz(-pi/4) q[18];
cx q[3], q[18];
rz(pi/4) q[18];
cx q[3], q[8];
rz(-pi/4) q[8];
cx q[3], q[8];
rz(pi/4) q[3];
cx q[3], q[17];
rz(pi/4) q[17];
cx q[7], q[17];
rz(-pi/4) q[17];
cx q[3], q[17];
rz(pi/4) q[17];
cx q[3], q[7];
rz(-pi/4) q[7];
cx q[3], q[7];
rz(pi/4) q[3];
rz(pi/4) q[7];
cx q[7], q[16];
rz(-pi/4) q[16];
rz(pi/4) q[8];
cx q[8], q[17];
rz(-pi/4) q[17];
rz(pi/4) q[9];
cx q[9], q[18];
rz(-pi/4) q[18];
cx q[2], q[18];
rz(pi/4) q[18];
cx q[9], q[18];
rz(-pi/4) q[18];
cx q[2], q[18];
rz(pi/4) q[18];
cx q[10], q[18];
rz(-pi/4) q[18];
cx q[1], q[18];
rz(pi/4) q[18];
cx q[10], q[18];
rz(-pi/4) q[18];
cx q[1], q[18];
cx q[1], q[10];
rz(-pi/4) q[10];
cx q[1], q[10];
rz(pi/4) q[1];
rz(pi/4) q[10];
rz(pi/4) q[18];
cx q[11], q[18];
rz(-pi/4) q[18];
cx q[0], q[18];
rz(pi/4) q[18];
cx q[11], q[18];
rz(-pi/4) q[18];
cx q[0], q[18];
cx q[0], q[11];
rz(-pi/4) q[11];
cx q[0], q[11];
rz(pi/4) q[0];
rz(pi/4) q[11];
rz(pi/4) q[18];
h q[18];
cx q[2], q[9];
rz(-pi/4) q[9];
cx q[2], q[9];
rz(pi/4) q[2];
cx q[2], q[17];
rz(pi/4) q[17];
cx q[8], q[17];
rz(-pi/4) q[17];
cx q[2], q[17];
rz(pi/4) q[17];
cx q[2], q[8];
rz(-pi/4) q[8];
cx q[2], q[8];
rz(pi/4) q[2];
cx q[2], q[16];
rz(pi/4) q[16];
cx q[7], q[16];
rz(-pi/4) q[16];
cx q[2], q[16];
rz(pi/4) q[16];
cx q[2], q[7];
rz(-pi/4) q[7];
cx q[2], q[7];
rz(pi/4) q[2];
rz(pi/4) q[7];
cx q[7], q[15];
rz(-pi/4) q[15];
rz(pi/4) q[8];
cx q[8], q[16];
rz(-pi/4) q[16];
rz(pi/4) q[9];
cx q[9], q[17];
rz(-pi/4) q[17];
cx q[1], q[17];
rz(pi/4) q[17];
cx q[9], q[17];
rz(-pi/4) q[17];
cx q[1], q[17];
cx q[1], q[9];
rz(pi/4) q[17];
cx q[10], q[17];
rz(-pi/4) q[17];
cx q[0], q[17];
rz(pi/4) q[17];
cx q[10], q[17];
rz(-pi/4) q[17];
cx q[0], q[17];
cx q[0], q[10];
rz(-pi/4) q[10];
cx q[0], q[10];
rz(pi/4) q[0];
rz(pi/4) q[10];
rz(pi/4) q[17];
h q[17];
rz(-pi/4) q[9];
cx q[1], q[9];
rz(pi/4) q[1];
cx q[1], q[16];
rz(pi/4) q[16];
cx q[8], q[16];
rz(-pi/4) q[16];
cx q[1], q[16];
cx q[1], q[8];
rz(pi/4) q[16];
rz(-pi/4) q[8];
cx q[1], q[8];
rz(pi/4) q[1];
cx q[1], q[15];
rz(pi/4) q[15];
cx q[7], q[15];
rz(-pi/4) q[15];
cx q[1], q[15];
cx q[1], q[7];
rz(pi/4) q[15];
rz(-pi/4) q[7];
cx q[1], q[7];
rz(pi/4) q[1];
rz(pi/4) q[7];
cx q[7], q[14];
rz(-pi/4) q[14];
rz(pi/4) q[8];
cx q[8], q[15];
rz(-pi/4) q[15];
rz(pi/4) q[9];
cx q[9], q[16];
rz(-pi/4) q[16];
cx q[0], q[16];
rz(pi/4) q[16];
cx q[9], q[16];
rz(-pi/4) q[16];
cx q[0], q[16];
cx q[0], q[9];
rz(pi/4) q[16];
h q[16];
rz(-pi/4) q[9];
cx q[0], q[9];
rz(pi/4) q[0];
cx q[0], q[15];
rz(pi/4) q[15];
cx q[8], q[15];
rz(-pi/4) q[15];
cx q[0], q[15];
cx q[0], q[8];
rz(pi/4) q[15];
h q[15];
rz(-pi/4) q[8];
cx q[0], q[8];
rz(pi/4) q[0];
cx q[0], q[14];
rz(pi/4) q[14];
cx q[7], q[14];
rz(-pi/4) q[14];
cx q[0], q[14];
cx q[0], q[7];
rz(pi/4) q[14];
h q[14];
rz(-pi/4) q[7];
cx q[0], q[7];
rz(pi/4) q[0];
rz(pi/4) q[7];
rz(pi/4) q[8];
rz(pi/4) q[9];
