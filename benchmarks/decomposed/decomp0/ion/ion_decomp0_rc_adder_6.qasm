OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
ry(pi/2) q[0];
ry(pi/2) q[1];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[3];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[2];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
rz(-pi/4) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
rz(pi/4) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rx(-pi/2) q[2];
rz(-pi/4) q[2];
rxx(pi/2) q[0],q[2];
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
rx(-pi/2) q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[5];
rx(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[4];
rx(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
rz(-pi/4) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[4];
rz(pi/4) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rx(-pi/2) q[4];
rz(-pi/4) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
rz(-pi/4) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
rz(pi/4) q[3];
rx(pi) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
rz(pi/4) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[7];
rx(-pi/2) q[7];
ry(pi/2) q[7];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[6];
rx(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rxx(pi/2) q[5],q[6];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[6];
rz(-pi/4) q[6];
rxx(pi/2) q[4],q[6];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[6];
rz(pi/4) q[6];
rxx(pi/2) q[5],q[6];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rx(-pi/2) q[6];
rz(-pi/4) q[6];
rxx(pi/2) q[4],q[6];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rz(-pi/4) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/4) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rz(pi/4) q[5];
rx(pi) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[6];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[10];
rxx(pi/2) q[10],q[9];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rx(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rxx(pi/2) q[7],q[8];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rx(-pi/2) q[8];
rz(-pi/4) q[8];
rxx(pi/2) q[6],q[8];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[8];
rz(pi/4) q[8];
rxx(pi/2) q[7],q[8];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rx(-pi/2) q[8];
rz(-pi/4) q[8];
rxx(pi/2) q[6],q[8];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rz(-pi/4) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rz(pi/4) q[7];
rx(pi) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
ry(pi/2) q[7];
rx(-pi/2) q[8];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
ry(pi/2) q[9];
ry(pi/2) q[12];
rxx(pi/2) q[12],q[11];
rx(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[12];
rxx(pi/2) q[12],q[10];
rx(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[12];
rxx(pi/2) q[9],q[10];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rxx(pi/2) q[8],q[10];
rx(-pi/2) q[10];
rz(pi/4) q[10];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[10];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rxx(pi/2) q[8],q[10];
rx(-pi/2) q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rxx(pi/2) q[8],q[9];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
rz(-pi/4) q[9];
rxx(pi/2) q[8],q[9];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
rz(pi/4) q[9];
rx(pi) q[9];
rxx(pi/2) q[8],q[9];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[12],q[13];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[12];
rx(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[13];
rz(-pi/4) q[13];
rxx(pi/2) q[10],q[13];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[13];
rz(pi/4) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rx(-pi/2) q[13];
rz(-pi/4) q[13];
rxx(pi/2) q[10],q[13];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rxx(pi/2) q[10],q[11];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[11];
rz(-pi/4) q[11];
rxx(pi/2) q[10],q[11];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[11];
rz(pi/4) q[11];
rxx(pi/2) q[10],q[11];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rx(-pi/2) q[11];
rx(-pi/2) q[13];
rz(pi/4) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rxx(pi/2) q[9],q[10];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rxx(pi/2) q[8],q[10];
rx(-pi/2) q[10];
rz(pi/4) q[10];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[10];
rx(-pi/2) q[10];
rz(-pi/4) q[10];
rxx(pi/2) q[8],q[10];
rx(-pi/2) q[10];
rz(pi/4) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rxx(pi/2) q[12],q[10];
rx(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[12];
rxx(pi/2) q[12],q[11];
rx(-pi/2) q[11];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rxx(pi/2) q[8],q[9];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
rz(-pi/4) q[9];
rxx(pi/2) q[8],q[9];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rxx(pi/2) q[7],q[8];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rx(-pi/2) q[8];
rz(-pi/4) q[8];
rxx(pi/2) q[6],q[8];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[8];
rz(pi/4) q[8];
rxx(pi/2) q[7],q[8];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rx(-pi/2) q[8];
rz(-pi/4) q[8];
rxx(pi/2) q[6],q[8];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rz(-pi/4) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rxx(pi/2) q[5],q[6];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[6];
rz(-pi/4) q[6];
rxx(pi/2) q[4],q[6];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[6];
rz(pi/4) q[6];
rxx(pi/2) q[5],q[6];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rx(-pi/2) q[6];
rz(-pi/4) q[6];
rxx(pi/2) q[4],q[6];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rz(-pi/4) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/4) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
rz(-pi/4) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[4];
rz(pi/4) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rx(-pi/2) q[4];
rz(-pi/4) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
rz(-pi/4) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
rz(-pi/4) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
rz(pi/4) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rx(-pi/2) q[2];
rz(-pi/4) q[2];
rxx(pi/2) q[0],q[2];
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
ry(pi/2) q[1];
rxx(pi/2) q[1],q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rx(-pi/2) q[2];
rz(pi/4) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rx(-pi/2) q[3];
rz(pi/4) q[3];
rx(pi) q[3];
rx(-pi/2) q[4];
rz(pi/4) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rx(-pi/2) q[5];
rz(pi/4) q[5];
rx(pi) q[5];
rx(-pi/2) q[6];
rz(pi/4) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rx(-pi/2) q[7];
rz(pi/4) q[7];
rx(pi) q[7];
rx(-pi/2) q[8];
rz(pi/4) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[6];
rx(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[4];
rx(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[2];
rx(-pi/2) q[2];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[3];
rx(-pi/2) q[3];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[5];
rx(-pi/2) q[5];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[8],q[7];
rx(-pi/2) q[7];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
rx(-pi/2) q[9];
rz(pi/4) q[9];
rx(pi) q[9];
rxx(pi/2) q[10],q[9];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rx(-pi/2) q[9];
