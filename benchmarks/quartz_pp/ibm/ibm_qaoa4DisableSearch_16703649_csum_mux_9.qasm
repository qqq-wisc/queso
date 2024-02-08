OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[30];
u2(0,pi) q[4];
u2(0,pi) q[5];
u2(0,pi) q[10];
u2(0,pi) q[11];
u2(0,pi) q[18];
u2(0,pi) q[19];
u2(0,pi) q[24];
u2(0,pi) q[25];
u2(0,pi) q[12];
u2(0,pi) q[13];
u2(0,pi) q[26];
u2(0,pi) q[27];
u2(0,pi) q[28];
u2(0,pi) q[29];
u3(pi,0,-pi) q[1];
u3(pi,0,-pi) q[7];
u3(pi,0,-pi) q[15];
u3(pi,0,-pi) q[21];
cx q[3], q[4];
cx q[2], q[5];
cx q[9], q[10];
cx q[8], q[11];
cx q[17], q[18];
cx q[16], q[19];
cx q[23], q[24];
cx q[22], q[25];
u1(-pi/4) q[4];
u1(-pi/4) q[5];
u1(-pi/4) q[10];
u1(-pi/4) q[11];
u1(-pi/4) q[18];
u1(-pi/4) q[19];
u1(-pi/4) q[24];
u1(-pi/4) q[25];
cx q[0], q[4];
cx q[1], q[5];
cx q[6], q[10];
cx q[7], q[11];
cx q[14], q[18];
cx q[15], q[19];
cx q[20], q[24];
cx q[21], q[25];
u1(pi/4) q[4];
u1(pi/4) q[5];
u1(pi/4) q[10];
u1(pi/4) q[11];
u1(pi/4) q[18];
u1(pi/4) q[19];
u1(pi/4) q[24];
u1(pi/4) q[25];
cx q[3], q[4];
cx q[2], q[5];
cx q[9], q[10];
cx q[8], q[11];
cx q[17], q[18];
cx q[16], q[19];
cx q[23], q[24];
cx q[22], q[25];
u1(-pi/4) q[4];
u1(-pi/4) q[5];
u1(-pi/4) q[10];
u1(-pi/4) q[11];
u1(-pi/4) q[18];
u1(-pi/4) q[19];
u1(-pi/4) q[24];
u1(-pi/4) q[25];
cx q[0], q[4];
cx q[1], q[5];
cx q[6], q[10];
cx q[7], q[11];
cx q[14], q[18];
cx q[15], q[19];
cx q[20], q[24];
cx q[21], q[25];
cx q[0], q[3];
cx q[1], q[2];
cx q[6], q[9];
cx q[7], q[8];
cx q[14], q[17];
cx q[15], q[16];
cx q[20], q[23];
cx q[21], q[22];
u1(-pi/4) q[3];
u1(-pi/4) q[2];
u1(-pi/4) q[9];
u1(-pi/4) q[8];
u1(-pi/4) q[17];
u1(-pi/4) q[16];
u1(-pi/4) q[23];
u1(-pi/4) q[22];
cx q[0], q[3];
cx q[1], q[2];
cx q[6], q[9];
cx q[7], q[8];
cx q[14], q[17];
cx q[15], q[16];
cx q[20], q[23];
cx q[21], q[22];
u1(pi/4) q[0];
cx q[3], q[5];
u1(pi/4) q[1];
cx q[2], q[4];
u1(pi/4) q[6];
cx q[9], q[11];
u1(pi/4) q[7];
cx q[8], q[10];
u1(pi/4) q[14];
cx q[17], q[19];
u1(pi/4) q[15];
cx q[16], q[18];
u1(pi/4) q[20];
cx q[23], q[25];
u1(pi/4) q[21];
cx q[22], q[24];
u3(pi,0,-pi) q[0];
u1(pi/4) q[5];
u3(pi,0,-pi) q[1];
u1(pi/4) q[4];
u3(pi,0,-pi) q[6];
u1(pi/4) q[11];
u3(pi,0,-pi) q[7];
u1(pi/4) q[10];
u3(pi,0,-pi) q[14];
u1(pi/4) q[19];
u3(pi,0,-pi) q[15];
u1(pi/4) q[18];
u3(pi,0,-pi) q[20];
u1(pi/4) q[25];
u3(pi,0,-pi) q[21];
u1(pi/4) q[24];
cx q[1], q[5];
cx q[0], q[4];
cx q[7], q[11];
cx q[6], q[10];
cx q[15], q[19];
cx q[14], q[18];
cx q[21], q[25];
cx q[20], q[24];
u1(-pi/4) q[5];
u1(-pi/4) q[4];
u1(-pi/4) q[11];
u1(-pi/4) q[10];
u1(-pi/4) q[19];
u1(-pi/4) q[18];
u1(-pi/4) q[25];
u1(-pi/4) q[24];
cx q[3], q[5];
cx q[2], q[4];
cx q[9], q[11];
cx q[8], q[10];
cx q[17], q[19];
cx q[16], q[18];
cx q[23], q[25];
cx q[22], q[24];
u1(pi/4) q[5];
u1(pi/4) q[4];
u1(pi/4) q[11];
u1(pi/4) q[10];
u1(pi/4) q[19];
u1(pi/4) q[18];
u1(pi/4) q[25];
u1(pi/4) q[24];
cx q[1], q[5];
cx q[0], q[4];
cx q[7], q[11];
cx q[6], q[10];
cx q[15], q[19];
cx q[14], q[18];
cx q[21], q[25];
cx q[20], q[24];
u2(0,pi) q[5];
cx q[1], q[3];
u2(0,pi) q[4];
cx q[0], q[2];
u2(0,pi) q[11];
cx q[7], q[9];
u2(0,pi) q[10];
cx q[6], q[8];
u2(0,pi) q[19];
cx q[15], q[17];
u2(0,pi) q[18];
cx q[14], q[16];
u2(0,pi) q[25];
cx q[21], q[23];
u2(0,pi) q[24];
cx q[20], q[22];
u1(pi/4) q[3];
u3(pi,0,-pi) q[4];
u1(pi/4) q[2];
cx q[11], q[13];
u1(pi/4) q[9];
cx q[10], q[12];
u1(pi/4) q[8];
u1(pi/4) q[17];
u3(pi,0,-pi) q[18];
u1(pi/4) q[16];
cx q[25], q[27];
u1(pi/4) q[23];
cx q[24], q[26];
u1(pi/4) q[22];
cx q[1], q[3];
cx q[0], q[2];
u1(-pi/4) q[13];
cx q[7], q[9];
u1(-pi/4) q[12];
cx q[6], q[8];
cx q[15], q[17];
cx q[14], q[16];
u1(-pi/4) q[27];
cx q[21], q[23];
u1(-pi/4) q[26];
cx q[20], q[22];
u1(-pi/4) q[1];
u1(-pi/4) q[0];
cx q[5], q[13];
u1(-pi/4) q[7];
cx q[4], q[12];
u1(-pi/4) q[6];
u1(-pi/4) q[15];
u1(-pi/4) q[14];
cx q[19], q[27];
u1(-pi/4) q[21];
cx q[18], q[26];
u1(-pi/4) q[20];
u3(pi,0,-pi) q[0];
u1(pi/4) q[13];
u1(pi/4) q[12];
u3(pi,0,-pi) q[6];
u3(pi,0,-pi) q[14];
u1(pi/4) q[27];
u1(pi/4) q[26];
u3(pi,0,-pi) q[20];
cx q[11], q[13];
cx q[10], q[12];
cx q[25], q[27];
cx q[24], q[26];
u1(-pi/4) q[13];
u1(-pi/4) q[12];
u1(-pi/4) q[27];
u1(-pi/4) q[26];
cx q[5], q[13];
cx q[4], q[12];
cx q[19], q[27];
cx q[18], q[26];
cx q[5], q[11];
cx q[4], q[10];
cx q[19], q[25];
cx q[18], q[24];
u1(-pi/4) q[11];
u1(-pi/4) q[10];
u1(-pi/4) q[25];
u1(-pi/4) q[24];
cx q[5], q[11];
cx q[4], q[10];
cx q[19], q[25];
cx q[18], q[24];
u1(pi/4) q[5];
cx q[11], q[12];
u1(pi/4) q[4];
cx q[10], q[13];
u1(pi/4) q[19];
cx q[25], q[26];
u1(pi/4) q[18];
cx q[24], q[27];
u3(pi,0,-pi) q[5];
u1(pi/4) q[12];
u3(pi,0,-pi) q[4];
u1(pi/4) q[13];
u3(pi,0,-pi) q[19];
u1(pi/4) q[26];
u3(pi,0,-pi) q[18];
u1(pi/4) q[27];
cx q[4], q[12];
cx q[5], q[13];
cx q[18], q[26];
cx q[19], q[27];
u1(-pi/4) q[12];
u1(-pi/4) q[13];
u1(-pi/4) q[26];
u1(-pi/4) q[27];
cx q[11], q[12];
cx q[10], q[13];
cx q[25], q[26];
cx q[24], q[27];
u1(pi/4) q[12];
u1(pi/4) q[13];
u1(pi/4) q[26];
u1(pi/4) q[27];
cx q[4], q[12];
cx q[5], q[13];
cx q[18], q[26];
cx q[19], q[27];
u2(0,pi) q[12];
cx q[4], q[11];
u2(0,pi) q[13];
cx q[5], q[10];
u2(0,pi) q[26];
cx q[18], q[25];
u2(0,pi) q[27];
cx q[19], q[24];
u3(pi,0,-pi) q[12];
u1(pi/4) q[11];
u1(pi/4) q[10];
cx q[26], q[28];
u1(pi/4) q[25];
cx q[27], q[29];
u1(pi/4) q[24];
cx q[4], q[11];
cx q[5], q[10];
u1(-pi/4) q[28];
cx q[18], q[25];
u1(-pi/4) q[29];
cx q[19], q[24];
u1(-pi/4) q[4];
u1(-pi/4) q[5];
cx q[12], q[28];
u1(-pi/4) q[18];
cx q[13], q[29];
u1(-pi/4) q[19];
u3(pi,0,-pi) q[5];
u1(pi/4) q[28];
u1(pi/4) q[29];
u3(pi,0,-pi) q[19];
cx q[26], q[28];
cx q[27], q[29];
u1(-pi/4) q[28];
u1(-pi/4) q[29];
cx q[12], q[28];
cx q[13], q[29];
cx q[12], q[26];
cx q[13], q[27];
u1(-pi/4) q[26];
u1(-pi/4) q[27];
cx q[12], q[26];
cx q[13], q[27];
u1(pi/4) q[12];
cx q[26], q[29];
u1(pi/4) q[13];
cx q[27], q[28];
u3(pi,0,-pi) q[12];
u1(pi/4) q[29];
u3(pi,0,-pi) q[13];
u1(pi/4) q[28];
cx q[13], q[29];
cx q[12], q[28];
u1(-pi/4) q[29];
u1(-pi/4) q[28];
cx q[26], q[29];
cx q[27], q[28];
u1(pi/4) q[29];
u1(pi/4) q[28];
cx q[13], q[29];
cx q[12], q[28];
u2(0,pi) q[29];
cx q[13], q[26];
u2(0,pi) q[28];
cx q[12], q[27];
u1(pi/4) q[26];
u1(pi/4) q[27];
cx q[13], q[26];
cx q[12], q[27];
u1(-pi/4) q[13];
u1(-pi/4) q[12];
u3(pi,0,-pi) q[13];
