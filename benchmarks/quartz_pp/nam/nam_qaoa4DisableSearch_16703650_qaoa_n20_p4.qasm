OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[20];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
cx q[0], q[8];
cx q[4], q[9];
rz(2) q[8];
rz(2) q[9];
cx q[0], q[8];
cx q[4], q[9];
cx q[0], q[11];
cx q[8], q[13];
cx q[4], q[2];
cx q[9], q[10];
rz(2) q[11];
rz(2) q[13];
rz(2) q[2];
rz(2) q[10];
cx q[0], q[11];
cx q[8], q[13];
cx q[4], q[2];
cx q[9], q[10];
cx q[0], q[19];
cx q[4], q[16];
cx q[9], q[7];
cx q[10], q[12];
rz(2) q[19];
rz(2) q[16];
rz(2) q[7];
rz(2) q[12];
cx q[0], q[19];
cx q[4], q[16];
cx q[9], q[7];
cx q[10], q[12];
rz(pi/2) q[0];
cx q[8], q[19];
rz(pi/2) q[4];
rz(pi/2) q[9];
cx q[3], q[7];
cx q[10], q[2];
cx q[12], q[15];
rz(-pi/2) q[0];
rz(2) q[19];
rz(-pi/2) q[4];
rz(-pi/2) q[9];
rz(2) q[7];
rz(2) q[2];
rz(2) q[15];
h q[0];
cx q[8], q[19];
h q[4];
h q[9];
cx q[3], q[7];
cx q[10], q[2];
cx q[12], q[15];
rz(-pi/2) q[0];
rz(pi/2) q[8];
rz(-pi/2) q[4];
rz(-pi/2) q[9];
cx q[3], q[6];
cx q[7], q[16];
rz(pi/2) q[10];
cx q[12], q[18];
rz(5.1415927) q[0];
rz(-pi/2) q[8];
rz(5.1415927) q[4];
rz(5.1415927) q[9];
rz(2) q[6];
rz(2) q[16];
rz(-pi/2) q[10];
rz(2) q[18];
rz(-pi/2) q[0];
h q[8];
rz(-pi/2) q[4];
rz(-pi/2) q[9];
cx q[3], q[6];
cx q[7], q[16];
h q[10];
cx q[12], q[18];
h q[0];
rz(-pi/2) q[8];
h q[4];
h q[9];
cx q[11], q[6];
cx q[3], q[14];
rz(pi/2) q[7];
rz(-pi/2) q[10];
rz(pi/2) q[12];
rz(-pi/2) q[0];
rz(5.1415927) q[8];
rz(-pi/2) q[4];
rz(-pi/2) q[9];
rz(2) q[6];
rz(2) q[14];
rz(-pi/2) q[7];
rz(5.1415927) q[10];
rz(-pi/2) q[12];
rz(7.8539816) q[0];
rz(-pi/2) q[8];
rz(7.8539816) q[4];
rz(7.8539816) q[9];
cx q[11], q[6];
cx q[3], q[14];
h q[7];
rz(-pi/2) q[10];
h q[12];
h q[8];
cx q[4], q[9];
cx q[6], q[2];
cx q[11], q[15];
rz(pi/2) q[3];
cx q[13], q[14];
rz(-pi/2) q[7];
h q[10];
rz(-pi/2) q[12];
rz(-pi/2) q[8];
rz(2) q[9];
rz(2) q[2];
rz(2) q[15];
rz(-pi/2) q[3];
rz(2) q[14];
rz(5.1415927) q[7];
rz(-pi/2) q[10];
rz(5.1415927) q[12];
rz(7.8539816) q[8];
cx q[4], q[9];
cx q[6], q[2];
cx q[11], q[15];
h q[3];
cx q[13], q[14];
rz(-pi/2) q[7];
rz(7.8539816) q[10];
rz(-pi/2) q[12];
cx q[0], q[8];
rz(pi/2) q[2];
rz(pi/2) q[6];
rz(pi/2) q[11];
cx q[1], q[15];
rz(-pi/2) q[3];
cx q[14], q[5];
cx q[13], q[18];
h q[7];
cx q[9], q[10];
h q[12];
rz(2) q[8];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[11];
rz(2) q[15];
rz(5.1415927) q[3];
rz(2) q[5];
rz(2) q[18];
rz(-pi/2) q[7];
rz(2) q[10];
rz(-pi/2) q[12];
cx q[0], q[8];
h q[2];
h q[6];
h q[11];
cx q[1], q[15];
rz(-pi/2) q[3];
cx q[14], q[5];
cx q[13], q[18];
rz(7.8539816) q[7];
cx q[9], q[10];
rz(7.8539816) q[12];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[11];
rz(pi/2) q[15];
h q[3];
rz(pi/2) q[14];
cx q[1], q[5];
rz(pi/2) q[13];
cx q[16], q[18];
cx q[9], q[7];
cx q[10], q[12];
rz(5.1415927) q[2];
rz(5.1415927) q[6];
rz(5.1415927) q[11];
rz(-pi/2) q[15];
rz(-pi/2) q[3];
rz(-pi/2) q[14];
rz(2) q[5];
rz(-pi/2) q[13];
rz(2) q[18];
rz(2) q[7];
rz(2) q[12];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[11];
h q[15];
rz(7.8539816) q[3];
h q[14];
cx q[1], q[5];
h q[13];
cx q[16], q[18];
cx q[9], q[7];
cx q[10], q[12];
h q[2];
h q[6];
h q[11];
rz(-pi/2) q[15];
rz(-pi/2) q[14];
cx q[1], q[17];
rz(-pi/2) q[13];
rz(pi/2) q[16];
rz(pi/2) q[18];
rz(pi/2) q[9];
cx q[3], q[7];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[11];
rz(5.1415927) q[15];
rz(5.1415927) q[14];
rz(2) q[17];
rz(5.1415927) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(-pi/2) q[9];
rz(2) q[7];
rz(7.8539816) q[2];
rz(7.8539816) q[6];
rz(7.8539816) q[11];
rz(-pi/2) q[15];
rz(-pi/2) q[14];
cx q[1], q[17];
rz(-pi/2) q[13];
h q[16];
h q[18];
h q[9];
cx q[3], q[7];
cx q[4], q[2];
cx q[0], q[11];
h q[15];
h q[14];
rz(pi/2) q[1];
cx q[5], q[17];
h q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(-pi/2) q[9];
cx q[3], q[6];
rz(2) q[2];
rz(2) q[11];
rz(-pi/2) q[15];
rz(-pi/2) q[14];
rz(-pi/2) q[1];
rz(2) q[17];
rz(-pi/2) q[13];
rz(5.1415927) q[16];
rz(5.1415927) q[18];
rz(5.1415927) q[9];
rz(2) q[6];
cx q[4], q[2];
cx q[0], q[11];
rz(7.8539816) q[15];
rz(7.8539816) q[14];
h q[1];
cx q[5], q[17];
rz(7.8539816) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(-pi/2) q[9];
cx q[3], q[6];
cx q[10], q[2];
cx q[12], q[15];
rz(-pi/2) q[1];
rz(pi/2) q[5];
cx q[19], q[17];
cx q[8], q[13];
h q[16];
h q[18];
h q[9];
cx q[3], q[14];
cx q[11], q[6];
rz(2) q[2];
rz(2) q[15];
rz(5.1415927) q[1];
rz(-pi/2) q[5];
rz(2) q[17];
rz(2) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(-pi/2) q[9];
rz(2) q[14];
rz(2) q[6];
cx q[10], q[2];
cx q[12], q[15];
rz(-pi/2) q[1];
h q[5];
cx q[19], q[17];
cx q[8], q[13];
rz(7.8539816) q[16];
rz(7.8539816) q[18];
rz(7.8539816) q[9];
cx q[3], q[14];
cx q[11], q[6];
rz(pi/2) q[10];
h q[1];
rz(-pi/2) q[5];
rz(pi/2) q[17];
rz(pi/2) q[19];
cx q[4], q[16];
cx q[12], q[18];
rz(pi/2) q[3];
cx q[13], q[14];
cx q[11], q[15];
cx q[6], q[2];
rz(-pi/2) q[10];
rz(-pi/2) q[1];
rz(5.1415927) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(2) q[16];
rz(2) q[18];
rz(-pi/2) q[3];
rz(2) q[14];
rz(2) q[15];
rz(2) q[2];
h q[10];
rz(7.8539816) q[1];
rz(-pi/2) q[5];
h q[17];
h q[19];
cx q[4], q[16];
cx q[12], q[18];
h q[3];
cx q[13], q[14];
cx q[11], q[15];
cx q[6], q[2];
rz(-pi/2) q[10];
h q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(pi/2) q[4];
cx q[7], q[16];
rz(pi/2) q[12];
rz(-pi/2) q[3];
cx q[13], q[18];
rz(pi/2) q[11];
cx q[1], q[15];
rz(pi/2) q[2];
rz(pi/2) q[6];
rz(5.1415927) q[10];
rz(-pi/2) q[5];
rz(5.1415927) q[17];
rz(5.1415927) q[19];
rz(-pi/2) q[4];
rz(2) q[16];
rz(-pi/2) q[12];
rz(5.1415927) q[3];
rz(2) q[18];
rz(-pi/2) q[11];
rz(2) q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[10];
rz(7.8539816) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
h q[4];
cx q[7], q[16];
h q[12];
rz(-pi/2) q[3];
cx q[13], q[18];
h q[11];
cx q[1], q[15];
h q[2];
h q[6];
h q[10];
cx q[14], q[5];
h q[17];
h q[19];
rz(-pi/2) q[4];
rz(pi/2) q[7];
rz(-pi/2) q[12];
h q[3];
rz(pi/2) q[13];
cx q[16], q[18];
rz(-pi/2) q[11];
rz(pi/2) q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[10];
rz(2) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(5.1415927) q[4];
rz(-pi/2) q[7];
rz(5.1415927) q[12];
rz(-pi/2) q[3];
rz(-pi/2) q[13];
rz(2) q[18];
rz(5.1415927) q[11];
rz(-pi/2) q[15];
rz(5.1415927) q[2];
rz(5.1415927) q[6];
rz(7.8539816) q[10];
cx q[14], q[5];
rz(7.8539816) q[17];
rz(7.8539816) q[19];
rz(-pi/2) q[4];
h q[7];
rz(-pi/2) q[12];
rz(7.8539816) q[3];
h q[13];
cx q[16], q[18];
rz(-pi/2) q[11];
h q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(pi/2) q[14];
cx q[1], q[5];
cx q[0], q[19];
h q[4];
rz(-pi/2) q[7];
h q[12];
rz(-pi/2) q[13];
rz(pi/2) q[16];
rz(pi/2) q[18];
h q[11];
rz(-pi/2) q[15];
h q[2];
h q[6];
rz(-pi/2) q[14];
rz(2) q[5];
rz(2) q[19];
rz(-pi/2) q[4];
rz(5.1415927) q[7];
rz(-pi/2) q[12];
rz(5.1415927) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(-pi/2) q[11];
rz(5.1415927) q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
h q[14];
cx q[1], q[5];
cx q[0], q[19];
rz(7.8539816) q[4];
rz(-pi/2) q[7];
rz(7.8539816) q[12];
rz(-pi/2) q[13];
h q[16];
h q[18];
rz(7.8539816) q[11];
rz(-pi/2) q[15];
rz(7.8539816) q[2];
rz(7.8539816) q[6];
rz(-pi/2) q[14];
cx q[1], q[17];
rz(pi/2) q[0];
cx q[8], q[19];
cx q[4], q[9];
h q[7];
h q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
h q[15];
rz(5.1415927) q[14];
rz(2) q[17];
rz(-pi/2) q[0];
rz(2) q[19];
rz(2) q[9];
rz(-pi/2) q[7];
rz(-pi/2) q[13];
rz(5.1415927) q[16];
rz(5.1415927) q[18];
rz(-pi/2) q[15];
rz(-pi/2) q[14];
cx q[1], q[17];
h q[0];
cx q[8], q[19];
cx q[4], q[9];
rz(7.8539816) q[7];
rz(7.8539816) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(7.8539816) q[15];
h q[14];
rz(pi/2) q[1];
cx q[5], q[17];
rz(-pi/2) q[0];
rz(pi/2) q[8];
cx q[9], q[10];
cx q[4], q[2];
h q[16];
h q[18];
rz(-pi/2) q[14];
rz(-pi/2) q[1];
rz(2) q[17];
rz(5.1415927) q[0];
rz(-pi/2) q[8];
rz(2) q[10];
rz(2) q[2];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(7.8539816) q[14];
h q[1];
cx q[5], q[17];
rz(-pi/2) q[0];
h q[8];
cx q[9], q[10];
cx q[4], q[2];
rz(7.8539816) q[16];
rz(7.8539816) q[18];
rz(-pi/2) q[1];
rz(pi/2) q[5];
cx q[19], q[17];
h q[0];
rz(-pi/2) q[8];
cx q[10], q[12];
cx q[9], q[7];
cx q[4], q[16];
rz(5.1415927) q[1];
rz(-pi/2) q[5];
rz(2) q[17];
rz(-pi/2) q[0];
rz(5.1415927) q[8];
rz(2) q[12];
rz(2) q[7];
rz(2) q[16];
rz(-pi/2) q[1];
h q[5];
cx q[19], q[17];
rz(7.8539816) q[0];
rz(-pi/2) q[8];
cx q[10], q[12];
cx q[9], q[7];
cx q[4], q[16];
h q[1];
rz(-pi/2) q[5];
rz(pi/2) q[17];
rz(pi/2) q[19];
h q[8];
cx q[12], q[15];
cx q[10], q[2];
rz(pi/2) q[9];
cx q[3], q[7];
rz(pi/2) q[4];
rz(-pi/2) q[1];
rz(5.1415927) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(-pi/2) q[8];
rz(2) q[15];
rz(2) q[2];
rz(-pi/2) q[9];
rz(2) q[7];
rz(-pi/2) q[4];
rz(7.8539816) q[1];
rz(-pi/2) q[5];
h q[17];
h q[19];
rz(7.8539816) q[8];
cx q[12], q[15];
cx q[10], q[2];
h q[9];
cx q[3], q[7];
h q[4];
h q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
cx q[0], q[8];
cx q[12], q[18];
rz(pi/2) q[10];
rz(-pi/2) q[9];
cx q[3], q[6];
cx q[7], q[16];
rz(-pi/2) q[4];
rz(-pi/2) q[5];
rz(5.1415927) q[17];
rz(5.1415927) q[19];
rz(2) q[8];
rz(2) q[18];
rz(-pi/2) q[10];
rz(5.1415927) q[9];
rz(2) q[6];
rz(2) q[16];
rz(5.1415927) q[4];
rz(7.8539816) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
cx q[0], q[8];
cx q[12], q[18];
h q[10];
rz(-pi/2) q[9];
cx q[3], q[6];
cx q[7], q[16];
rz(-pi/2) q[4];
h q[17];
h q[19];
cx q[0], q[11];
cx q[8], q[13];
rz(pi/2) q[12];
rz(-pi/2) q[10];
h q[9];
cx q[3], q[14];
rz(pi/2) q[7];
h q[4];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(2) q[11];
rz(2) q[13];
rz(-pi/2) q[12];
rz(5.1415927) q[10];
rz(-pi/2) q[9];
rz(2) q[14];
rz(-pi/2) q[7];
rz(-pi/2) q[4];
rz(7.8539816) q[17];
rz(7.8539816) q[19];
cx q[0], q[11];
cx q[8], q[13];
h q[12];
rz(-pi/2) q[10];
rz(7.8539816) q[9];
cx q[3], q[14];
h q[7];
rz(7.8539816) q[4];
cx q[0], q[19];
cx q[11], q[6];
rz(-pi/2) q[12];
h q[10];
rz(pi/2) q[3];
cx q[13], q[14];
rz(-pi/2) q[7];
cx q[4], q[9];
rz(2) q[19];
rz(2) q[6];
rz(5.1415927) q[12];
rz(-pi/2) q[10];
rz(-pi/2) q[3];
rz(2) q[14];
rz(5.1415927) q[7];
rz(2) q[9];
cx q[0], q[19];
cx q[11], q[6];
rz(-pi/2) q[12];
rz(7.8539816) q[10];
h q[3];
cx q[13], q[14];
rz(-pi/2) q[7];
cx q[4], q[9];
rz(pi/2) q[0];
cx q[8], q[19];
cx q[11], q[15];
cx q[6], q[2];
h q[12];
rz(-pi/2) q[3];
cx q[13], q[18];
cx q[14], q[5];
h q[7];
cx q[9], q[10];
rz(-pi/2) q[0];
rz(2) q[19];
rz(2) q[15];
rz(2) q[2];
rz(-pi/2) q[12];
rz(5.1415927) q[3];
rz(2) q[18];
rz(2) q[5];
rz(-pi/2) q[7];
rz(2) q[10];
h q[0];
cx q[8], q[19];
cx q[11], q[15];
cx q[6], q[2];
rz(7.8539816) q[12];
rz(-pi/2) q[3];
cx q[13], q[18];
cx q[14], q[5];
rz(7.8539816) q[7];
cx q[9], q[10];
rz(-pi/2) q[0];
rz(pi/2) q[8];
rz(pi/2) q[11];
cx q[1], q[15];
rz(pi/2) q[2];
rz(pi/2) q[6];
h q[3];
rz(pi/2) q[13];
cx q[16], q[18];
rz(pi/2) q[14];
cx q[10], q[12];
cx q[9], q[7];
rz(5.1415927) q[0];
rz(-pi/2) q[8];
rz(-pi/2) q[11];
rz(2) q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[3];
rz(-pi/2) q[13];
rz(2) q[18];
rz(-pi/2) q[14];
rz(2) q[12];
rz(2) q[7];
rz(-pi/2) q[0];
h q[8];
h q[11];
cx q[1], q[15];
h q[2];
h q[6];
rz(7.8539816) q[3];
h q[13];
cx q[16], q[18];
h q[14];
cx q[10], q[12];
cx q[9], q[7];
h q[0];
rz(-pi/2) q[8];
rz(-pi/2) q[11];
rz(pi/2) q[15];
cx q[1], q[5];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[13];
rz(pi/2) q[16];
rz(pi/2) q[18];
rz(-pi/2) q[14];
rz(pi/2) q[9];
cx q[3], q[7];
rz(-pi/2) q[0];
rz(5.1415927) q[8];
rz(5.1415927) q[11];
rz(-pi/2) q[15];
rz(2) q[5];
rz(5.1415927) q[2];
rz(5.1415927) q[6];
rz(5.1415927) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(5.1415927) q[14];
rz(-pi/2) q[9];
rz(2) q[7];
rz(7.8539816) q[0];
rz(-pi/2) q[8];
rz(-pi/2) q[11];
h q[15];
cx q[1], q[5];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[13];
h q[16];
h q[18];
rz(-pi/2) q[14];
h q[9];
cx q[3], q[7];
h q[8];
h q[11];
rz(-pi/2) q[15];
cx q[1], q[17];
h q[2];
h q[6];
h q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
h q[14];
rz(-pi/2) q[9];
rz(-pi/2) q[8];
rz(-pi/2) q[11];
rz(5.1415927) q[15];
rz(2) q[17];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(-pi/2) q[13];
rz(5.1415927) q[16];
rz(5.1415927) q[18];
rz(-pi/2) q[14];
rz(5.1415927) q[9];
rz(7.8539816) q[8];
rz(7.8539816) q[11];
rz(-pi/2) q[15];
cx q[1], q[17];
rz(7.8539816) q[2];
rz(7.8539816) q[6];
rz(7.8539816) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(7.8539816) q[14];
rz(-pi/2) q[9];
cx q[0], q[8];
h q[15];
rz(pi/2) q[1];
cx q[5], q[17];
cx q[4], q[2];
cx q[3], q[6];
h q[16];
h q[18];
h q[9];
rz(2) q[8];
rz(-pi/2) q[15];
rz(-pi/2) q[1];
rz(2) q[17];
rz(2) q[2];
rz(2) q[6];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(-pi/2) q[9];
cx q[0], q[8];
rz(7.8539816) q[15];
h q[1];
cx q[5], q[17];
cx q[4], q[2];
cx q[3], q[6];
rz(7.8539816) q[16];
rz(7.8539816) q[18];
rz(7.8539816) q[9];
cx q[0], q[11];
cx q[8], q[13];
cx q[12], q[15];
rz(-pi/2) q[1];
rz(pi/2) q[5];
cx q[19], q[17];
cx q[10], q[2];
cx q[3], q[14];
cx q[4], q[16];
rz(2) q[11];
rz(2) q[13];
rz(2) q[15];
rz(5.1415927) q[1];
rz(-pi/2) q[5];
rz(2) q[17];
rz(2) q[2];
rz(2) q[14];
rz(2) q[16];
cx q[0], q[11];
cx q[8], q[13];
cx q[12], q[15];
rz(-pi/2) q[1];
h q[5];
cx q[19], q[17];
cx q[10], q[2];
cx q[3], q[14];
cx q[4], q[16];
cx q[11], q[6];
cx q[12], q[18];
h q[1];
rz(-pi/2) q[5];
rz(pi/2) q[17];
rz(pi/2) q[19];
rz(pi/2) q[10];
rz(pi/2) q[3];
cx q[13], q[14];
rz(pi/2) q[4];
cx q[7], q[16];
rz(2) q[6];
rz(2) q[18];
rz(-pi/2) q[1];
rz(5.1415927) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(-pi/2) q[10];
rz(-pi/2) q[3];
rz(2) q[14];
rz(-pi/2) q[4];
rz(2) q[16];
cx q[11], q[6];
cx q[12], q[18];
rz(7.8539816) q[1];
rz(-pi/2) q[5];
h q[17];
h q[19];
h q[10];
h q[3];
cx q[13], q[14];
h q[4];
cx q[7], q[16];
cx q[11], q[15];
cx q[6], q[2];
rz(pi/2) q[12];
h q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(-pi/2) q[10];
rz(-pi/2) q[3];
cx q[13], q[18];
rz(-pi/2) q[4];
rz(pi/2) q[7];
rz(2) q[15];
rz(2) q[2];
rz(-pi/2) q[12];
rz(-pi/2) q[5];
rz(5.1415927) q[17];
rz(5.1415927) q[19];
rz(5.1415927) q[10];
rz(5.1415927) q[3];
rz(2) q[18];
rz(5.1415927) q[4];
rz(-pi/2) q[7];
cx q[11], q[15];
cx q[6], q[2];
h q[12];
rz(7.8539816) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(-pi/2) q[10];
rz(-pi/2) q[3];
cx q[13], q[18];
rz(-pi/2) q[4];
h q[7];
rz(pi/2) q[11];
cx q[1], q[15];
rz(pi/2) q[2];
rz(pi/2) q[6];
rz(-pi/2) q[12];
cx q[14], q[5];
h q[17];
h q[19];
h q[10];
h q[3];
rz(pi/2) q[13];
cx q[16], q[18];
h q[4];
rz(-pi/2) q[7];
rz(-pi/2) q[11];
rz(2) q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(5.1415927) q[12];
rz(2) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(-pi/2) q[10];
rz(-pi/2) q[3];
rz(-pi/2) q[13];
rz(2) q[18];
rz(-pi/2) q[4];
rz(5.1415927) q[7];
h q[11];
cx q[1], q[15];
h q[2];
h q[6];
rz(-pi/2) q[12];
cx q[14], q[5];
rz(7.8539816) q[17];
rz(7.8539816) q[19];
rz(7.8539816) q[10];
rz(7.8539816) q[3];
h q[13];
cx q[16], q[18];
rz(7.8539816) q[4];
rz(-pi/2) q[7];
rz(-pi/2) q[11];
rz(pi/2) q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
h q[12];
rz(pi/2) q[14];
cx q[1], q[5];
cx q[0], q[19];
rz(-pi/2) q[13];
rz(pi/2) q[16];
rz(pi/2) q[18];
h q[7];
rz(5.1415927) q[11];
rz(-pi/2) q[15];
rz(5.1415927) q[2];
rz(5.1415927) q[6];
rz(-pi/2) q[12];
rz(-pi/2) q[14];
rz(2) q[5];
rz(2) q[19];
rz(5.1415927) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(-pi/2) q[7];
rz(-pi/2) q[11];
h q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(7.8539816) q[12];
h q[14];
cx q[1], q[5];
cx q[0], q[19];
rz(-pi/2) q[13];
h q[16];
h q[18];
rz(7.8539816) q[7];
h q[11];
rz(-pi/2) q[15];
h q[2];
h q[6];
rz(-pi/2) q[14];
cx q[1], q[17];
rz(pi/2) q[0];
cx q[8], q[19];
h q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(-pi/2) q[11];
rz(5.1415927) q[15];
rz(-pi/2) q[2];
rz(-pi/2) q[6];
rz(5.1415927) q[14];
rz(2) q[17];
rz(-pi/2) q[0];
rz(2) q[19];
rz(-pi/2) q[13];
rz(5.1415927) q[16];
rz(5.1415927) q[18];
rz(7.8539816) q[11];
rz(-pi/2) q[15];
rz(7.8539816) q[2];
rz(7.8539816) q[6];
rz(-pi/2) q[14];
cx q[1], q[17];
h q[0];
cx q[8], q[19];
rz(7.8539816) q[13];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
h q[15];
h q[14];
rz(pi/2) q[1];
cx q[5], q[17];
rz(-pi/2) q[0];
rz(pi/2) q[8];
h q[16];
h q[18];
rz(-pi/2) q[15];
rz(-pi/2) q[14];
rz(-pi/2) q[1];
rz(2) q[17];
rz(5.1415927) q[0];
rz(-pi/2) q[8];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(7.8539816) q[15];
rz(7.8539816) q[14];
h q[1];
cx q[5], q[17];
rz(-pi/2) q[0];
h q[8];
rz(7.8539816) q[16];
rz(7.8539816) q[18];
rz(-pi/2) q[1];
rz(pi/2) q[5];
cx q[19], q[17];
h q[0];
rz(-pi/2) q[8];
rz(5.1415927) q[1];
rz(-pi/2) q[5];
rz(2) q[17];
rz(-pi/2) q[0];
rz(5.1415927) q[8];
rz(-pi/2) q[1];
h q[5];
cx q[19], q[17];
rz(7.8539816) q[0];
rz(-pi/2) q[8];
h q[1];
rz(-pi/2) q[5];
rz(pi/2) q[17];
rz(pi/2) q[19];
h q[8];
rz(-pi/2) q[1];
rz(5.1415927) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(-pi/2) q[8];
rz(7.8539816) q[1];
rz(-pi/2) q[5];
h q[17];
h q[19];
rz(7.8539816) q[8];
h q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(-pi/2) q[5];
rz(5.1415927) q[17];
rz(5.1415927) q[19];
rz(7.8539816) q[5];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
h q[17];
h q[19];
rz(-pi/2) q[17];
rz(-pi/2) q[19];
rz(7.8539816) q[17];
rz(7.8539816) q[19];
