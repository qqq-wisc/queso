OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[30];
x q[1];
cz q[3], q[4];
cz q[2], q[5];
x q[7];
cz q[9], q[10];
cz q[8], q[11];
x q[15];
cz q[17], q[18];
cz q[16], q[19];
x q[21];
cz q[23], q[24];
cz q[22], q[25];
x q[4];
x q[5];
x q[10];
x q[11];
x q[18];
x q[19];
x q[24];
x q[25];
rz(pi/2) q[4];
rz(pi/2) q[5];
rz(pi/2) q[10];
rz(pi/2) q[11];
rz(pi/2) q[18];
rz(pi/2) q[19];
rz(pi/2) q[24];
rz(pi/2) q[25];
rx(pi/2) q[4];
rx(pi/2) q[5];
rx(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[18];
rx(pi/2) q[19];
rx(pi/2) q[24];
rx(pi/2) q[25];
rz(-pi/2) q[4];
rz(-pi/2) q[5];
rz(-pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[18];
rz(-pi/2) q[19];
rz(-pi/2) q[24];
rz(-pi/2) q[25];
rz(-pi/4) q[4];
rz(-pi/4) q[5];
rz(-pi/4) q[10];
rz(-pi/4) q[11];
rz(-pi/4) q[18];
rz(-pi/4) q[19];
rz(-pi/4) q[24];
rz(-pi/4) q[25];
x q[4];
x q[5];
x q[10];
x q[11];
x q[18];
x q[19];
x q[24];
x q[25];
rz(pi/2) q[4];
rz(pi/2) q[5];
rz(pi/2) q[10];
rz(pi/2) q[11];
rz(pi/2) q[18];
rz(pi/2) q[19];
rz(pi/2) q[24];
rz(pi/2) q[25];
rx(pi/2) q[4];
rx(pi/2) q[5];
rx(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[18];
rx(pi/2) q[19];
rx(pi/2) q[24];
rx(pi/2) q[25];
rz(-pi/2) q[4];
rz(-pi/2) q[5];
rz(-pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[18];
rz(-pi/2) q[19];
rz(-pi/2) q[24];
rz(-pi/2) q[25];
cz q[0], q[4];
cz q[1], q[5];
cz q[6], q[10];
cz q[7], q[11];
cz q[14], q[18];
cz q[15], q[19];
cz q[20], q[24];
cz q[21], q[25];
x q[4];
x q[5];
x q[10];
x q[11];
x q[18];
x q[19];
x q[24];
x q[25];
rz(pi/2) q[4];
rz(pi/2) q[5];
rz(pi/2) q[10];
rz(pi/2) q[11];
rz(pi/2) q[18];
rz(pi/2) q[19];
rz(pi/2) q[24];
rz(pi/2) q[25];
rx(pi/2) q[4];
rx(pi/2) q[5];
rx(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[18];
rx(pi/2) q[19];
rx(pi/2) q[24];
rx(pi/2) q[25];
rz(-pi/2) q[4];
rz(-pi/2) q[5];
rz(-pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[18];
rz(-pi/2) q[19];
rz(-pi/2) q[24];
rz(-pi/2) q[25];
rz(pi/4) q[4];
rz(pi/4) q[5];
rz(pi/4) q[10];
rz(pi/4) q[11];
rz(pi/4) q[18];
rz(pi/4) q[19];
rz(pi/4) q[24];
rz(pi/4) q[25];
x q[4];
x q[5];
x q[10];
x q[11];
x q[18];
x q[19];
x q[24];
x q[25];
rz(pi/2) q[4];
rz(pi/2) q[5];
rz(pi/2) q[10];
rz(pi/2) q[11];
rz(pi/2) q[18];
rz(pi/2) q[19];
rz(pi/2) q[24];
rz(pi/2) q[25];
rx(pi/2) q[4];
rx(pi/2) q[5];
rx(pi/2) q[10];
rx(pi/2) q[11];
rx(pi/2) q[18];
rx(pi/2) q[19];
rx(pi/2) q[24];
rx(pi/2) q[25];
rz(-pi/2) q[4];
rz(-pi/2) q[5];
rz(-pi/2) q[10];
rz(-pi/2) q[11];
rz(-pi/2) q[18];
rz(-pi/2) q[19];
rz(-pi/2) q[24];
rz(-pi/2) q[25];
cz q[3], q[4];
cz q[2], q[5];
cz q[9], q[10];
cz q[8], q[11];
cz q[17], q[18];
cz q[16], q[19];
cz q[23], q[24];
cz q[22], q[25];
cz q[0], q[4];
x q[3];
cz q[1], q[5];
x q[2];
cz q[6], q[10];
x q[9];
cz q[7], q[11];
x q[8];
cz q[14], q[18];
x q[17];
cz q[15], q[19];
x q[16];
cz q[20], q[24];
x q[23];
cz q[21], q[25];
x q[22];
rz(pi/2) q[3];
rz(pi/2) q[2];
rz(pi/2) q[9];
rz(pi/2) q[8];
rz(pi/2) q[17];
rz(pi/2) q[16];
rz(pi/2) q[23];
rz(pi/2) q[22];
rx(pi/2) q[3];
rx(pi/2) q[2];
rx(pi/2) q[9];
rx(pi/2) q[8];
rx(pi/2) q[17];
rx(pi/2) q[16];
rx(pi/2) q[23];
rx(pi/2) q[22];
rz(-pi/2) q[3];
rz(-pi/2) q[2];
rz(-pi/2) q[9];
rz(-pi/2) q[8];
rz(-pi/2) q[17];
rz(-pi/2) q[16];
rz(-pi/2) q[23];
rz(-pi/2) q[22];
cz q[0], q[3];
cz q[1], q[2];
cz q[6], q[9];
cz q[7], q[8];
cz q[14], q[17];
cz q[15], q[16];
cz q[20], q[23];
cz q[21], q[22];
x q[3];
x q[2];
x q[9];
x q[8];
x q[17];
x q[16];
x q[23];
x q[22];
rz(pi/2) q[3];
rz(pi/2) q[2];
rz(pi/2) q[9];
rz(pi/2) q[8];
rz(pi/2) q[17];
rz(pi/2) q[16];
rz(pi/2) q[23];
rz(pi/2) q[22];
rx(pi/2) q[3];
rx(pi/2) q[2];
rx(pi/2) q[9];
rx(pi/2) q[8];
rx(pi/2) q[17];
rx(pi/2) q[16];
rx(pi/2) q[23];
rx(pi/2) q[22];
rz(-pi/2) q[3];
rz(-pi/2) q[2];
rz(-pi/2) q[9];
rz(-pi/2) q[8];
rz(-pi/2) q[17];
rz(-pi/2) q[16];
rz(-pi/2) q[23];
rz(-pi/2) q[22];
rz(-pi/4) q[3];
rz(-pi/4) q[2];
rz(-pi/4) q[9];
rz(-pi/4) q[8];
rz(-pi/4) q[17];
rz(-pi/4) q[16];
rz(-pi/4) q[23];
rz(-pi/4) q[22];
x q[3];
x q[2];
x q[9];
x q[8];
x q[17];
x q[16];
x q[23];
x q[22];
rz(pi/2) q[3];
rz(pi/2) q[2];
rz(pi/2) q[9];
rz(pi/2) q[8];
rz(pi/2) q[17];
rz(pi/2) q[16];
rz(pi/2) q[23];
rz(pi/2) q[22];
rx(pi/2) q[3];
rx(pi/2) q[2];
rx(pi/2) q[9];
rx(pi/2) q[8];
rx(pi/2) q[17];
rx(pi/2) q[16];
rx(pi/2) q[23];
rx(pi/2) q[22];
rz(-pi/2) q[3];
rz(-pi/2) q[2];
rz(-pi/2) q[9];
rz(-pi/2) q[8];
rz(-pi/2) q[17];
rz(-pi/2) q[16];
rz(-pi/2) q[23];
rz(-pi/2) q[22];
cz q[0], q[3];
cz q[1], q[2];
cz q[6], q[9];
cz q[7], q[8];
cz q[14], q[17];
cz q[15], q[16];
cz q[20], q[23];
cz q[21], q[22];
x q[0];
x q[3];
x q[1];
x q[2];
x q[6];
x q[9];
x q[7];
x q[8];
x q[14];
x q[17];
x q[15];
x q[16];
x q[20];
x q[23];
x q[21];
x q[22];
rz(pi/2) q[3];
rz(pi/2) q[2];
rz(pi/2) q[9];
rz(pi/2) q[8];
rz(pi/2) q[17];
rz(pi/2) q[16];
rz(pi/2) q[23];
rz(pi/2) q[22];
rx(pi/2) q[3];
rx(pi/2) q[2];
rx(pi/2) q[9];
rx(pi/2) q[8];
rx(pi/2) q[17];
rx(pi/2) q[16];
rx(pi/2) q[23];
rx(pi/2) q[22];
rz(-pi/2) q[3];
rz(-pi/2) q[2];
rz(-pi/2) q[9];
rz(-pi/2) q[8];
rz(-pi/2) q[17];
rz(-pi/2) q[16];
rz(-pi/2) q[23];
rz(-pi/2) q[22];
cz q[3], q[5];
cz q[2], q[4];
cz q[9], q[11];
cz q[8], q[10];
cz q[17], q[19];
cz q[16], q[18];
cz q[23], q[25];
cz q[22], q[24];
x q[5];
x q[4];
x q[11];
x q[10];
x q[19];
x q[18];
x q[25];
x q[24];
rz(pi/2) q[5];
rz(pi/2) q[4];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[19];
rz(pi/2) q[18];
rz(pi/2) q[25];
rz(pi/2) q[24];
rx(pi/2) q[5];
rx(pi/2) q[4];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[19];
rx(pi/2) q[18];
rx(pi/2) q[25];
rx(pi/2) q[24];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[19];
rz(-pi/2) q[18];
rz(-pi/2) q[25];
rz(-pi/2) q[24];
rz(pi/4) q[5];
rz(pi/4) q[4];
rz(pi/4) q[11];
rz(pi/4) q[10];
rz(pi/4) q[19];
rz(pi/4) q[18];
rz(pi/4) q[25];
rz(pi/4) q[24];
x q[5];
x q[4];
x q[11];
x q[10];
x q[19];
x q[18];
x q[25];
x q[24];
rz(pi/2) q[5];
rz(pi/2) q[4];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[19];
rz(pi/2) q[18];
rz(pi/2) q[25];
rz(pi/2) q[24];
rx(pi/2) q[5];
rx(pi/2) q[4];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[19];
rx(pi/2) q[18];
rx(pi/2) q[25];
rx(pi/2) q[24];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[19];
rz(-pi/2) q[18];
rz(-pi/2) q[25];
rz(-pi/2) q[24];
cz q[1], q[5];
cz q[0], q[4];
cz q[7], q[11];
cz q[6], q[10];
cz q[15], q[19];
cz q[14], q[18];
cz q[21], q[25];
cz q[20], q[24];
x q[5];
x q[4];
x q[11];
x q[10];
x q[19];
x q[18];
x q[25];
x q[24];
rz(pi/2) q[5];
rz(pi/2) q[4];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[19];
rz(pi/2) q[18];
rz(pi/2) q[25];
rz(pi/2) q[24];
rx(pi/2) q[5];
rx(pi/2) q[4];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[19];
rx(pi/2) q[18];
rx(pi/2) q[25];
rx(pi/2) q[24];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[19];
rz(-pi/2) q[18];
rz(-pi/2) q[25];
rz(-pi/2) q[24];
rz(-pi/4) q[5];
rz(-pi/4) q[4];
rz(-pi/4) q[11];
rz(-pi/4) q[10];
rz(-pi/4) q[19];
rz(-pi/4) q[18];
rz(-pi/4) q[25];
rz(-pi/4) q[24];
x q[5];
x q[4];
x q[11];
x q[10];
x q[19];
x q[18];
x q[25];
x q[24];
rz(pi/2) q[5];
rz(pi/2) q[4];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[19];
rz(pi/2) q[18];
rz(pi/2) q[25];
rz(pi/2) q[24];
rx(pi/2) q[5];
rx(pi/2) q[4];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[19];
rx(pi/2) q[18];
rx(pi/2) q[25];
rx(pi/2) q[24];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[19];
rz(-pi/2) q[18];
rz(-pi/2) q[25];
rz(-pi/2) q[24];
cz q[3], q[5];
cz q[2], q[4];
cz q[9], q[11];
cz q[8], q[10];
cz q[17], q[19];
cz q[16], q[18];
cz q[23], q[25];
cz q[22], q[24];
cz q[1], q[5];
x q[3];
cz q[0], q[4];
x q[2];
cz q[7], q[11];
x q[9];
cz q[6], q[10];
x q[8];
cz q[15], q[19];
x q[17];
cz q[14], q[18];
x q[16];
cz q[21], q[25];
x q[23];
cz q[20], q[24];
x q[22];
rz(pi/2) q[3];
x q[4];
rz(pi/2) q[2];
cz q[11], q[13];
rz(pi/2) q[9];
cz q[10], q[12];
rz(pi/2) q[8];
rz(pi/2) q[17];
x q[18];
rz(pi/2) q[16];
cz q[25], q[27];
rz(pi/2) q[23];
cz q[24], q[26];
rz(pi/2) q[22];
rx(pi/2) q[3];
rx(pi/2) q[2];
x q[13];
rx(pi/2) q[9];
x q[12];
rx(pi/2) q[8];
rx(pi/2) q[17];
rx(pi/2) q[16];
x q[27];
rx(pi/2) q[23];
x q[26];
rx(pi/2) q[22];
rz(-pi/2) q[3];
rz(-pi/2) q[2];
rz(pi/2) q[13];
rz(-pi/2) q[9];
rz(pi/2) q[12];
rz(-pi/2) q[8];
rz(-pi/2) q[17];
rz(-pi/2) q[16];
rz(pi/2) q[27];
rz(-pi/2) q[23];
rz(pi/2) q[26];
rz(-pi/2) q[22];
cz q[1], q[3];
cz q[0], q[2];
rx(pi/2) q[13];
cz q[7], q[9];
rx(pi/2) q[12];
cz q[6], q[8];
cz q[15], q[17];
cz q[14], q[16];
rx(pi/2) q[27];
cz q[21], q[23];
rx(pi/2) q[26];
cz q[20], q[22];
x q[3];
x q[2];
rz(-pi/2) q[13];
x q[9];
rz(-pi/2) q[12];
x q[8];
x q[17];
x q[16];
rz(-pi/2) q[27];
x q[23];
rz(-pi/2) q[26];
x q[22];
rz(pi/2) q[3];
rz(pi/2) q[2];
rz(-pi/4) q[13];
rz(pi/2) q[9];
rz(-pi/4) q[12];
rz(pi/2) q[8];
rz(pi/2) q[17];
rz(pi/2) q[16];
rz(-pi/4) q[27];
rz(pi/2) q[23];
rz(-pi/4) q[26];
rz(pi/2) q[22];
rx(pi/2) q[3];
rx(pi/2) q[2];
x q[13];
rx(pi/2) q[9];
x q[12];
rx(pi/2) q[8];
rx(pi/2) q[17];
rx(pi/2) q[16];
x q[27];
rx(pi/2) q[23];
x q[26];
rx(pi/2) q[22];
rz(-pi/2) q[3];
rz(-pi/2) q[2];
rz(pi/2) q[13];
rz(-pi/2) q[9];
rz(pi/2) q[12];
rz(-pi/2) q[8];
rz(-pi/2) q[17];
rz(-pi/2) q[16];
rz(pi/2) q[27];
rz(-pi/2) q[23];
rz(pi/2) q[26];
rz(-pi/2) q[22];
rz(pi/4) q[3];
rz(pi/4) q[2];
rx(pi/2) q[13];
rz(pi/4) q[9];
rx(pi/2) q[12];
rz(pi/4) q[8];
rz(pi/4) q[17];
rz(pi/4) q[16];
rx(pi/2) q[27];
rz(pi/4) q[23];
rx(pi/2) q[26];
rz(pi/4) q[22];
x q[3];
x q[2];
rz(-pi/2) q[13];
x q[9];
rz(-pi/2) q[12];
x q[8];
x q[17];
x q[16];
rz(-pi/2) q[27];
x q[23];
rz(-pi/2) q[26];
x q[22];
rz(pi/2) q[3];
rz(pi/2) q[2];
cz q[5], q[13];
rz(pi/2) q[9];
cz q[4], q[12];
rz(pi/2) q[8];
rz(pi/2) q[17];
rz(pi/2) q[16];
cz q[19], q[27];
rz(pi/2) q[23];
cz q[18], q[26];
rz(pi/2) q[22];
rx(pi/2) q[3];
rx(pi/2) q[2];
x q[13];
rx(pi/2) q[9];
x q[12];
rx(pi/2) q[8];
rx(pi/2) q[17];
rx(pi/2) q[16];
x q[27];
rx(pi/2) q[23];
x q[26];
rx(pi/2) q[22];
rz(-pi/2) q[3];
rz(-pi/2) q[2];
rz(pi/2) q[13];
rz(-pi/2) q[9];
rz(pi/2) q[12];
rz(-pi/2) q[8];
rz(-pi/2) q[17];
rz(-pi/2) q[16];
rz(pi/2) q[27];
rz(-pi/2) q[23];
rz(pi/2) q[26];
rz(-pi/2) q[22];
cz q[1], q[3];
cz q[0], q[2];
rx(pi/2) q[13];
cz q[7], q[9];
rx(pi/2) q[12];
cz q[6], q[8];
cz q[15], q[17];
cz q[14], q[16];
rx(pi/2) q[27];
cz q[21], q[23];
rx(pi/2) q[26];
cz q[20], q[22];
x q[3];
x q[0];
x q[2];
rz(-pi/2) q[13];
x q[9];
rz(-pi/2) q[12];
x q[6];
x q[8];
x q[17];
x q[14];
x q[16];
rz(-pi/2) q[27];
x q[23];
rz(-pi/2) q[26];
x q[20];
x q[22];
rz(pi/2) q[3];
rz(pi/2) q[2];
rz(pi/4) q[13];
rz(pi/2) q[9];
rz(pi/4) q[12];
rz(pi/2) q[8];
rz(pi/2) q[17];
rz(pi/2) q[16];
rz(pi/4) q[27];
rz(pi/2) q[23];
rz(pi/4) q[26];
rz(pi/2) q[22];
rx(pi/2) q[3];
rx(pi/2) q[2];
x q[13];
rx(pi/2) q[9];
x q[12];
rx(pi/2) q[8];
rx(pi/2) q[17];
rx(pi/2) q[16];
x q[27];
rx(pi/2) q[23];
x q[26];
rx(pi/2) q[22];
rz(-pi/2) q[3];
rz(-pi/2) q[2];
rz(pi/2) q[13];
rz(-pi/2) q[9];
rz(pi/2) q[12];
rz(-pi/2) q[8];
rz(-pi/2) q[17];
rz(-pi/2) q[16];
rz(pi/2) q[27];
rz(-pi/2) q[23];
rz(pi/2) q[26];
rz(-pi/2) q[22];
rx(pi/2) q[13];
rx(pi/2) q[12];
rx(pi/2) q[27];
rx(pi/2) q[26];
rz(-pi/2) q[13];
rz(-pi/2) q[12];
rz(-pi/2) q[27];
rz(-pi/2) q[26];
cz q[11], q[13];
cz q[10], q[12];
cz q[25], q[27];
cz q[24], q[26];
cz q[5], q[13];
x q[11];
cz q[4], q[12];
x q[10];
cz q[19], q[27];
x q[25];
cz q[18], q[26];
x q[24];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[25];
rz(pi/2) q[24];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[25];
rx(pi/2) q[24];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[25];
rz(-pi/2) q[24];
cz q[5], q[11];
cz q[4], q[10];
cz q[19], q[25];
cz q[18], q[24];
x q[11];
x q[10];
x q[25];
x q[24];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[25];
rz(pi/2) q[24];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[25];
rx(pi/2) q[24];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[25];
rz(-pi/2) q[24];
rz(-pi/4) q[11];
rz(-pi/4) q[10];
rz(-pi/4) q[25];
rz(-pi/4) q[24];
x q[11];
x q[10];
x q[25];
x q[24];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[25];
rz(pi/2) q[24];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[25];
rx(pi/2) q[24];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[25];
rz(-pi/2) q[24];
cz q[5], q[11];
cz q[4], q[10];
cz q[19], q[25];
cz q[18], q[24];
x q[5];
x q[11];
x q[4];
x q[10];
x q[19];
x q[25];
x q[18];
x q[24];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/2) q[25];
rz(pi/2) q[24];
rx(pi/2) q[11];
rx(pi/2) q[10];
rx(pi/2) q[25];
rx(pi/2) q[24];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(-pi/2) q[25];
rz(-pi/2) q[24];
cz q[11], q[12];
cz q[10], q[13];
cz q[25], q[26];
cz q[24], q[27];
x q[12];
x q[13];
x q[26];
x q[27];
rz(pi/2) q[12];
rz(pi/2) q[13];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[12];
rx(pi/2) q[13];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[12];
rz(-pi/2) q[13];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
rz(pi/4) q[12];
rz(pi/4) q[13];
rz(pi/4) q[26];
rz(pi/4) q[27];
x q[12];
x q[13];
x q[26];
x q[27];
rz(pi/2) q[12];
rz(pi/2) q[13];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[12];
rx(pi/2) q[13];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[12];
rz(-pi/2) q[13];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
cz q[4], q[12];
cz q[5], q[13];
cz q[18], q[26];
cz q[19], q[27];
x q[12];
x q[13];
x q[26];
x q[27];
rz(pi/2) q[12];
rz(pi/2) q[13];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[12];
rx(pi/2) q[13];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[12];
rz(-pi/2) q[13];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
rz(-pi/4) q[12];
rz(-pi/4) q[13];
rz(-pi/4) q[26];
rz(-pi/4) q[27];
x q[12];
x q[13];
x q[26];
x q[27];
rz(pi/2) q[12];
rz(pi/2) q[13];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[12];
rx(pi/2) q[13];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[12];
rz(-pi/2) q[13];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
cz q[11], q[12];
cz q[10], q[13];
cz q[25], q[26];
cz q[24], q[27];
cz q[4], q[12];
x q[11];
cz q[5], q[13];
x q[10];
cz q[18], q[26];
x q[25];
cz q[19], q[27];
x q[24];
x q[12];
rz(pi/2) q[11];
rz(pi/2) q[10];
cz q[26], q[28];
rz(pi/2) q[25];
cz q[27], q[29];
rz(pi/2) q[24];
rx(pi/2) q[11];
rx(pi/2) q[10];
x q[28];
rx(pi/2) q[25];
x q[29];
rx(pi/2) q[24];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(pi/2) q[28];
rz(-pi/2) q[25];
rz(pi/2) q[29];
rz(-pi/2) q[24];
cz q[4], q[11];
cz q[5], q[10];
rx(pi/2) q[28];
cz q[18], q[25];
rx(pi/2) q[29];
cz q[19], q[24];
x q[11];
x q[10];
rz(-pi/2) q[28];
x q[25];
rz(-pi/2) q[29];
x q[24];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(-pi/4) q[28];
rz(pi/2) q[25];
rz(-pi/4) q[29];
rz(pi/2) q[24];
rx(pi/2) q[11];
rx(pi/2) q[10];
x q[28];
rx(pi/2) q[25];
x q[29];
rx(pi/2) q[24];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(pi/2) q[28];
rz(-pi/2) q[25];
rz(pi/2) q[29];
rz(-pi/2) q[24];
rz(pi/4) q[11];
rz(pi/4) q[10];
rx(pi/2) q[28];
rz(pi/4) q[25];
rx(pi/2) q[29];
rz(pi/4) q[24];
x q[11];
x q[10];
rz(-pi/2) q[28];
x q[25];
rz(-pi/2) q[29];
x q[24];
rz(pi/2) q[11];
rz(pi/2) q[10];
cz q[12], q[28];
rz(pi/2) q[25];
cz q[13], q[29];
rz(pi/2) q[24];
rx(pi/2) q[11];
rx(pi/2) q[10];
x q[28];
rx(pi/2) q[25];
x q[29];
rx(pi/2) q[24];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(pi/2) q[28];
rz(-pi/2) q[25];
rz(pi/2) q[29];
rz(-pi/2) q[24];
cz q[4], q[11];
cz q[5], q[10];
rx(pi/2) q[28];
cz q[18], q[25];
rx(pi/2) q[29];
cz q[19], q[24];
x q[11];
x q[5];
x q[10];
rz(-pi/2) q[28];
x q[25];
rz(-pi/2) q[29];
x q[19];
x q[24];
rz(pi/2) q[11];
rz(pi/2) q[10];
rz(pi/4) q[28];
rz(pi/2) q[25];
rz(pi/4) q[29];
rz(pi/2) q[24];
rx(pi/2) q[11];
rx(pi/2) q[10];
x q[28];
rx(pi/2) q[25];
x q[29];
rx(pi/2) q[24];
rz(-pi/2) q[11];
rz(-pi/2) q[10];
rz(pi/2) q[28];
rz(-pi/2) q[25];
rz(pi/2) q[29];
rz(-pi/2) q[24];
rx(pi/2) q[28];
rx(pi/2) q[29];
rz(-pi/2) q[28];
rz(-pi/2) q[29];
cz q[26], q[28];
cz q[27], q[29];
cz q[12], q[28];
x q[26];
cz q[13], q[29];
x q[27];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
cz q[12], q[26];
cz q[13], q[27];
x q[26];
x q[27];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
rz(-pi/4) q[26];
rz(-pi/4) q[27];
x q[26];
x q[27];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
cz q[12], q[26];
cz q[13], q[27];
x q[12];
x q[26];
x q[13];
x q[27];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
cz q[26], q[29];
cz q[27], q[28];
x q[29];
x q[28];
rz(pi/2) q[29];
rz(pi/2) q[28];
rx(pi/2) q[29];
rx(pi/2) q[28];
rz(-pi/2) q[29];
rz(-pi/2) q[28];
rz(pi/4) q[29];
rz(pi/4) q[28];
x q[29];
x q[28];
rz(pi/2) q[29];
rz(pi/2) q[28];
rx(pi/2) q[29];
rx(pi/2) q[28];
rz(-pi/2) q[29];
rz(-pi/2) q[28];
cz q[13], q[29];
cz q[12], q[28];
x q[29];
x q[28];
rz(pi/2) q[29];
rz(pi/2) q[28];
rx(pi/2) q[29];
rx(pi/2) q[28];
rz(-pi/2) q[29];
rz(-pi/2) q[28];
rz(-pi/4) q[29];
rz(-pi/4) q[28];
x q[29];
x q[28];
rz(pi/2) q[29];
rz(pi/2) q[28];
rx(pi/2) q[29];
rx(pi/2) q[28];
rz(-pi/2) q[29];
rz(-pi/2) q[28];
cz q[26], q[29];
cz q[27], q[28];
cz q[13], q[29];
x q[26];
cz q[12], q[28];
x q[27];
x q[29];
rz(pi/2) q[26];
rz(pi/2) q[27];
rz(pi/2) q[29];
rx(pi/2) q[26];
rx(pi/2) q[27];
rx(pi/2) q[29];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
rz(-pi/2) q[29];
cz q[13], q[26];
cz q[12], q[27];
x q[29];
x q[26];
x q[27];
rz(pi/2) q[29];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[29];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[29];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
rz(pi/4) q[26];
rz(pi/4) q[27];
x q[26];
x q[27];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
cz q[13], q[26];
cz q[12], q[27];
x q[13];
x q[26];
x q[27];
rz(pi/2) q[26];
rz(pi/2) q[27];
rx(pi/2) q[26];
rx(pi/2) q[27];
rz(-pi/2) q[26];
rz(-pi/2) q[27];
