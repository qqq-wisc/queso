OPENQASM 2.0;
include "qelib1.inc";
qreg q[19];
ry(pi/2) q[0];
ry(pi/2) q[1];
ry(pi/2) q[2];
ry(pi/2) q[3];
ry(pi/2) q[4];
ry(pi/2) q[5];
ry(pi/2) q[6];
ry(pi/2) q[7];
ry(pi/2) q[8];
ry(pi/2) q[9];
ry(pi/2) q[10];
rx(pi) q[10];
rxx(pi/2) q[1],q[10];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[10];
rz(pi/4) q[10];
rxx(pi/2) q[1],q[10];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
rz(-pi/4) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/4) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
rz(pi/4) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[10];
ry(pi/2) q[11];
rx(pi) q[11];
rxx(pi/2) q[10],q[11];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[11];
rz(-pi/4) q[11];
rxx(pi/2) q[2],q[11];
rx(-pi/2) q[11];
rz(pi/4) q[11];
rxx(pi/2) q[10],q[11];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rx(-pi/2) q[11];
rz(-pi/4) q[11];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[11];
rx(-pi/2) q[11];
rz(pi/4) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[10];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[10];
rx(-pi/2) q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
ry(pi/2) q[12];
rx(pi) q[12];
rxx(pi/2) q[11],q[12];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[12];
rz(-pi/4) q[12];
rxx(pi/2) q[3],q[12];
rx(-pi/2) q[12];
rz(pi/4) q[12];
rxx(pi/2) q[11],q[12];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rx(-pi/2) q[12];
rz(-pi/4) q[12];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[12];
rx(-pi/2) q[12];
rz(pi/4) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
ry(pi/2) q[12];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[11];
rx(-pi/2) q[11];
rz(-pi/4) q[11];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[11];
rx(-pi/2) q[11];
rz(pi/4) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(pi/4) q[3];
ry(pi/2) q[3];
ry(pi/2) q[13];
rx(pi) q[13];
rxx(pi/2) q[12],q[13];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[12];
rx(-pi/2) q[13];
rz(-pi/4) q[13];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(pi/4) q[13];
rxx(pi/2) q[12],q[13];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
rx(-pi/2) q[13];
rz(-pi/4) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[12];
rx(-pi/2) q[12];
rz(-pi/4) q[12];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[12];
rx(-pi/2) q[12];
rz(pi/4) q[12];
ry(pi/2) q[12];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/4) q[4];
ry(pi/2) q[4];
ry(pi/2) q[14];
rx(pi) q[14];
rxx(pi/2) q[13],q[14];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[14];
rz(-pi/4) q[14];
rxx(pi/2) q[5],q[14];
rx(-pi/2) q[14];
rz(pi/4) q[14];
rxx(pi/2) q[13],q[14];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
rx(-pi/2) q[14];
rz(-pi/4) q[14];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[14];
rx(-pi/2) q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
ry(pi/2) q[14];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[13];
rx(-pi/2) q[13];
rz(-pi/4) q[13];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[13];
rx(-pi/2) q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/4) q[5];
ry(pi/2) q[5];
ry(pi/2) q[15];
rx(pi) q[15];
rxx(pi/2) q[14],q[15];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
ry(pi/2) q[14];
rx(-pi/2) q[15];
rz(-pi/4) q[15];
rxx(pi/2) q[6],q[15];
rx(-pi/2) q[15];
rz(pi/4) q[15];
rxx(pi/2) q[14],q[15];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
rx(-pi/2) q[15];
rz(-pi/4) q[15];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[15];
rx(-pi/2) q[15];
rz(pi/4) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
ry(pi/2) q[15];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[14];
rx(-pi/2) q[14];
rz(-pi/4) q[14];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[14];
rx(-pi/2) q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/4) q[6];
ry(pi/2) q[6];
ry(pi/2) q[16];
rx(pi) q[16];
rxx(pi/2) q[15],q[16];
rx(-pi/2) q[15];
ry(-pi/2) q[15];
ry(pi/2) q[15];
rx(-pi/2) q[16];
rz(-pi/4) q[16];
rxx(pi/2) q[7],q[16];
rx(-pi/2) q[16];
rz(pi/4) q[16];
rxx(pi/2) q[15],q[16];
rx(-pi/2) q[15];
ry(-pi/2) q[15];
rx(-pi/2) q[16];
rz(-pi/4) q[16];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[16];
rx(-pi/2) q[16];
rz(pi/4) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
ry(pi/2) q[16];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[15];
rx(-pi/2) q[15];
rz(-pi/4) q[15];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[15];
rx(-pi/2) q[15];
rz(pi/4) q[15];
ry(pi/2) q[15];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/4) q[7];
ry(pi/2) q[7];
ry(pi/2) q[17];
rx(pi) q[17];
rxx(pi/2) q[16],q[17];
rx(-pi/2) q[16];
ry(-pi/2) q[16];
ry(pi/2) q[16];
rx(-pi/2) q[17];
rz(-pi/4) q[17];
rxx(pi/2) q[8],q[17];
rx(-pi/2) q[17];
rz(pi/4) q[17];
rxx(pi/2) q[16],q[17];
rx(-pi/2) q[16];
ry(-pi/2) q[16];
rx(-pi/2) q[17];
rz(-pi/4) q[17];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[17];
rx(-pi/2) q[17];
rz(pi/4) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
ry(pi/2) q[17];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[16];
rx(-pi/2) q[16];
rz(-pi/4) q[16];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[16];
rx(-pi/2) q[16];
rz(pi/4) q[16];
ry(pi/2) q[16];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
rz(pi/4) q[8];
ry(pi/2) q[8];
ry(pi/2) q[18];
rx(pi) q[18];
rxx(pi/2) q[17],q[18];
rx(-pi/2) q[17];
ry(-pi/2) q[17];
ry(pi/2) q[17];
rx(-pi/2) q[18];
rz(-pi/4) q[18];
rxx(pi/2) q[9],q[18];
rx(-pi/2) q[18];
rz(pi/4) q[18];
rxx(pi/2) q[17],q[18];
rx(-pi/2) q[17];
ry(-pi/2) q[17];
rx(-pi/2) q[18];
rz(-pi/4) q[18];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[18];
rx(-pi/2) q[18];
rz(pi/4) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[17];
rx(-pi/2) q[17];
rz(-pi/4) q[17];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[17];
rx(-pi/2) q[17];
rz(pi/4) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rxx(pi/2) q[16],q[17];
rx(-pi/2) q[16];
ry(-pi/2) q[16];
ry(pi/2) q[16];
rx(-pi/2) q[17];
rz(-pi/4) q[17];
rxx(pi/2) q[8],q[17];
rx(-pi/2) q[17];
rz(pi/4) q[17];
rxx(pi/2) q[16],q[17];
rx(-pi/2) q[16];
ry(-pi/2) q[16];
rx(-pi/2) q[17];
rz(-pi/4) q[17];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[17];
rx(-pi/2) q[17];
rz(pi/4) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[16];
rx(-pi/2) q[16];
rz(-pi/4) q[16];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[16];
rx(-pi/2) q[16];
rz(pi/4) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rxx(pi/2) q[15],q[16];
rx(-pi/2) q[15];
ry(-pi/2) q[15];
ry(pi/2) q[15];
rx(-pi/2) q[16];
rz(-pi/4) q[16];
rxx(pi/2) q[7],q[16];
rx(-pi/2) q[16];
rz(pi/4) q[16];
rxx(pi/2) q[15],q[16];
rx(-pi/2) q[15];
ry(-pi/2) q[15];
rx(-pi/2) q[16];
rz(-pi/4) q[16];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[16];
rx(-pi/2) q[16];
rz(pi/4) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[15];
rx(-pi/2) q[15];
rz(-pi/4) q[15];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[15];
rx(-pi/2) q[15];
rz(pi/4) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rxx(pi/2) q[14],q[15];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
ry(pi/2) q[14];
rx(-pi/2) q[15];
rz(-pi/4) q[15];
rxx(pi/2) q[6],q[15];
rx(-pi/2) q[15];
rz(pi/4) q[15];
rxx(pi/2) q[14],q[15];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
rx(-pi/2) q[15];
rz(-pi/4) q[15];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[15];
rx(-pi/2) q[15];
rz(pi/4) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[14];
rx(-pi/2) q[14];
rz(-pi/4) q[14];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[14];
rx(-pi/2) q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rxx(pi/2) q[13],q[14];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[14];
rz(-pi/4) q[14];
rxx(pi/2) q[5],q[14];
rx(-pi/2) q[14];
rz(pi/4) q[14];
rxx(pi/2) q[13],q[14];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
rx(-pi/2) q[14];
rz(-pi/4) q[14];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[14];
rx(-pi/2) q[14];
rz(pi/4) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[13];
rx(-pi/2) q[13];
rz(-pi/4) q[13];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[13];
rx(-pi/2) q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rxx(pi/2) q[12],q[13];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[12];
rx(-pi/2) q[13];
rz(-pi/4) q[13];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(pi/4) q[13];
rxx(pi/2) q[12],q[13];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
rx(-pi/2) q[13];
rz(-pi/4) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[12];
rx(-pi/2) q[12];
rz(-pi/4) q[12];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[12];
rx(-pi/2) q[12];
rz(pi/4) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rxx(pi/2) q[11],q[12];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[12];
rz(-pi/4) q[12];
rxx(pi/2) q[3],q[12];
rx(-pi/2) q[12];
rz(pi/4) q[12];
rxx(pi/2) q[11],q[12];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rx(-pi/2) q[12];
rz(-pi/4) q[12];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[12];
rx(-pi/2) q[12];
rz(pi/4) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[11];
rx(-pi/2) q[11];
rz(-pi/4) q[11];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[11];
rx(-pi/2) q[11];
rz(pi/4) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rxx(pi/2) q[10],q[11];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[11];
rz(-pi/4) q[11];
rxx(pi/2) q[2],q[11];
rx(-pi/2) q[11];
rz(pi/4) q[11];
rxx(pi/2) q[10],q[11];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rx(-pi/2) q[11];
rz(-pi/4) q[11];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[11];
rx(-pi/2) q[11];
rz(pi/4) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[10];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[10];
rx(-pi/2) q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rxx(pi/2) q[1],q[10];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[10];
rz(pi/4) q[10];
rxx(pi/2) q[1],q[10];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
rz(-pi/4) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/4) q[0];
rx(-pi/2) q[1];
rz(pi/4) q[1];
rx(-pi/2) q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/4) q[2];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(pi/4) q[3];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/4) q[4];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/4) q[5];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/4) q[6];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/4) q[7];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
rz(pi/4) q[8];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rz(pi/4) q[9];
