OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[20];
u2(0,pi) q[0];
u2(0,pi) q[1];
u2(0,pi) q[2];
u2(0,pi) q[3];
u2(0,pi) q[4];
u2(0,pi) q[5];
u2(0,pi) q[6];
u2(0,pi) q[7];
u2(0,pi) q[8];
u2(0,pi) q[9];
u2(0,pi) q[10];
u2(0,pi) q[11];
u2(0,pi) q[12];
u2(0,pi) q[13];
u2(0,pi) q[14];
u2(0,pi) q[15];
u2(0,pi) q[16];
u2(0,pi) q[17];
u2(0,pi) q[18];
u2(0,pi) q[19];
cx q[0], q[8];
cx q[4], q[9];
u1(2) q[8];
u1(2) q[9];
cx q[0], q[8];
cx q[4], q[9];
cx q[0], q[11];
cx q[8], q[13];
cx q[4], q[2];
cx q[9], q[10];
u1(2) q[11];
u1(2) q[13];
u1(2) q[2];
u1(2) q[10];
cx q[0], q[11];
cx q[8], q[13];
cx q[4], q[2];
cx q[9], q[10];
cx q[0], q[19];
cx q[4], q[16];
cx q[9], q[7];
cx q[10], q[12];
u1(2) q[19];
u1(2) q[16];
u1(2) q[7];
u1(2) q[12];
cx q[0], q[19];
cx q[4], q[16];
cx q[9], q[7];
cx q[10], q[12];
u1(pi/2) q[0];
cx q[8], q[19];
u1(pi/2) q[4];
cx q[3], q[7];
u1(pi/2) q[9];
cx q[10], q[2];
cx q[12], q[15];
u1(-pi/2) q[0];
u1(2) q[19];
u1(-pi/2) q[4];
u1(2) q[7];
u1(-pi/2) q[9];
u1(2) q[2];
u1(2) q[15];
u2(0,pi) q[0];
cx q[8], q[19];
u2(0,pi) q[4];
cx q[3], q[7];
u2(0,pi) q[9];
cx q[10], q[2];
cx q[12], q[15];
u1(-pi/2) q[0];
u1(pi/2) q[8];
u1(-pi/2) q[4];
cx q[3], q[6];
cx q[7], q[16];
u1(-pi/2) q[9];
u1(pi/2) q[10];
cx q[12], q[18];
u1(5.1415927) q[0];
u1(-pi/2) q[8];
u1(5.1415927) q[4];
u1(2) q[6];
u1(2) q[16];
u1(5.1415927) q[9];
u1(-pi/2) q[10];
u1(2) q[18];
u1(-pi/2) q[0];
u2(0,pi) q[8];
u1(-pi/2) q[4];
cx q[3], q[6];
cx q[7], q[16];
u1(-pi/2) q[9];
u2(0,pi) q[10];
cx q[12], q[18];
u2(0,pi) q[0];
u1(-pi/2) q[8];
u2(0,pi) q[4];
cx q[11], q[6];
cx q[3], q[14];
u1(pi/2) q[7];
u2(0,pi) q[9];
u1(-pi/2) q[10];
u1(pi/2) q[12];
u1(-pi/2) q[0];
u1(5.1415927) q[8];
u1(-pi/2) q[4];
u1(2) q[6];
u1(2) q[14];
u1(-pi/2) q[7];
u1(-pi/2) q[9];
u1(5.1415927) q[10];
u1(-pi/2) q[12];
u1(7.8539816) q[0];
u1(-pi/2) q[8];
u1(7.8539816) q[4];
cx q[11], q[6];
cx q[3], q[14];
u2(0,pi) q[7];
u1(7.8539816) q[9];
u1(-pi/2) q[10];
u2(0,pi) q[12];
u2(0,pi) q[8];
cx q[6], q[2];
cx q[11], q[15];
cx q[13], q[14];
u1(pi/2) q[3];
u1(-pi/2) q[7];
cx q[4], q[9];
u2(0,pi) q[10];
u1(-pi/2) q[12];
u1(-pi/2) q[8];
u1(2) q[2];
u1(2) q[15];
u1(2) q[14];
u1(-pi/2) q[3];
u1(5.1415927) q[7];
u1(2) q[9];
u1(-pi/2) q[10];
u1(5.1415927) q[12];
u1(7.8539816) q[8];
cx q[6], q[2];
cx q[11], q[15];
cx q[13], q[14];
u2(0,pi) q[3];
u1(-pi/2) q[7];
cx q[4], q[9];
u1(7.8539816) q[10];
u1(-pi/2) q[12];
cx q[0], q[8];
u1(pi/2) q[2];
u1(pi/2) q[6];
cx q[1], q[15];
u1(pi/2) q[11];
cx q[14], q[5];
cx q[13], q[18];
u1(-pi/2) q[3];
u2(0,pi) q[7];
cx q[9], q[10];
u2(0,pi) q[12];
u1(2) q[8];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(2) q[15];
u1(-pi/2) q[11];
u1(2) q[5];
u1(2) q[18];
u1(5.1415927) q[3];
u1(-pi/2) q[7];
u1(2) q[10];
u1(-pi/2) q[12];
cx q[0], q[8];
u2(0,pi) q[2];
u2(0,pi) q[6];
cx q[1], q[15];
u2(0,pi) q[11];
cx q[14], q[5];
cx q[13], q[18];
u1(-pi/2) q[3];
u1(7.8539816) q[7];
cx q[9], q[10];
u1(7.8539816) q[12];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(pi/2) q[15];
u1(-pi/2) q[11];
cx q[1], q[5];
u1(pi/2) q[14];
u1(pi/2) q[13];
cx q[16], q[18];
u2(0,pi) q[3];
cx q[9], q[7];
cx q[10], q[12];
u1(5.1415927) q[2];
u1(5.1415927) q[6];
u1(-pi/2) q[15];
u1(5.1415927) q[11];
u1(2) q[5];
u1(-pi/2) q[14];
u1(-pi/2) q[13];
u1(2) q[18];
u1(-pi/2) q[3];
u1(2) q[7];
u1(2) q[12];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u2(0,pi) q[15];
u1(-pi/2) q[11];
cx q[1], q[5];
u2(0,pi) q[14];
u2(0,pi) q[13];
cx q[16], q[18];
u1(7.8539816) q[3];
cx q[9], q[7];
cx q[10], q[12];
u2(0,pi) q[2];
u2(0,pi) q[6];
u1(-pi/2) q[15];
u2(0,pi) q[11];
cx q[1], q[17];
u1(-pi/2) q[14];
u1(-pi/2) q[13];
u1(pi/2) q[16];
u1(pi/2) q[18];
cx q[3], q[7];
u1(pi/2) q[9];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(5.1415927) q[15];
u1(-pi/2) q[11];
u1(2) q[17];
u1(5.1415927) q[14];
u1(5.1415927) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(2) q[7];
u1(-pi/2) q[9];
u1(7.8539816) q[2];
u1(7.8539816) q[6];
u1(-pi/2) q[15];
u1(7.8539816) q[11];
cx q[1], q[17];
u1(-pi/2) q[14];
u1(-pi/2) q[13];
u2(0,pi) q[16];
u2(0,pi) q[18];
cx q[3], q[7];
u2(0,pi) q[9];
cx q[4], q[2];
u2(0,pi) q[15];
cx q[0], q[11];
u1(pi/2) q[1];
cx q[5], q[17];
u2(0,pi) q[14];
u2(0,pi) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
cx q[3], q[6];
u1(-pi/2) q[9];
u1(2) q[2];
u1(-pi/2) q[15];
u1(2) q[11];
u1(-pi/2) q[1];
u1(2) q[17];
u1(-pi/2) q[14];
u1(-pi/2) q[13];
u1(5.1415927) q[16];
u1(5.1415927) q[18];
u1(2) q[6];
u1(5.1415927) q[9];
cx q[4], q[2];
u1(7.8539816) q[15];
cx q[0], q[11];
u2(0,pi) q[1];
cx q[5], q[17];
u1(7.8539816) q[14];
u1(7.8539816) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
cx q[3], q[6];
u1(-pi/2) q[9];
cx q[10], q[2];
cx q[12], q[15];
u1(-pi/2) q[1];
u1(pi/2) q[5];
cx q[19], q[17];
cx q[8], q[13];
u2(0,pi) q[16];
u2(0,pi) q[18];
cx q[3], q[14];
cx q[11], q[6];
u2(0,pi) q[9];
u1(2) q[2];
u1(2) q[15];
u1(5.1415927) q[1];
u1(-pi/2) q[5];
u1(2) q[17];
u1(2) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(2) q[14];
u1(2) q[6];
u1(-pi/2) q[9];
cx q[10], q[2];
cx q[12], q[15];
u1(-pi/2) q[1];
u2(0,pi) q[5];
cx q[19], q[17];
cx q[8], q[13];
u1(7.8539816) q[16];
u1(7.8539816) q[18];
cx q[3], q[14];
cx q[11], q[6];
u1(7.8539816) q[9];
u1(pi/2) q[10];
u2(0,pi) q[1];
u1(-pi/2) q[5];
u1(pi/2) q[17];
u1(pi/2) q[19];
cx q[4], q[16];
cx q[12], q[18];
u1(pi/2) q[3];
cx q[13], q[14];
cx q[11], q[15];
cx q[6], q[2];
u1(-pi/2) q[10];
u1(-pi/2) q[1];
u1(5.1415927) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(2) q[16];
u1(2) q[18];
u1(-pi/2) q[3];
u1(2) q[14];
u1(2) q[15];
u1(2) q[2];
u2(0,pi) q[10];
u1(7.8539816) q[1];
u1(-pi/2) q[5];
u2(0,pi) q[17];
u2(0,pi) q[19];
cx q[4], q[16];
cx q[12], q[18];
u2(0,pi) q[3];
cx q[13], q[14];
cx q[11], q[15];
cx q[6], q[2];
u1(-pi/2) q[10];
u2(0,pi) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(pi/2) q[4];
cx q[7], q[16];
u1(pi/2) q[12];
u1(-pi/2) q[3];
cx q[13], q[18];
u1(pi/2) q[11];
cx q[1], q[15];
u1(pi/2) q[2];
u1(pi/2) q[6];
u1(5.1415927) q[10];
u1(-pi/2) q[5];
u1(5.1415927) q[17];
u1(5.1415927) q[19];
u1(-pi/2) q[4];
u1(2) q[16];
u1(-pi/2) q[12];
u1(5.1415927) q[3];
u1(2) q[18];
u1(-pi/2) q[11];
u1(2) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(-pi/2) q[10];
u1(7.8539816) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u2(0,pi) q[4];
cx q[7], q[16];
u2(0,pi) q[12];
u1(-pi/2) q[3];
cx q[13], q[18];
u2(0,pi) q[11];
cx q[1], q[15];
u2(0,pi) q[2];
u2(0,pi) q[6];
u2(0,pi) q[10];
cx q[14], q[5];
u2(0,pi) q[17];
u2(0,pi) q[19];
u1(-pi/2) q[4];
u1(pi/2) q[7];
u1(-pi/2) q[12];
u2(0,pi) q[3];
u1(pi/2) q[13];
cx q[16], q[18];
u1(-pi/2) q[11];
u1(pi/2) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(-pi/2) q[10];
u1(2) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(5.1415927) q[4];
u1(-pi/2) q[7];
u1(5.1415927) q[12];
u1(-pi/2) q[3];
u1(-pi/2) q[13];
u1(2) q[18];
u1(5.1415927) q[11];
u1(-pi/2) q[15];
u1(5.1415927) q[2];
u1(5.1415927) q[6];
u1(7.8539816) q[10];
cx q[14], q[5];
u1(7.8539816) q[17];
u1(7.8539816) q[19];
u1(-pi/2) q[4];
u2(0,pi) q[7];
u1(-pi/2) q[12];
u1(7.8539816) q[3];
u2(0,pi) q[13];
cx q[16], q[18];
u1(-pi/2) q[11];
u2(0,pi) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(pi/2) q[14];
cx q[1], q[5];
cx q[0], q[19];
u2(0,pi) q[4];
u1(-pi/2) q[7];
u2(0,pi) q[12];
u1(-pi/2) q[13];
u1(pi/2) q[16];
u1(pi/2) q[18];
u2(0,pi) q[11];
u1(-pi/2) q[15];
u2(0,pi) q[2];
u2(0,pi) q[6];
u1(-pi/2) q[14];
u1(2) q[5];
u1(2) q[19];
u1(-pi/2) q[4];
u1(5.1415927) q[7];
u1(-pi/2) q[12];
u1(5.1415927) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(-pi/2) q[11];
u1(5.1415927) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u2(0,pi) q[14];
cx q[1], q[5];
cx q[0], q[19];
u1(7.8539816) q[4];
u1(-pi/2) q[7];
u1(7.8539816) q[12];
u1(-pi/2) q[13];
u2(0,pi) q[16];
u2(0,pi) q[18];
u1(7.8539816) q[11];
u1(-pi/2) q[15];
u1(7.8539816) q[2];
u1(7.8539816) q[6];
u1(-pi/2) q[14];
cx q[1], q[17];
u1(pi/2) q[0];
cx q[8], q[19];
cx q[4], q[9];
u2(0,pi) q[7];
u2(0,pi) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u2(0,pi) q[15];
u1(5.1415927) q[14];
u1(2) q[17];
u1(-pi/2) q[0];
u1(2) q[19];
u1(2) q[9];
u1(-pi/2) q[7];
u1(-pi/2) q[13];
u1(5.1415927) q[16];
u1(5.1415927) q[18];
u1(-pi/2) q[15];
u1(-pi/2) q[14];
cx q[1], q[17];
u2(0,pi) q[0];
cx q[8], q[19];
cx q[4], q[9];
u1(7.8539816) q[7];
u1(7.8539816) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(7.8539816) q[15];
u2(0,pi) q[14];
u1(pi/2) q[1];
cx q[5], q[17];
u1(-pi/2) q[0];
u1(pi/2) q[8];
cx q[9], q[10];
cx q[4], q[2];
u2(0,pi) q[16];
u2(0,pi) q[18];
u1(-pi/2) q[14];
u1(-pi/2) q[1];
u1(2) q[17];
u1(5.1415927) q[0];
u1(-pi/2) q[8];
u1(2) q[10];
u1(2) q[2];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(7.8539816) q[14];
u2(0,pi) q[1];
cx q[5], q[17];
u1(-pi/2) q[0];
u2(0,pi) q[8];
cx q[9], q[10];
cx q[4], q[2];
u1(7.8539816) q[16];
u1(7.8539816) q[18];
u1(-pi/2) q[1];
u1(pi/2) q[5];
cx q[19], q[17];
u2(0,pi) q[0];
u1(-pi/2) q[8];
cx q[10], q[12];
cx q[9], q[7];
cx q[4], q[16];
u1(5.1415927) q[1];
u1(-pi/2) q[5];
u1(2) q[17];
u1(-pi/2) q[0];
u1(5.1415927) q[8];
u1(2) q[12];
u1(2) q[7];
u1(2) q[16];
u1(-pi/2) q[1];
u2(0,pi) q[5];
cx q[19], q[17];
u1(7.8539816) q[0];
u1(-pi/2) q[8];
cx q[10], q[12];
cx q[9], q[7];
cx q[4], q[16];
u2(0,pi) q[1];
u1(-pi/2) q[5];
u1(pi/2) q[17];
u1(pi/2) q[19];
u2(0,pi) q[8];
cx q[12], q[15];
cx q[10], q[2];
u1(pi/2) q[9];
cx q[3], q[7];
u1(pi/2) q[4];
u1(-pi/2) q[1];
u1(5.1415927) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(-pi/2) q[8];
u1(2) q[15];
u1(2) q[2];
u1(-pi/2) q[9];
u1(2) q[7];
u1(-pi/2) q[4];
u1(7.8539816) q[1];
u1(-pi/2) q[5];
u2(0,pi) q[17];
u2(0,pi) q[19];
u1(7.8539816) q[8];
cx q[12], q[15];
cx q[10], q[2];
u2(0,pi) q[9];
cx q[3], q[7];
u2(0,pi) q[4];
u2(0,pi) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
cx q[0], q[8];
cx q[12], q[18];
u1(pi/2) q[10];
u1(-pi/2) q[9];
cx q[3], q[6];
cx q[7], q[16];
u1(-pi/2) q[4];
u1(-pi/2) q[5];
u1(5.1415927) q[17];
u1(5.1415927) q[19];
u1(2) q[8];
u1(2) q[18];
u1(-pi/2) q[10];
u1(5.1415927) q[9];
u1(2) q[6];
u1(2) q[16];
u1(5.1415927) q[4];
u1(7.8539816) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
cx q[0], q[8];
cx q[12], q[18];
u2(0,pi) q[10];
u1(-pi/2) q[9];
cx q[3], q[6];
cx q[7], q[16];
u1(-pi/2) q[4];
u2(0,pi) q[17];
u2(0,pi) q[19];
cx q[0], q[11];
cx q[8], q[13];
u1(pi/2) q[12];
u1(-pi/2) q[10];
u2(0,pi) q[9];
cx q[3], q[14];
u1(pi/2) q[7];
u2(0,pi) q[4];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(2) q[11];
u1(2) q[13];
u1(-pi/2) q[12];
u1(5.1415927) q[10];
u1(-pi/2) q[9];
u1(2) q[14];
u1(-pi/2) q[7];
u1(-pi/2) q[4];
u1(7.8539816) q[17];
u1(7.8539816) q[19];
cx q[0], q[11];
cx q[8], q[13];
u2(0,pi) q[12];
u1(-pi/2) q[10];
u1(7.8539816) q[9];
cx q[3], q[14];
u2(0,pi) q[7];
u1(7.8539816) q[4];
cx q[0], q[19];
cx q[11], q[6];
u1(-pi/2) q[12];
u2(0,pi) q[10];
u1(pi/2) q[3];
cx q[13], q[14];
u1(-pi/2) q[7];
cx q[4], q[9];
u1(2) q[19];
u1(2) q[6];
u1(5.1415927) q[12];
u1(-pi/2) q[10];
u1(-pi/2) q[3];
u1(2) q[14];
u1(5.1415927) q[7];
u1(2) q[9];
cx q[0], q[19];
cx q[11], q[6];
u1(-pi/2) q[12];
u1(7.8539816) q[10];
u2(0,pi) q[3];
cx q[13], q[14];
u1(-pi/2) q[7];
cx q[4], q[9];
u1(pi/2) q[0];
cx q[8], q[19];
cx q[11], q[15];
cx q[6], q[2];
u2(0,pi) q[12];
u1(-pi/2) q[3];
cx q[13], q[18];
cx q[14], q[5];
u2(0,pi) q[7];
cx q[9], q[10];
u1(-pi/2) q[0];
u1(2) q[19];
u1(2) q[15];
u1(2) q[2];
u1(-pi/2) q[12];
u1(5.1415927) q[3];
u1(2) q[18];
u1(2) q[5];
u1(-pi/2) q[7];
u1(2) q[10];
u2(0,pi) q[0];
cx q[8], q[19];
cx q[11], q[15];
cx q[6], q[2];
u1(7.8539816) q[12];
u1(-pi/2) q[3];
cx q[13], q[18];
cx q[14], q[5];
u1(7.8539816) q[7];
cx q[9], q[10];
u1(-pi/2) q[0];
u1(pi/2) q[8];
u1(pi/2) q[11];
cx q[1], q[15];
u1(pi/2) q[2];
u1(pi/2) q[6];
u2(0,pi) q[3];
u1(pi/2) q[13];
cx q[16], q[18];
u1(pi/2) q[14];
cx q[10], q[12];
cx q[9], q[7];
u1(5.1415927) q[0];
u1(-pi/2) q[8];
u1(-pi/2) q[11];
u1(2) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(-pi/2) q[3];
u1(-pi/2) q[13];
u1(2) q[18];
u1(-pi/2) q[14];
u1(2) q[12];
u1(2) q[7];
u1(-pi/2) q[0];
u2(0,pi) q[8];
u2(0,pi) q[11];
cx q[1], q[15];
u2(0,pi) q[2];
u2(0,pi) q[6];
u1(7.8539816) q[3];
u2(0,pi) q[13];
cx q[16], q[18];
u2(0,pi) q[14];
cx q[10], q[12];
cx q[9], q[7];
u2(0,pi) q[0];
u1(-pi/2) q[8];
u1(-pi/2) q[11];
u1(pi/2) q[15];
cx q[1], q[5];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(-pi/2) q[13];
u1(pi/2) q[16];
u1(pi/2) q[18];
u1(-pi/2) q[14];
u1(pi/2) q[9];
cx q[3], q[7];
u1(-pi/2) q[0];
u1(5.1415927) q[8];
u1(5.1415927) q[11];
u1(-pi/2) q[15];
u1(2) q[5];
u1(5.1415927) q[2];
u1(5.1415927) q[6];
u1(5.1415927) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(5.1415927) q[14];
u1(-pi/2) q[9];
u1(2) q[7];
u1(7.8539816) q[0];
u1(-pi/2) q[8];
u1(-pi/2) q[11];
u2(0,pi) q[15];
cx q[1], q[5];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(-pi/2) q[13];
u2(0,pi) q[16];
u2(0,pi) q[18];
u1(-pi/2) q[14];
u2(0,pi) q[9];
cx q[3], q[7];
u2(0,pi) q[8];
u2(0,pi) q[11];
u1(-pi/2) q[15];
cx q[1], q[17];
u2(0,pi) q[2];
u2(0,pi) q[6];
u2(0,pi) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u2(0,pi) q[14];
u1(-pi/2) q[9];
u1(-pi/2) q[8];
u1(-pi/2) q[11];
u1(5.1415927) q[15];
u1(2) q[17];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(-pi/2) q[13];
u1(5.1415927) q[16];
u1(5.1415927) q[18];
u1(-pi/2) q[14];
u1(5.1415927) q[9];
u1(7.8539816) q[8];
u1(7.8539816) q[11];
u1(-pi/2) q[15];
cx q[1], q[17];
u1(7.8539816) q[2];
u1(7.8539816) q[6];
u1(7.8539816) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(7.8539816) q[14];
u1(-pi/2) q[9];
cx q[0], q[8];
u2(0,pi) q[15];
u1(pi/2) q[1];
cx q[5], q[17];
cx q[4], q[2];
cx q[3], q[6];
u2(0,pi) q[16];
u2(0,pi) q[18];
u2(0,pi) q[9];
u1(2) q[8];
u1(-pi/2) q[15];
u1(-pi/2) q[1];
u1(2) q[17];
u1(2) q[2];
u1(2) q[6];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(-pi/2) q[9];
cx q[0], q[8];
u1(7.8539816) q[15];
u2(0,pi) q[1];
cx q[5], q[17];
cx q[4], q[2];
cx q[3], q[6];
u1(7.8539816) q[16];
u1(7.8539816) q[18];
u1(7.8539816) q[9];
cx q[0], q[11];
cx q[8], q[13];
cx q[12], q[15];
u1(-pi/2) q[1];
u1(pi/2) q[5];
cx q[19], q[17];
cx q[10], q[2];
cx q[3], q[14];
cx q[4], q[16];
u1(2) q[11];
u1(2) q[13];
u1(2) q[15];
u1(5.1415927) q[1];
u1(-pi/2) q[5];
u1(2) q[17];
u1(2) q[2];
u1(2) q[14];
u1(2) q[16];
cx q[0], q[11];
cx q[8], q[13];
cx q[12], q[15];
u1(-pi/2) q[1];
u2(0,pi) q[5];
cx q[19], q[17];
cx q[10], q[2];
cx q[3], q[14];
cx q[4], q[16];
cx q[11], q[6];
cx q[12], q[18];
u2(0,pi) q[1];
u1(-pi/2) q[5];
u1(pi/2) q[17];
u1(pi/2) q[19];
u1(pi/2) q[10];
u1(pi/2) q[3];
cx q[13], q[14];
u1(pi/2) q[4];
cx q[7], q[16];
u1(2) q[6];
u1(2) q[18];
u1(-pi/2) q[1];
u1(5.1415927) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(-pi/2) q[10];
u1(-pi/2) q[3];
u1(2) q[14];
u1(-pi/2) q[4];
u1(2) q[16];
cx q[11], q[6];
cx q[12], q[18];
u1(7.8539816) q[1];
u1(-pi/2) q[5];
u2(0,pi) q[17];
u2(0,pi) q[19];
u2(0,pi) q[10];
u2(0,pi) q[3];
cx q[13], q[14];
u2(0,pi) q[4];
cx q[7], q[16];
cx q[11], q[15];
cx q[6], q[2];
u1(pi/2) q[12];
u2(0,pi) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(-pi/2) q[10];
u1(-pi/2) q[3];
cx q[13], q[18];
u1(-pi/2) q[4];
u1(pi/2) q[7];
u1(2) q[15];
u1(2) q[2];
u1(-pi/2) q[12];
u1(-pi/2) q[5];
u1(5.1415927) q[17];
u1(5.1415927) q[19];
u1(5.1415927) q[10];
u1(5.1415927) q[3];
u1(2) q[18];
u1(5.1415927) q[4];
u1(-pi/2) q[7];
cx q[11], q[15];
cx q[6], q[2];
u2(0,pi) q[12];
u1(7.8539816) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(-pi/2) q[10];
u1(-pi/2) q[3];
cx q[13], q[18];
u1(-pi/2) q[4];
u2(0,pi) q[7];
u1(pi/2) q[11];
cx q[1], q[15];
u1(pi/2) q[2];
u1(pi/2) q[6];
u1(-pi/2) q[12];
cx q[14], q[5];
u2(0,pi) q[17];
u2(0,pi) q[19];
u2(0,pi) q[10];
u2(0,pi) q[3];
u1(pi/2) q[13];
cx q[16], q[18];
u2(0,pi) q[4];
u1(-pi/2) q[7];
u1(-pi/2) q[11];
u1(2) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(5.1415927) q[12];
u1(2) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(-pi/2) q[10];
u1(-pi/2) q[3];
u1(-pi/2) q[13];
u1(2) q[18];
u1(-pi/2) q[4];
u1(5.1415927) q[7];
u2(0,pi) q[11];
cx q[1], q[15];
u2(0,pi) q[2];
u2(0,pi) q[6];
u1(-pi/2) q[12];
cx q[14], q[5];
u1(7.8539816) q[17];
u1(7.8539816) q[19];
u1(7.8539816) q[10];
u1(7.8539816) q[3];
u2(0,pi) q[13];
cx q[16], q[18];
u1(7.8539816) q[4];
u1(-pi/2) q[7];
u1(-pi/2) q[11];
u1(pi/2) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u2(0,pi) q[12];
u1(pi/2) q[14];
cx q[1], q[5];
cx q[0], q[19];
u1(-pi/2) q[13];
u1(pi/2) q[16];
u1(pi/2) q[18];
u2(0,pi) q[7];
u1(5.1415927) q[11];
u1(-pi/2) q[15];
u1(5.1415927) q[2];
u1(5.1415927) q[6];
u1(-pi/2) q[12];
u1(-pi/2) q[14];
u1(2) q[5];
u1(2) q[19];
u1(5.1415927) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(-pi/2) q[7];
u1(-pi/2) q[11];
u2(0,pi) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(7.8539816) q[12];
u2(0,pi) q[14];
cx q[1], q[5];
cx q[0], q[19];
u1(-pi/2) q[13];
u2(0,pi) q[16];
u2(0,pi) q[18];
u1(7.8539816) q[7];
u2(0,pi) q[11];
u1(-pi/2) q[15];
u2(0,pi) q[2];
u2(0,pi) q[6];
u1(-pi/2) q[14];
cx q[1], q[17];
u1(pi/2) q[0];
cx q[8], q[19];
u2(0,pi) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(-pi/2) q[11];
u1(5.1415927) q[15];
u1(-pi/2) q[2];
u1(-pi/2) q[6];
u1(5.1415927) q[14];
u1(2) q[17];
u1(-pi/2) q[0];
u1(2) q[19];
u1(-pi/2) q[13];
u1(5.1415927) q[16];
u1(5.1415927) q[18];
u1(7.8539816) q[11];
u1(-pi/2) q[15];
u1(7.8539816) q[2];
u1(7.8539816) q[6];
u1(-pi/2) q[14];
cx q[1], q[17];
u2(0,pi) q[0];
cx q[8], q[19];
u1(7.8539816) q[13];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u2(0,pi) q[15];
u2(0,pi) q[14];
u1(pi/2) q[1];
cx q[5], q[17];
u1(-pi/2) q[0];
u1(pi/2) q[8];
u2(0,pi) q[16];
u2(0,pi) q[18];
u1(-pi/2) q[15];
u1(-pi/2) q[14];
u1(-pi/2) q[1];
u1(2) q[17];
u1(5.1415927) q[0];
u1(-pi/2) q[8];
u1(-pi/2) q[16];
u1(-pi/2) q[18];
u1(7.8539816) q[15];
u1(7.8539816) q[14];
u2(0,pi) q[1];
cx q[5], q[17];
u1(-pi/2) q[0];
u2(0,pi) q[8];
u1(7.8539816) q[16];
u1(7.8539816) q[18];
u1(-pi/2) q[1];
u1(pi/2) q[5];
cx q[19], q[17];
u2(0,pi) q[0];
u1(-pi/2) q[8];
u1(5.1415927) q[1];
u1(-pi/2) q[5];
u1(2) q[17];
u1(-pi/2) q[0];
u1(5.1415927) q[8];
u1(-pi/2) q[1];
u2(0,pi) q[5];
cx q[19], q[17];
u1(7.8539816) q[0];
u1(-pi/2) q[8];
u2(0,pi) q[1];
u1(-pi/2) q[5];
u1(pi/2) q[17];
u1(pi/2) q[19];
u2(0,pi) q[8];
u1(-pi/2) q[1];
u1(5.1415927) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(-pi/2) q[8];
u1(7.8539816) q[1];
u1(-pi/2) q[5];
u2(0,pi) q[17];
u2(0,pi) q[19];
u1(7.8539816) q[8];
u2(0,pi) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(-pi/2) q[5];
u1(5.1415927) q[17];
u1(5.1415927) q[19];
u1(7.8539816) q[5];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u2(0,pi) q[17];
u2(0,pi) q[19];
u1(-pi/2) q[17];
u1(-pi/2) q[19];
u1(7.8539816) q[17];
u1(7.8539816) q[19];
