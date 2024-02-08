OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[24];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[8];
rx(pi) q[9];
rx(pi) q[12];
rx(pi) q[15];
rx(pi) q[16];
rx(pi) q[19];
rx(pi) q[20];
rx(pi) q[23];
rx(pi) q[0];
rx(pi) q[3];
rx(pi) q[6];
rx(pi) q[10];
rx(pi) q[13];
rx(pi) q[17];
rx(pi) q[21];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[8];
rz(pi/2) q[9];
rz(pi/2) q[12];
rz(pi/2) q[15];
rz(pi/2) q[16];
rz(pi/2) q[19];
rz(pi/2) q[20];
rz(pi/2) q[23];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[9];
rx(pi/2) q[12];
rx(pi/2) q[15];
rx(pi/2) q[16];
rx(pi/2) q[19];
rx(pi/2) q[20];
rx(pi/2) q[23];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[9];
rz(-pi/2) q[12];
rz(-pi/2) q[15];
rz(-pi/2) q[16];
rz(-pi/2) q[19];
rz(-pi/2) q[20];
rz(-pi/2) q[23];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[8];
rx(pi) q[9];
rx(pi) q[12];
rx(pi) q[15];
rx(pi) q[16];
rx(pi) q[19];
rx(pi) q[20];
rx(pi) q[23];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[8];
rz(pi/2) q[9];
rz(pi/2) q[12];
rz(pi/2) q[15];
rz(pi/2) q[16];
rz(pi/2) q[19];
rz(pi/2) q[20];
rz(pi/2) q[23];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[9];
rx(pi/2) q[12];
rx(pi/2) q[15];
rx(pi/2) q[16];
rx(pi/2) q[19];
rx(pi/2) q[20];
rx(pi/2) q[23];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[9];
rz(-pi/2) q[12];
rz(-pi/2) q[15];
rz(-pi/2) q[16];
rz(-pi/2) q[19];
rz(-pi/2) q[20];
rz(-pi/2) q[23];
cz q[1], q[2];
cz q[4], q[5];
cz q[7], q[9];
cz q[11], q[12];
cz q[14], q[16];
rx(pi) q[19];
cz q[18], q[20];
cz q[22], q[23];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[9];
rx(pi) q[12];
rx(pi) q[16];
rz(pi/2) q[19];
rx(pi) q[20];
rx(pi) q[23];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[9];
rz(pi/2) q[12];
rz(pi/2) q[16];
rx(pi/2) q[19];
rz(pi/2) q[20];
rz(pi/2) q[23];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[9];
rx(pi/2) q[12];
rx(pi/2) q[16];
rz(-pi/2) q[19];
rx(pi/2) q[20];
rx(pi/2) q[23];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[9];
rz(-pi/2) q[12];
rz(-pi/2) q[16];
rz(-pi/2) q[20];
rz(-pi/2) q[23];
rz(-pi/4) q[2];
rz(-pi/4) q[5];
rz(-pi/4) q[9];
rz(-pi/4) q[12];
rz(-pi/4) q[16];
rz(-pi/4) q[20];
rz(-pi/4) q[23];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[9];
rx(pi) q[12];
rx(pi) q[16];
rx(pi) q[20];
rx(pi) q[23];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[9];
rz(pi/2) q[12];
rz(pi/2) q[16];
rz(pi/2) q[20];
rz(pi/2) q[23];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[9];
rx(pi/2) q[12];
rx(pi/2) q[16];
rx(pi/2) q[20];
rx(pi/2) q[23];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[9];
rz(-pi/2) q[12];
rz(-pi/2) q[16];
rz(-pi/2) q[20];
rz(-pi/2) q[23];
cz q[0], q[2];
cz q[3], q[5];
cz q[6], q[9];
cz q[10], q[12];
cz q[13], q[16];
cz q[17], q[20];
cz q[21], q[23];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[9];
rx(pi) q[12];
rx(pi) q[16];
rx(pi) q[20];
rx(pi) q[23];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[9];
rz(pi/2) q[12];
rz(pi/2) q[16];
rz(pi/2) q[20];
rz(pi/2) q[23];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[9];
rx(pi/2) q[12];
rx(pi/2) q[16];
rx(pi/2) q[20];
rx(pi/2) q[23];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[9];
rz(-pi/2) q[12];
rz(-pi/2) q[16];
rz(-pi/2) q[20];
rz(-pi/2) q[23];
rz(pi/4) q[2];
rx(pi) q[5];
rz(pi/4) q[9];
rx(pi) q[12];
rz(pi/4) q[16];
rx(pi) q[20];
rx(pi) q[23];
rx(pi) q[2];
rz(pi/2) q[5];
rx(pi) q[9];
rz(pi/2) q[12];
rx(pi) q[16];
rz(pi/2) q[20];
rz(pi/2) q[23];
rz(pi/2) q[2];
rx(pi/2) q[5];
rz(pi/2) q[9];
rx(pi/2) q[12];
rz(pi/2) q[16];
rx(pi/2) q[20];
rx(pi/2) q[23];
rx(pi/2) q[2];
rz(-pi/2) q[5];
rx(pi/2) q[9];
rz(-pi/2) q[12];
rx(pi/2) q[16];
rz(-pi/2) q[20];
rz(-pi/2) q[23];
rz(-pi/2) q[2];
cz q[4], q[5];
rz(-pi/2) q[9];
cz q[11], q[12];
rz(-pi/2) q[16];
cz q[18], q[20];
cz q[22], q[23];
cz q[1], q[2];
rx(pi) q[5];
rx(pi) q[4];
cz q[7], q[9];
rx(pi) q[12];
rx(pi) q[11];
cz q[14], q[16];
rx(pi) q[20];
rx(pi) q[18];
rx(pi) q[23];
rx(pi) q[22];
rx(pi) q[2];
rx(pi) q[1];
rz(pi/2) q[5];
rz(pi/2) q[4];
rx(pi) q[9];
rx(pi) q[7];
rz(pi/2) q[12];
rz(pi/2) q[11];
rx(pi) q[16];
rx(pi) q[14];
rz(pi/2) q[20];
rz(pi/2) q[18];
rz(pi/2) q[23];
rz(pi/2) q[22];
rz(pi/2) q[2];
rz(pi/2) q[1];
rx(pi/2) q[5];
rx(pi/2) q[4];
rz(pi/2) q[9];
rz(pi/2) q[7];
rx(pi/2) q[12];
rx(pi/2) q[11];
rz(pi/2) q[16];
rz(pi/2) q[14];
rx(pi/2) q[20];
rx(pi/2) q[18];
rx(pi/2) q[23];
rx(pi/2) q[22];
rx(pi/2) q[2];
rx(pi/2) q[1];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rx(pi/2) q[9];
rx(pi/2) q[7];
rz(-pi/2) q[12];
rz(-pi/2) q[11];
rx(pi/2) q[16];
rx(pi/2) q[14];
rz(-pi/2) q[20];
rz(-pi/2) q[18];
rz(-pi/2) q[23];
rz(-pi/2) q[22];
rz(-pi/2) q[2];
rz(-pi/2) q[1];
rz(-pi/4) q[5];
rz(-pi/2) q[9];
rz(-pi/2) q[7];
rz(-pi/4) q[12];
rz(-pi/2) q[16];
rz(-pi/2) q[14];
rz(-pi/4) q[20];
rz(-pi/4) q[23];
rz(-pi/4) q[2];
rx(pi) q[5];
rz(-pi/4) q[9];
rx(pi) q[12];
rz(-pi/4) q[16];
rx(pi) q[20];
rx(pi) q[23];
rx(pi) q[2];
rz(pi/2) q[5];
rx(pi) q[9];
rz(pi/2) q[12];
rx(pi) q[16];
rz(pi/2) q[20];
rz(pi/2) q[23];
rz(pi/2) q[2];
rx(pi/2) q[5];
rz(pi/2) q[9];
rx(pi/2) q[12];
rz(pi/2) q[16];
rx(pi/2) q[20];
rx(pi/2) q[23];
rx(pi/2) q[2];
rz(-pi/2) q[5];
rx(pi/2) q[9];
rz(-pi/2) q[12];
rx(pi/2) q[16];
rz(-pi/2) q[20];
rz(-pi/2) q[23];
rz(-pi/2) q[2];
cz q[3], q[5];
rz(-pi/2) q[9];
cz q[10], q[12];
rz(-pi/2) q[16];
cz q[17], q[20];
cz q[21], q[23];
cz q[0], q[2];
rx(pi) q[5];
cz q[3], q[4];
cz q[6], q[9];
rx(pi) q[12];
cz q[10], q[11];
cz q[13], q[16];
rx(pi) q[20];
cz q[17], q[18];
rx(pi) q[23];
cz q[21], q[22];
rx(pi) q[2];
cz q[0], q[1];
rz(pi/2) q[5];
rx(pi) q[4];
rx(pi) q[9];
cz q[6], q[7];
rz(pi/2) q[12];
rx(pi) q[11];
rx(pi) q[16];
cz q[13], q[14];
rz(pi/2) q[20];
rx(pi) q[18];
rz(pi/2) q[23];
rx(pi) q[22];
rz(pi/2) q[2];
rx(pi) q[1];
rx(pi/2) q[5];
rz(pi/2) q[4];
rz(pi/2) q[9];
rx(pi) q[7];
rx(pi/2) q[12];
rz(pi/2) q[11];
rz(pi/2) q[16];
rx(pi) q[14];
rx(pi/2) q[20];
rz(pi/2) q[18];
rx(pi/2) q[23];
rz(pi/2) q[22];
rx(pi/2) q[2];
rz(pi/2) q[1];
rz(-pi/2) q[5];
rx(pi/2) q[4];
rx(pi/2) q[9];
rz(pi/2) q[7];
rz(-pi/2) q[12];
rx(pi/2) q[11];
rx(pi/2) q[16];
rz(pi/2) q[14];
rz(-pi/2) q[20];
rx(pi/2) q[18];
rz(-pi/2) q[23];
rx(pi/2) q[22];
rz(-pi/2) q[2];
rx(pi/2) q[1];
rz(pi/2) q[5];
rz(-pi/2) q[4];
rz(-pi/2) q[9];
rx(pi/2) q[7];
rx(pi) q[12];
rz(-pi/2) q[11];
rz(-pi/2) q[16];
rx(pi/2) q[14];
rx(pi) q[20];
rz(-pi/2) q[18];
rx(pi) q[23];
rz(-pi/2) q[22];
rz(pi/4) q[2];
rz(-pi/2) q[1];
rx(pi) q[5];
rx(pi) q[4];
rz(pi/4) q[9];
rz(-pi/2) q[7];
rz(pi/2) q[12];
rx(pi) q[11];
rz(pi/4) q[16];
rz(-pi/2) q[14];
rz(pi/2) q[20];
rx(pi) q[18];
rz(pi/2) q[23];
rx(pi) q[22];
rx(pi) q[2];
rx(pi) q[1];
rz(pi/2) q[5];
rz(pi/2) q[4];
rx(pi) q[9];
rx(pi) q[7];
rx(pi/2) q[12];
rz(pi/2) q[11];
rx(pi) q[16];
rx(pi) q[14];
rx(pi/2) q[20];
rz(pi/2) q[18];
rx(pi/2) q[23];
rz(pi/2) q[22];
rz(pi/2) q[2];
rz(pi/2) q[1];
rx(pi/2) q[5];
rx(pi/2) q[4];
rz(pi/2) q[9];
rz(pi/2) q[7];
rz(-pi/2) q[12];
rx(pi/2) q[11];
rz(pi/2) q[16];
rz(pi/2) q[14];
rz(-pi/2) q[20];
rx(pi/2) q[18];
rz(-pi/2) q[23];
rx(pi/2) q[22];
rx(pi/2) q[2];
rx(pi/2) q[1];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rx(pi/2) q[9];
rx(pi/2) q[7];
rz(-pi/2) q[11];
rx(pi/2) q[16];
rx(pi/2) q[14];
rz(-pi/2) q[18];
rz(-pi/2) q[22];
rz(-pi/2) q[2];
rz(-pi/2) q[1];
cz q[3], q[4];
rz(-pi/2) q[9];
rz(-pi/2) q[7];
cz q[10], q[11];
rz(-pi/2) q[16];
rz(-pi/2) q[14];
cz q[17], q[18];
cz q[21], q[22];
cz q[0], q[1];
rx(pi) q[4];
cz q[6], q[7];
rx(pi) q[11];
cz q[13], q[14];
rx(pi) q[18];
rz(pi/4) q[21];
rx(pi) q[22];
rx(pi) q[1];
rz(pi/2) q[4];
rx(pi) q[7];
rz(pi/2) q[11];
rx(pi) q[14];
rz(pi/2) q[18];
rz(pi/2) q[22];
rz(pi/2) q[1];
rx(pi/2) q[4];
rz(pi/2) q[7];
rx(pi/2) q[11];
rz(pi/2) q[14];
rx(pi/2) q[18];
rx(pi/2) q[22];
rx(pi/2) q[1];
rz(-pi/2) q[4];
rx(pi/2) q[7];
rz(-pi/2) q[11];
rx(pi/2) q[14];
rz(-pi/2) q[18];
rz(-pi/2) q[22];
rz(-pi/2) q[1];
rx(pi) q[4];
rz(-pi/2) q[7];
rx(pi) q[11];
rz(-pi/2) q[14];
rx(pi) q[18];
rz(pi/4) q[22];
rz(pi/2) q[4];
rx(pi) q[7];
rz(pi/2) q[11];
rx(pi) q[14];
rz(pi/2) q[18];
rx(pi) q[22];
rx(pi/2) q[4];
rz(pi/2) q[7];
rx(pi/2) q[11];
rz(pi/2) q[14];
rx(pi/2) q[18];
rz(pi/2) q[22];
rz(-pi/2) q[4];
rx(pi/2) q[7];
rz(-pi/2) q[11];
rx(pi/2) q[14];
rz(-pi/2) q[18];
rx(pi/2) q[22];
cz q[3], q[4];
rz(-pi/2) q[7];
cz q[10], q[11];
rz(-pi/2) q[14];
cz q[17], q[18];
rz(-pi/2) q[22];
rx(pi) q[4];
cz q[6], q[7];
rx(pi) q[11];
cz q[13], q[14];
rx(pi) q[18];
cz q[21], q[22];
rz(pi/2) q[4];
rx(pi) q[7];
rz(pi/2) q[11];
rx(pi) q[14];
rz(pi/2) q[18];
rx(pi) q[22];
rx(pi/2) q[4];
rz(pi/2) q[7];
rx(pi/2) q[11];
rz(pi/2) q[14];
rx(pi/2) q[18];
rz(pi/2) q[22];
rz(-pi/2) q[4];
rx(pi/2) q[7];
rz(-pi/2) q[11];
rx(pi/2) q[14];
rz(-pi/2) q[18];
rx(pi/2) q[22];
cz q[4], q[5];
rz(-pi/2) q[7];
cz q[11], q[8];
rz(-pi/2) q[14];
cz q[18], q[15];
rz(-pi/2) q[22];
rx(pi) q[5];
rx(pi) q[8];
rx(pi) q[15];
cz q[22], q[19];
rz(pi/2) q[5];
rz(pi/2) q[8];
rz(pi/2) q[15];
rx(pi) q[19];
rx(pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[15];
rz(pi/2) q[19];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[15];
rx(pi/2) q[19];
rx(pi) q[5];
rz(-pi/4) q[8];
rz(-pi/4) q[15];
rz(-pi/2) q[19];
rz(pi/2) q[5];
rx(pi) q[8];
rx(pi) q[15];
rz(-pi/4) q[19];
rx(pi/2) q[5];
rz(pi/2) q[8];
rz(pi/2) q[15];
rx(pi) q[19];
rz(-pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[15];
rz(pi/2) q[19];
cz q[2], q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[15];
rx(pi/2) q[19];
rx(pi) q[5];
cz q[7], q[8];
cz q[14], q[15];
rz(-pi/2) q[19];
rz(pi/2) q[5];
rx(pi) q[8];
rx(pi) q[15];
rx(pi/2) q[5];
rz(pi/2) q[8];
rz(pi/2) q[15];
rz(-pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[15];
rz(pi/4) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[15];
rx(pi) q[5];
rz(pi/4) q[8];
rz(pi/4) q[15];
rz(pi/2) q[5];
rx(pi) q[8];
rx(pi) q[15];
rx(pi/2) q[5];
rz(pi/2) q[8];
rz(pi/2) q[15];
rz(-pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[15];
cz q[4], q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[15];
rx(pi) q[5];
rx(pi) q[4];
cz q[11], q[8];
cz q[18], q[15];
rz(pi/2) q[5];
rz(pi/2) q[4];
rx(pi) q[8];
rx(pi) q[11];
rx(pi) q[15];
rx(pi) q[18];
rx(pi/2) q[5];
rx(pi/2) q[4];
rz(pi/2) q[8];
rz(pi/2) q[11];
rz(pi/2) q[15];
rz(pi/2) q[18];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rx(pi/2) q[8];
rx(pi/2) q[11];
rx(pi/2) q[15];
rx(pi/2) q[18];
rz(-pi/4) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[11];
rz(-pi/2) q[15];
rz(-pi/2) q[18];
rx(pi) q[5];
rz(-pi/4) q[8];
rz(-pi/4) q[15];
rz(pi/2) q[5];
rx(pi) q[8];
rx(pi) q[15];
rx(pi/2) q[5];
rz(pi/2) q[8];
rz(pi/2) q[15];
rz(-pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[15];
cz q[2], q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[15];
rx(pi) q[5];
cz q[2], q[4];
cz q[7], q[8];
cz q[14], q[15];
rz(pi/2) q[5];
rx(pi) q[4];
rx(pi) q[8];
cz q[7], q[11];
rx(pi) q[15];
cz q[14], q[18];
rx(pi/2) q[5];
rz(pi/2) q[4];
rz(pi/2) q[8];
rx(pi) q[11];
rz(pi/2) q[15];
rx(pi) q[18];
rz(-pi/2) q[5];
rx(pi/2) q[4];
rx(pi/2) q[8];
rz(pi/2) q[11];
rx(pi/2) q[15];
rz(pi/2) q[18];
rx(pi) q[5];
rz(-pi/2) q[4];
rz(-pi/2) q[8];
rx(pi/2) q[11];
rz(-pi/2) q[15];
rx(pi/2) q[18];
rz(pi/2) q[5];
rx(pi) q[4];
rz(pi/4) q[8];
rz(-pi/2) q[11];
rz(pi/4) q[15];
rz(-pi/2) q[18];
rx(pi/2) q[5];
rz(pi/2) q[4];
rx(pi) q[8];
rx(pi) q[11];
rx(pi) q[15];
rx(pi) q[18];
rz(-pi/2) q[5];
rx(pi/2) q[4];
rz(pi/2) q[8];
rz(pi/2) q[11];
rz(pi/2) q[15];
rz(pi/2) q[18];
rz(-pi/2) q[4];
rx(pi/2) q[8];
rx(pi/2) q[11];
rx(pi/2) q[15];
rx(pi/2) q[18];
cz q[2], q[4];
rz(-pi/2) q[8];
rz(-pi/2) q[11];
rz(-pi/2) q[15];
rz(-pi/2) q[18];
rx(pi) q[4];
cz q[7], q[11];
cz q[15], q[19];
cz q[14], q[18];
rz(pi/2) q[4];
rx(pi) q[11];
rx(pi) q[19];
rx(pi) q[18];
rx(pi/2) q[4];
rz(pi/2) q[11];
rz(pi/2) q[19];
rz(pi/2) q[18];
rz(-pi/2) q[4];
rx(pi/2) q[11];
rx(pi/2) q[19];
rx(pi/2) q[18];
rz(-pi/2) q[11];
rz(-pi/2) q[19];
rz(-pi/2) q[18];
cz q[11], q[12];
rz(pi/4) q[19];
cz q[18], q[20];
rx(pi) q[12];
rx(pi) q[19];
rx(pi) q[20];
rz(pi/2) q[12];
rz(pi/2) q[19];
rz(pi/2) q[20];
rx(pi/2) q[12];
rx(pi/2) q[19];
rx(pi/2) q[20];
rz(-pi/2) q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[20];
rx(pi) q[12];
cz q[22], q[19];
rx(pi) q[20];
rz(pi/2) q[12];
rx(pi) q[19];
rx(pi) q[22];
rz(pi/2) q[20];
rx(pi/2) q[12];
rz(pi/2) q[19];
rz(pi/2) q[22];
rx(pi/2) q[20];
rz(-pi/2) q[12];
rx(pi/2) q[19];
rx(pi/2) q[22];
rz(-pi/2) q[20];
cz q[9], q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[22];
cz q[16], q[20];
rx(pi) q[12];
rz(-pi/4) q[19];
rx(pi) q[20];
rz(pi/2) q[12];
rx(pi) q[19];
rz(pi/2) q[20];
rx(pi/2) q[12];
rz(pi/2) q[19];
rx(pi/2) q[20];
rz(-pi/2) q[12];
rx(pi/2) q[19];
rz(-pi/2) q[20];
rz(pi/4) q[12];
rz(-pi/2) q[19];
rz(pi/4) q[20];
rx(pi) q[12];
cz q[15], q[19];
rx(pi) q[20];
rz(pi/2) q[12];
rx(pi) q[19];
cz q[15], q[22];
rz(pi/2) q[20];
rx(pi/2) q[12];
rz(pi/2) q[19];
rx(pi) q[22];
rx(pi/2) q[20];
rz(-pi/2) q[12];
rx(pi/2) q[19];
rz(pi/2) q[22];
rz(-pi/2) q[20];
cz q[11], q[12];
rz(-pi/2) q[19];
rx(pi/2) q[22];
cz q[18], q[20];
rx(pi) q[12];
rx(pi) q[11];
rz(pi/4) q[19];
rz(-pi/2) q[22];
rx(pi) q[20];
rx(pi) q[18];
rz(pi/2) q[12];
rz(pi/2) q[11];
rx(pi) q[19];
rx(pi) q[22];
rz(pi/2) q[20];
rz(pi/2) q[18];
rx(pi/2) q[12];
rx(pi/2) q[11];
rz(pi/2) q[19];
rz(pi/2) q[22];
rx(pi/2) q[20];
rx(pi/2) q[18];
rz(-pi/2) q[12];
rz(-pi/2) q[11];
rx(pi/2) q[19];
rx(pi/2) q[22];
rz(-pi/2) q[20];
rz(-pi/2) q[18];
rz(-pi/4) q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[22];
rz(-pi/4) q[20];
rx(pi) q[12];
cz q[15], q[22];
rx(pi) q[20];
rz(pi/2) q[12];
rx(pi) q[22];
rz(pi/2) q[20];
rx(pi/2) q[12];
rz(pi/2) q[22];
rx(pi/2) q[20];
rz(-pi/2) q[12];
rx(pi/2) q[22];
rz(-pi/2) q[20];
cz q[9], q[12];
rz(-pi/2) q[22];
cz q[16], q[20];
rx(pi) q[12];
cz q[9], q[11];
cz q[22], q[23];
rx(pi) q[20];
cz q[16], q[18];
rz(pi/2) q[12];
rx(pi) q[11];
rx(pi) q[23];
rz(pi/2) q[20];
rx(pi) q[18];
rx(pi/2) q[12];
rz(pi/2) q[11];
rz(pi/2) q[23];
rx(pi/2) q[20];
rz(pi/2) q[18];
rz(-pi/2) q[12];
rx(pi/2) q[11];
rx(pi/2) q[23];
rz(-pi/2) q[20];
rx(pi/2) q[18];
rz(3*pi/4) q[12];
rz(-pi/2) q[11];
rz(-pi/2) q[23];
rz(pi/2) q[20];
rz(-pi/2) q[18];
rx(pi) q[12];
rx(pi) q[11];
rx(pi) q[23];
rx(pi) q[20];
rx(pi) q[18];
rz(pi/2) q[12];
rz(pi/2) q[11];
rz(pi/2) q[23];
rz(pi/2) q[20];
rz(pi/2) q[18];
rx(pi/2) q[12];
rx(pi/2) q[11];
rx(pi/2) q[23];
rx(pi/2) q[20];
rx(pi/2) q[18];
rz(-pi/2) q[12];
rz(-pi/2) q[11];
rz(-pi/2) q[23];
rz(-pi/2) q[20];
rz(-pi/2) q[18];
cz q[8], q[12];
cz q[9], q[11];
cz q[20], q[23];
cz q[16], q[18];
rx(pi) q[12];
rx(pi) q[11];
rx(pi) q[23];
rx(pi) q[18];
rz(pi/2) q[12];
rz(pi/2) q[11];
rz(pi/2) q[23];
rz(pi/2) q[18];
rx(pi/2) q[12];
rx(pi/2) q[11];
rx(pi/2) q[23];
rx(pi/2) q[18];
rz(-pi/2) q[12];
rz(-pi/2) q[11];
rz(-pi/2) q[23];
rz(-pi/2) q[18];
rz(-pi/4) q[12];
rz(pi/4) q[23];
rx(pi) q[12];
rx(pi) q[23];
rz(pi/2) q[12];
rz(pi/2) q[23];
rx(pi/2) q[12];
rx(pi/2) q[23];
rz(-pi/2) q[12];
rz(-pi/2) q[23];
cz q[5], q[12];
cz q[22], q[23];
rx(pi) q[12];
rx(pi) q[23];
rx(pi) q[22];
rz(pi/2) q[12];
rz(pi/2) q[23];
rz(pi/2) q[22];
rx(pi/2) q[12];
rx(pi/2) q[23];
rx(pi/2) q[22];
rz(-pi/2) q[12];
rz(-pi/2) q[23];
rz(-pi/2) q[22];
rz(pi/4) q[12];
rz(-pi/4) q[23];
rx(pi) q[12];
rx(pi) q[23];
rz(pi/2) q[12];
rz(pi/2) q[23];
rx(pi/2) q[12];
rx(pi/2) q[23];
rz(-pi/2) q[12];
rz(-pi/2) q[23];
cz q[8], q[12];
cz q[20], q[23];
rx(pi) q[12];
rx(pi) q[8];
rx(pi) q[23];
cz q[20], q[22];
rz(pi/2) q[12];
rz(pi/2) q[8];
rz(pi/2) q[23];
rx(pi) q[22];
rx(pi/2) q[12];
rx(pi/2) q[8];
rx(pi/2) q[23];
rz(pi/2) q[22];
rz(-pi/2) q[12];
rz(-pi/2) q[8];
rz(-pi/2) q[23];
rx(pi/2) q[22];
rz(-pi/4) q[12];
rz(3*pi/4) q[23];
rz(-pi/2) q[22];
rx(pi) q[12];
rx(pi) q[23];
rz(-pi/4) q[22];
rz(pi/2) q[12];
rz(pi/2) q[23];
rx(pi) q[22];
rx(pi/2) q[12];
rx(pi/2) q[23];
rz(pi/2) q[22];
rz(-pi/2) q[12];
rz(-pi/2) q[23];
rx(pi/2) q[22];
cz q[5], q[12];
cz q[19], q[23];
rz(-pi/2) q[22];
rx(pi) q[12];
cz q[5], q[8];
rx(pi) q[23];
cz q[20], q[22];
rz(pi/2) q[12];
rx(pi) q[8];
rz(pi/2) q[23];
rz(pi/4) q[20];
rx(pi) q[22];
rx(pi/2) q[12];
rz(pi/2) q[8];
rx(pi/2) q[23];
rx(pi) q[20];
rz(pi/2) q[22];
rz(-pi/2) q[12];
rx(pi/2) q[8];
rz(-pi/2) q[23];
rz(pi/2) q[20];
rx(pi/2) q[22];
rx(pi) q[12];
rz(-pi/2) q[8];
rz(-pi/4) q[23];
rx(pi/2) q[20];
rz(-pi/2) q[22];
rz(pi/2) q[12];
rx(pi) q[8];
rx(pi) q[23];
rz(-pi/2) q[20];
rx(pi/2) q[12];
rz(pi/2) q[8];
rz(pi/2) q[23];
rx(pi) q[20];
rz(-pi/2) q[12];
rx(pi/2) q[8];
rx(pi/2) q[23];
rz(pi/2) q[20];
rz(-pi/2) q[8];
rz(-pi/2) q[23];
rx(pi/2) q[20];
cz q[5], q[8];
cz q[12], q[23];
rz(-pi/2) q[20];
rx(pi) q[8];
rx(pi) q[23];
cz q[18], q[20];
rz(pi/2) q[8];
rz(pi/2) q[23];
rx(pi) q[20];
rx(pi/2) q[8];
rx(pi/2) q[23];
rz(pi/2) q[20];
rz(-pi/2) q[8];
rz(-pi/2) q[23];
rx(pi/2) q[20];
rz(pi/4) q[23];
rz(-pi/2) q[20];
rx(pi) q[23];
rz(pi/4) q[20];
rz(pi/2) q[23];
rx(pi) q[20];
rx(pi/2) q[23];
rz(pi/2) q[20];
rz(-pi/2) q[23];
rx(pi/2) q[20];
cz q[19], q[23];
rz(-pi/2) q[20];
rx(pi) q[23];
rx(pi) q[19];
cz q[16], q[20];
rz(pi/2) q[23];
rz(pi/2) q[19];
rx(pi) q[20];
rx(pi/2) q[23];
rx(pi/2) q[19];
rz(pi/2) q[20];
rz(-pi/2) q[23];
rz(-pi/2) q[19];
rx(pi/2) q[20];
rz(-pi/4) q[23];
rz(-pi/2) q[20];
rx(pi) q[23];
rz(-pi/4) q[20];
rz(pi/2) q[23];
rx(pi) q[20];
rx(pi/2) q[23];
rz(pi/2) q[20];
rz(-pi/2) q[23];
rx(pi/2) q[20];
cz q[12], q[23];
rz(-pi/2) q[20];
rx(pi) q[23];
cz q[12], q[19];
cz q[18], q[20];
rz(pi/2) q[23];
rx(pi) q[19];
rx(pi) q[20];
rx(pi) q[18];
rx(pi/2) q[23];
rz(pi/2) q[19];
rz(pi/2) q[20];
rz(pi/2) q[18];
rz(-pi/2) q[23];
rx(pi/2) q[19];
rx(pi/2) q[20];
rx(pi/2) q[18];
rx(pi) q[23];
rz(-pi/2) q[19];
rz(-pi/2) q[20];
rz(-pi/2) q[18];
rz(pi/2) q[23];
rz(-pi/4) q[19];
rz(pi/4) q[20];
rx(pi/2) q[23];
rx(pi) q[19];
rx(pi) q[20];
rz(-pi/2) q[23];
rz(pi/2) q[19];
rz(pi/2) q[20];
rx(pi) q[23];
rx(pi/2) q[19];
rx(pi/2) q[20];
rz(-pi/2) q[19];
rz(-pi/2) q[20];
cz q[12], q[19];
cz q[16], q[20];
rz(pi/4) q[12];
rx(pi) q[19];
rx(pi) q[20];
cz q[16], q[18];
rx(pi) q[12];
rz(pi/2) q[19];
rz(pi/2) q[20];
rx(pi) q[18];
rz(pi/2) q[12];
rx(pi/2) q[19];
rx(pi/2) q[20];
rz(pi/2) q[18];
rx(pi/2) q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[20];
rx(pi/2) q[18];
rz(-pi/2) q[12];
rz(pi/4) q[19];
rz(-pi/4) q[20];
rz(-pi/2) q[18];
rx(pi) q[12];
rx(pi) q[19];
rx(pi) q[20];
rx(pi) q[18];
rz(pi/2) q[12];
rz(pi/2) q[19];
rz(pi/2) q[20];
rz(pi/2) q[18];
rx(pi/2) q[12];
rx(pi/2) q[19];
rx(pi/2) q[20];
rx(pi/2) q[18];
rz(-pi/2) q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[20];
rz(-pi/2) q[18];
cz q[8], q[12];
rx(pi) q[19];
cz q[16], q[18];
rx(pi) q[12];
rz(pi/2) q[19];
rx(pi) q[16];
rx(pi) q[18];
rz(pi/2) q[12];
rx(pi/2) q[19];
rz(pi/2) q[16];
rz(pi/2) q[18];
rx(pi/2) q[12];
rz(-pi/2) q[19];
rx(pi/2) q[16];
rx(pi/2) q[18];
rz(-pi/2) q[12];
cz q[22], q[19];
rz(-pi/2) q[16];
rz(-pi/2) q[18];
rz(pi/4) q[12];
rx(pi) q[19];
rx(pi) q[16];
rx(pi) q[12];
rz(pi/2) q[19];
rz(pi/2) q[16];
rz(pi/2) q[12];
rx(pi/2) q[19];
rx(pi/2) q[16];
rx(pi/2) q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[16];
rz(-pi/2) q[12];
rz(pi/4) q[19];
cz q[5], q[12];
rx(pi) q[19];
rx(pi) q[12];
rz(pi/2) q[19];
rz(pi/2) q[12];
rx(pi/2) q[19];
rx(pi/2) q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[12];
cz q[15], q[19];
rz(-pi/4) q[12];
rx(pi) q[19];
rx(pi) q[12];
rz(pi/2) q[19];
rz(pi/2) q[12];
rx(pi/2) q[19];
rx(pi/2) q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[12];
rz(-pi/4) q[19];
cz q[8], q[12];
rx(pi) q[19];
rx(pi) q[12];
rx(pi) q[8];
rz(pi/2) q[19];
rz(pi/2) q[12];
rz(pi/2) q[8];
rx(pi/2) q[19];
rx(pi/2) q[12];
rx(pi/2) q[8];
rz(-pi/2) q[19];
rz(-pi/2) q[12];
rz(-pi/2) q[8];
cz q[22], q[19];
rz(pi/4) q[12];
rx(pi) q[19];
rx(pi) q[22];
rx(pi) q[12];
rz(pi/2) q[19];
rz(pi/2) q[22];
rz(pi/2) q[12];
rx(pi/2) q[19];
rx(pi/2) q[22];
rx(pi/2) q[12];
rz(-pi/2) q[19];
rz(-pi/2) q[22];
rz(-pi/2) q[12];
rz(pi/4) q[19];
cz q[5], q[12];
rx(pi) q[19];
rx(pi) q[12];
cz q[5], q[8];
rz(pi/2) q[19];
rz(pi/2) q[12];
rx(pi) q[8];
rx(pi/2) q[19];
rx(pi/2) q[12];
rz(pi/2) q[8];
rz(-pi/2) q[19];
rz(-pi/2) q[12];
rx(pi/2) q[8];
cz q[15], q[19];
rz(-pi/4) q[12];
rz(-pi/2) q[8];
rx(pi) q[19];
cz q[15], q[22];
rx(pi) q[12];
rx(pi) q[8];
rz(pi/2) q[19];
rx(pi) q[22];
rz(pi/2) q[12];
rz(pi/2) q[8];
rx(pi/2) q[19];
rz(pi/2) q[22];
rx(pi/2) q[12];
rx(pi/2) q[8];
rz(-pi/2) q[19];
rx(pi/2) q[22];
rz(-pi/2) q[12];
rz(-pi/2) q[8];
rz(-pi/4) q[19];
rz(-pi/2) q[22];
cz q[11], q[12];
cz q[5], q[8];
rx(pi) q[19];
rx(pi) q[22];
rx(pi) q[12];
rx(pi) q[5];
rx(pi) q[8];
rz(pi/2) q[19];
rz(pi/2) q[22];
rz(pi/2) q[12];
rz(pi/2) q[5];
rz(pi/2) q[8];
rx(pi/2) q[19];
rx(pi/2) q[22];
rx(pi/2) q[12];
rx(pi/2) q[5];
rx(pi/2) q[8];
rz(-pi/2) q[19];
rz(-pi/2) q[22];
rz(-pi/2) q[12];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
cz q[15], q[22];
rz(pi/4) q[12];
rx(pi) q[5];
rx(pi) q[8];
rx(pi) q[15];
rx(pi) q[22];
rx(pi) q[12];
rz(pi/2) q[5];
rz(pi/2) q[8];
rz(pi/2) q[15];
rz(pi/2) q[22];
rz(pi/2) q[12];
rx(pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[15];
rx(pi/2) q[22];
rx(pi/2) q[12];
rz(-pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[15];
rz(-pi/2) q[22];
rz(-pi/2) q[12];
cz q[4], q[5];
rx(pi) q[8];
rx(pi) q[15];
rx(pi) q[22];
cz q[9], q[12];
rx(pi) q[5];
rz(pi/2) q[8];
rz(pi/2) q[15];
rz(pi/2) q[22];
rx(pi) q[12];
rz(pi/2) q[5];
rx(pi/2) q[8];
rx(pi/2) q[15];
rx(pi/2) q[22];
rz(pi/2) q[12];
rx(pi/2) q[5];
rz(-pi/2) q[8];
rz(-pi/2) q[15];
rz(-pi/2) q[22];
rx(pi/2) q[12];
rz(-pi/2) q[5];
cz q[18], q[15];
cz q[21], q[22];
rz(-pi/2) q[12];
rz(pi/4) q[5];
rx(pi) q[15];
rx(pi) q[21];
rx(pi) q[22];
rz(-pi/4) q[12];
rx(pi) q[5];
rz(pi/2) q[15];
rz(pi/2) q[22];
rx(pi) q[12];
rz(pi/2) q[5];
rx(pi/2) q[15];
rx(pi/2) q[22];
rz(pi/2) q[12];
rx(pi/2) q[5];
rz(-pi/2) q[15];
rz(-pi/2) q[22];
rx(pi/2) q[12];
rz(-pi/2) q[5];
rz(pi/4) q[15];
rz(-pi/2) q[12];
cz q[2], q[5];
rx(pi) q[15];
cz q[11], q[12];
rx(pi) q[5];
rz(pi/2) q[15];
rx(pi) q[12];
rx(pi) q[11];
rz(pi/2) q[5];
rx(pi/2) q[15];
rz(pi/2) q[12];
rz(pi/2) q[11];
rx(pi/2) q[5];
rz(-pi/2) q[15];
rx(pi/2) q[12];
rx(pi/2) q[11];
rz(-pi/2) q[5];
cz q[14], q[15];
rz(-pi/2) q[12];
rz(-pi/2) q[11];
rz(-pi/4) q[5];
rx(pi) q[15];
rz(pi/4) q[12];
rx(pi) q[5];
rz(pi/2) q[15];
rx(pi) q[12];
rz(pi/2) q[5];
rx(pi/2) q[15];
rz(pi/2) q[12];
rx(pi/2) q[5];
rz(-pi/2) q[15];
rx(pi/2) q[12];
rz(-pi/2) q[5];
rz(-pi/4) q[15];
rz(-pi/2) q[12];
cz q[4], q[5];
rx(pi) q[15];
cz q[9], q[12];
rx(pi) q[5];
rx(pi) q[4];
rz(pi/2) q[15];
rx(pi) q[12];
cz q[9], q[11];
rz(pi/2) q[5];
rz(pi/2) q[4];
rx(pi/2) q[15];
rz(pi/2) q[12];
rx(pi) q[11];
rx(pi/2) q[5];
rx(pi/2) q[4];
rz(-pi/2) q[15];
rx(pi/2) q[12];
rz(pi/2) q[11];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
cz q[18], q[15];
rz(-pi/2) q[12];
rx(pi/2) q[11];
rz(pi/4) q[5];
rx(pi) q[15];
rx(pi) q[18];
rz(-pi/4) q[12];
rz(-pi/2) q[11];
rx(pi) q[5];
rz(pi/2) q[15];
rz(pi/2) q[18];
rx(pi) q[12];
rx(pi) q[11];
rz(pi/2) q[5];
rx(pi/2) q[15];
rx(pi/2) q[18];
rz(pi/2) q[12];
rz(pi/2) q[11];
rx(pi/2) q[5];
rz(-pi/2) q[15];
rz(-pi/2) q[18];
rx(pi/2) q[12];
rx(pi/2) q[11];
rz(-pi/2) q[5];
rz(pi/4) q[15];
rz(-pi/2) q[12];
rz(-pi/2) q[11];
cz q[2], q[5];
rx(pi) q[15];
cz q[9], q[11];
rx(pi) q[5];
cz q[2], q[4];
rz(pi/2) q[15];
rx(pi) q[9];
rx(pi) q[11];
rz(pi/2) q[5];
rx(pi) q[4];
rx(pi/2) q[15];
rz(pi/2) q[9];
rz(pi/2) q[11];
rx(pi/2) q[5];
rz(pi/2) q[4];
rz(-pi/2) q[15];
rx(pi/2) q[9];
rx(pi/2) q[11];
rz(-pi/2) q[5];
rx(pi/2) q[4];
cz q[14], q[15];
rz(-pi/2) q[9];
rz(-pi/2) q[11];
rz(-pi/4) q[5];
rz(-pi/2) q[4];
rx(pi) q[15];
cz q[14], q[18];
rx(pi) q[9];
cz q[11], q[8];
rx(pi) q[5];
rx(pi) q[4];
rz(pi/2) q[15];
rx(pi) q[18];
rz(pi/2) q[9];
rx(pi) q[8];
rz(pi/2) q[5];
rz(pi/2) q[4];
rx(pi/2) q[15];
rz(pi/2) q[18];
rx(pi/2) q[9];
rz(pi/2) q[8];
rx(pi/2) q[5];
rx(pi/2) q[4];
rz(-pi/2) q[15];
rx(pi/2) q[18];
rz(-pi/2) q[9];
rx(pi/2) q[8];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rz(-pi/4) q[15];
rz(-pi/2) q[18];
rz(-pi/2) q[8];
cz q[2], q[4];
rx(pi) q[15];
rx(pi) q[18];
rz(pi/4) q[8];
rx(pi) q[2];
rx(pi) q[4];
rz(pi/2) q[15];
rz(pi/2) q[18];
rx(pi) q[8];
rz(pi/2) q[2];
rz(pi/2) q[4];
rx(pi/2) q[15];
rx(pi/2) q[18];
rz(pi/2) q[8];
rx(pi/2) q[2];
rx(pi/2) q[4];
rz(-pi/2) q[15];
rz(-pi/2) q[18];
rx(pi/2) q[8];
rz(-pi/2) q[2];
rz(-pi/2) q[4];
cz q[14], q[18];
rz(-pi/2) q[8];
rx(pi) q[2];
rx(pi) q[4];
rx(pi) q[14];
rx(pi) q[18];
cz q[7], q[8];
rz(pi/2) q[2];
rz(pi/2) q[4];
rz(pi/2) q[14];
rz(pi/2) q[18];
rx(pi) q[8];
rx(pi/2) q[2];
rx(pi/2) q[4];
rx(pi/2) q[14];
rx(pi/2) q[18];
rz(pi/2) q[8];
rz(-pi/2) q[2];
rz(-pi/2) q[4];
rz(-pi/2) q[14];
rz(-pi/2) q[18];
rx(pi/2) q[8];
cz q[1], q[2];
cz q[3], q[4];
cz q[13], q[14];
rx(pi) q[18];
rz(-pi/2) q[8];
rx(pi) q[2];
rx(pi) q[4];
rx(pi) q[14];
rz(pi/2) q[18];
rz(-pi/4) q[8];
rz(pi/2) q[2];
rz(pi/2) q[4];
rz(pi/2) q[14];
rx(pi/2) q[18];
rx(pi) q[8];
rx(pi/2) q[2];
rx(pi/2) q[4];
rx(pi/2) q[14];
rz(-pi/2) q[18];
rz(pi/2) q[8];
rz(-pi/2) q[2];
rz(-pi/2) q[4];
rz(-pi/2) q[14];
cz q[17], q[18];
rx(pi/2) q[8];
rz(pi/4) q[2];
cz q[4], q[5];
cz q[14], q[16];
rx(pi) q[18];
rz(-pi/2) q[8];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[16];
rz(pi/2) q[18];
cz q[11], q[8];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[16];
rx(pi/2) q[18];
rx(pi) q[8];
rx(pi) q[11];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[16];
rz(-pi/2) q[18];
rz(pi/2) q[8];
rz(pi/2) q[11];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[16];
cz q[18], q[20];
rx(pi/2) q[8];
rx(pi/2) q[11];
cz q[0], q[2];
rz(pi/4) q[5];
rz(pi/4) q[16];
rx(pi) q[20];
rz(-pi/2) q[8];
rz(-pi/2) q[11];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[16];
rz(pi/2) q[20];
rz(pi/4) q[8];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[16];
rx(pi/2) q[20];
rx(pi) q[8];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[16];
rz(-pi/2) q[20];
rz(pi/2) q[8];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[16];
rz(pi/4) q[20];
rx(pi/2) q[8];
rz(-pi/4) q[2];
cz q[3], q[5];
cz q[13], q[16];
rx(pi) q[20];
rz(-pi/2) q[8];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[16];
rz(pi/2) q[20];
cz q[7], q[8];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[16];
rx(pi/2) q[20];
rx(pi) q[8];
cz q[7], q[11];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[16];
rz(-pi/2) q[20];
rz(pi/2) q[8];
rx(pi) q[11];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[16];
cz q[17], q[20];
rx(pi/2) q[8];
rz(pi/2) q[11];
cz q[1], q[2];
rz(-pi/4) q[5];
rz(-pi/4) q[16];
rx(pi) q[20];
rz(-pi/2) q[8];
rx(pi/2) q[11];
rx(pi) q[2];
rx(pi) q[1];
rx(pi) q[5];
rx(pi) q[16];
rz(pi/2) q[20];
rz(-pi/4) q[8];
rz(-pi/2) q[11];
rz(pi/2) q[2];
rz(pi/2) q[1];
rz(pi/2) q[5];
rz(pi/2) q[16];
rx(pi/2) q[20];
rx(pi) q[8];
rx(pi) q[11];
rx(pi/2) q[2];
rx(pi/2) q[1];
rx(pi/2) q[5];
rx(pi/2) q[16];
rz(-pi/2) q[20];
rz(pi/2) q[8];
rz(pi/2) q[11];
rz(-pi/2) q[2];
rz(-pi/2) q[1];
rz(-pi/2) q[5];
rz(-pi/2) q[16];
rz(-pi/4) q[20];
rx(pi/2) q[8];
rx(pi/2) q[11];
rz(pi/4) q[2];
cz q[4], q[5];
cz q[14], q[16];
rx(pi) q[20];
rz(-pi/2) q[8];
rz(-pi/2) q[11];
rx(pi) q[2];
rx(pi) q[5];
rx(pi) q[4];
rx(pi) q[16];
rx(pi) q[14];
rz(pi/2) q[20];
cz q[7], q[11];
rz(pi/2) q[2];
rz(pi/2) q[5];
rz(pi/2) q[4];
rz(pi/2) q[16];
rz(pi/2) q[14];
rx(pi/2) q[20];
rx(pi) q[7];
rx(pi) q[11];
rx(pi/2) q[2];
rx(pi/2) q[5];
rx(pi/2) q[4];
rx(pi/2) q[16];
rx(pi/2) q[14];
rz(-pi/2) q[20];
rz(pi/2) q[7];
rz(pi/2) q[11];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rz(-pi/2) q[16];
rz(-pi/2) q[14];
cz q[18], q[20];
rx(pi/2) q[7];
rx(pi/2) q[11];
cz q[0], q[2];
rz(pi/4) q[5];
rz(pi/4) q[16];
rx(pi) q[20];
rx(pi) q[18];
rz(-pi/2) q[7];
rz(-pi/2) q[11];
rx(pi) q[2];
cz q[0], q[1];
rx(pi) q[5];
rx(pi) q[16];
rz(pi/2) q[20];
rz(pi/2) q[18];
cz q[6], q[7];
rx(pi) q[11];
rz(pi/2) q[2];
rx(pi) q[1];
rz(pi/2) q[5];
rz(pi/2) q[16];
rx(pi/2) q[20];
rx(pi/2) q[18];
rx(pi) q[7];
rz(pi/2) q[11];
rx(pi/2) q[2];
rz(pi/2) q[1];
rx(pi/2) q[5];
rx(pi/2) q[16];
rz(-pi/2) q[20];
rz(-pi/2) q[18];
rz(pi/2) q[7];
rx(pi/2) q[11];
rz(-pi/2) q[2];
rx(pi/2) q[1];
rz(-pi/2) q[5];
rz(-pi/2) q[16];
rz(pi/4) q[20];
rx(pi/2) q[7];
rz(-pi/2) q[11];
rz(-pi/4) q[2];
rz(-pi/2) q[1];
cz q[3], q[5];
cz q[13], q[16];
rx(pi) q[20];
rz(-pi/2) q[7];
cz q[10], q[11];
rx(pi) q[2];
rx(pi) q[1];
rx(pi) q[5];
cz q[3], q[4];
rx(pi) q[16];
cz q[13], q[14];
rz(pi/2) q[20];
cz q[7], q[9];
rx(pi) q[11];
rz(pi/2) q[2];
rz(pi/2) q[1];
rz(pi/2) q[5];
rx(pi) q[4];
rz(pi/2) q[16];
rx(pi) q[14];
rx(pi/2) q[20];
rx(pi) q[9];
rz(pi/2) q[11];
rx(pi/2) q[2];
rx(pi/2) q[1];
rx(pi/2) q[5];
rz(pi/2) q[4];
rx(pi/2) q[16];
rz(pi/2) q[14];
rz(-pi/2) q[20];
rz(pi/2) q[9];
rx(pi/2) q[11];
rz(-pi/2) q[2];
rz(-pi/2) q[1];
rz(-pi/2) q[5];
rx(pi/2) q[4];
rz(-pi/2) q[16];
rx(pi/2) q[14];
cz q[17], q[20];
rx(pi/2) q[9];
rz(-pi/2) q[11];
cz q[0], q[1];
rz(-pi/4) q[5];
rz(-pi/2) q[4];
rz(-pi/4) q[16];
rz(-pi/2) q[14];
rx(pi) q[20];
cz q[17], q[18];
rz(-pi/2) q[9];
cz q[11], q[12];
rx(pi) q[0];
rx(pi) q[1];
rx(pi) q[5];
rx(pi) q[4];
rx(pi) q[16];
rx(pi) q[14];
rz(pi/2) q[20];
rx(pi) q[18];
rz(pi/4) q[9];
rx(pi) q[12];
rz(pi/2) q[1];
rz(pi/2) q[5];
rz(pi/2) q[4];
rz(pi/2) q[16];
rz(pi/2) q[14];
rx(pi/2) q[20];
rz(pi/2) q[18];
rx(pi) q[9];
rz(pi/2) q[12];
rx(pi/2) q[1];
rx(pi/2) q[5];
rx(pi/2) q[4];
rx(pi/2) q[16];
rx(pi/2) q[14];
rz(-pi/2) q[20];
rx(pi/2) q[18];
rz(pi/2) q[9];
rx(pi/2) q[12];
rz(-pi/2) q[1];
rz(-pi/2) q[5];
rz(-pi/2) q[4];
rz(-pi/2) q[16];
rz(-pi/2) q[14];
rz(-pi/4) q[20];
rz(-pi/2) q[18];
rx(pi/2) q[9];
rz(-pi/2) q[12];
cz q[3], q[4];
cz q[13], q[14];
rx(pi) q[20];
rx(pi) q[18];
rz(-pi/2) q[9];
rz(pi/4) q[12];
rx(pi) q[3];
rx(pi) q[4];
rx(pi) q[13];
rx(pi) q[14];
rz(pi/2) q[20];
rz(pi/2) q[18];
cz q[6], q[9];
rx(pi) q[12];
rz(pi/2) q[4];
rz(pi/2) q[14];
rx(pi/2) q[20];
rx(pi/2) q[18];
rx(pi) q[9];
rz(pi/2) q[12];
rx(pi/2) q[4];
rx(pi/2) q[14];
rz(-pi/2) q[20];
rz(-pi/2) q[18];
rz(pi/2) q[9];
rx(pi/2) q[12];
rz(-pi/2) q[4];
rz(-pi/2) q[14];
cz q[17], q[18];
rx(pi/2) q[9];
rz(-pi/2) q[12];
rx(pi) q[17];
rx(pi) q[18];
rz(-pi/2) q[9];
cz q[10], q[12];
rz(pi/2) q[18];
rz(-pi/4) q[9];
rx(pi) q[12];
rx(pi/2) q[18];
rx(pi) q[9];
rz(pi/2) q[12];
rz(-pi/2) q[18];
rz(pi/2) q[9];
rx(pi/2) q[12];
rx(pi/2) q[9];
rz(-pi/2) q[12];
rz(-pi/2) q[9];
rz(-pi/4) q[12];
cz q[7], q[9];
rx(pi) q[12];
rx(pi) q[9];
rx(pi) q[7];
rz(pi/2) q[12];
rz(pi/2) q[9];
rz(pi/2) q[7];
rx(pi/2) q[12];
rx(pi/2) q[9];
rx(pi/2) q[7];
rz(-pi/2) q[12];
rz(-pi/2) q[9];
rz(-pi/2) q[7];
cz q[11], q[12];
rz(pi/4) q[9];
rx(pi) q[12];
rx(pi) q[11];
rx(pi) q[9];
rz(pi/2) q[12];
rz(pi/2) q[11];
rz(pi/2) q[9];
rx(pi/2) q[12];
rx(pi/2) q[11];
rx(pi/2) q[9];
rz(-pi/2) q[12];
rz(-pi/2) q[11];
rz(-pi/2) q[9];
rz(pi/4) q[12];
cz q[6], q[9];
rx(pi) q[12];
rx(pi) q[9];
cz q[6], q[7];
rz(pi/2) q[12];
rz(pi/2) q[9];
rx(pi) q[7];
rx(pi/2) q[12];
rx(pi/2) q[9];
rz(pi/2) q[7];
rz(-pi/2) q[12];
rz(-pi/2) q[9];
rx(pi/2) q[7];
cz q[10], q[12];
rz(-pi/4) q[9];
rz(-pi/2) q[7];
rx(pi) q[12];
cz q[10], q[11];
rx(pi) q[9];
rx(pi) q[7];
rz(pi/2) q[12];
rx(pi) q[11];
rz(pi/2) q[9];
rz(pi/2) q[7];
rx(pi/2) q[12];
rz(pi/2) q[11];
rx(pi/2) q[9];
rx(pi/2) q[7];
rz(-pi/2) q[12];
rx(pi/2) q[11];
rz(-pi/2) q[9];
rz(-pi/2) q[7];
rz(-pi/4) q[12];
rz(-pi/2) q[11];
cz q[6], q[7];
rx(pi) q[12];
rx(pi) q[11];
rx(pi) q[6];
rx(pi) q[7];
rz(pi/2) q[12];
rz(pi/2) q[11];
rz(pi/2) q[7];
rx(pi/2) q[12];
rx(pi/2) q[11];
rx(pi/2) q[7];
rz(-pi/2) q[12];
rz(-pi/2) q[11];
rz(-pi/2) q[7];
cz q[10], q[11];
rx(pi) q[10];
rx(pi) q[11];
rz(pi/2) q[11];
rx(pi/2) q[11];
rz(-pi/2) q[11];
