OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[4];
rx(pi) q[4];
ry(pi/2) q[4];
ry(pi/2) q[5];
rx(pi) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rz(2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
ry(pi/2) q[5];
ry(pi/2) q[6];
rx(pi) q[6];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[6];
rz(2) q[6];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rz(2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[6];
ry(pi/2) q[6];
ry(pi/2) q[7];
rx(pi) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rz(2) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[0];
rx(-pi/2) q[0];
rz(2) q[0];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5.1415927) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
rx(-pi/2) q[7];
ry(pi/2) q[8];
rx(pi) q[8];
ry(pi/2) q[9];
rx(pi) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[9];
rz(2) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
rz(2) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5.1415927) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rx(-pi/2) q[9];
ry(pi/2) q[9];
ry(pi/2) q[10];
rx(pi) q[10];
rxx(pi/2) q[4],q[10];
rx(-pi/2) q[10];
rz(2) q[10];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[10];
rx(-pi/2) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[10];
rz(2) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5.1415927) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rx(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
ry(pi/2) q[11];
rx(pi) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rz(2) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5.1415927) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rxx(pi/2) q[5],q[11];
rx(-pi/2) q[11];
rz(2) q[11];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[11];
rx(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[6];
rz(2) q[6];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rz(2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5.1415927) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
rx(-pi/2) q[8];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5.1415927) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
rx(-pi/2) q[8];
ry(pi/2) q[12];
rx(pi) q[12];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[2];
rx(-pi/2) q[2];
rz(2) q[2];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[2];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[7];
rz(2) q[7];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[12];
rx(-pi/2) q[12];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5.1415927) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rx(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[12];
rx(-pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5.1415927) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5.1415927) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rz(2) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[0];
rx(-pi/2) q[0];
rz(2) q[0];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5.1415927) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
rx(-pi/2) q[7];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5.1415927) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[9];
rz(2) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
rz(2) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5.1415927) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rx(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[2];
rx(-pi/2) q[2];
rz(2) q[2];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[2];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[7];
rz(2) q[7];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[12];
rx(-pi/2) q[12];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5.1415927) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rx(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[12];
rx(-pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5.1415927) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5.1415927) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5.1415927) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
ry(pi/2) q[13];
rx(pi) q[13];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[13];
rz(2) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5.1415927) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rz(2) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5.1415927) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rx(-pi/2) q[13];
ry(pi/2) q[13];
rxx(pi/2) q[13],q[8];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5.1415927) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rz(2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[10];
rx(-pi/2) q[10];
rz(2) q[10];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[10];
rx(-pi/2) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[10];
rz(2) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5.1415927) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rx(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[11];
rx(-pi/2) q[11];
rz(2) q[11];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[11];
rx(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[6];
rz(2) q[6];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rz(2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rz(2) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[0];
rx(-pi/2) q[0];
rz(2) q[0];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5.1415927) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
rx(-pi/2) q[7];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[13],q[8];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
rz(pi/2) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.1415927) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5*pi/2) q[13];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[13];
rz(2) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5.1415927) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rz(2) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5.1415927) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rx(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5.1415927) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[6];
rz(2) q[6];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5.1415927) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5*pi/2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5.1415927) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rz(2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[11];
rx(-pi/2) q[11];
rz(2) q[11];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[11];
rx(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[8];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5.1415927) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
rxx(pi/2) q[4],q[10];
rx(-pi/2) q[10];
rz(2) q[10];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[10];
rx(-pi/2) q[10];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[8];
rxx(pi/2) q[13],q[8];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[13],q[8];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
rz(pi/2) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.1415927) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5*pi/2) q[13];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[13];
rz(2) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5.1415927) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
rx(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5.1415927) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5.1415927) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5*pi/2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5.1415927) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rz(2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[8];
rx(-pi/2) q[9];
rz(2) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
rz(2) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
ry(pi/2) q[0];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[10];
rz(2) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5.1415927) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rx(-pi/2) q[10];
ry(pi/2) q[10];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5.1415927) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rz(2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rz(2) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5.1415927) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rx(-pi/2) q[11];
rx(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[5],q[11];
rx(-pi/2) q[11];
rz(2) q[11];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[11];
rx(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5.1415927) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
rxx(pi/2) q[4],q[10];
rx(-pi/2) q[10];
rz(2) q[10];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[10];
rx(-pi/2) q[10];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[8];
rxx(pi/2) q[13],q[8];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[13],q[8];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
rz(pi/2) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.1415927) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5*pi/2) q[13];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
ry(pi/2) q[11];
rx(-pi/2) q[13];
rz(2) q[13];
rxx(pi/2) q[11],q[13];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5.1415927) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
rx(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5.1415927) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
rx(-pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5.1415927) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5*pi/2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5.1415927) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
rx(-pi/2) q[8];
rx(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[2];
rx(-pi/2) q[2];
rz(2) q[2];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[2];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[7];
rz(2) q[7];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[12];
rx(-pi/2) q[12];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5.1415927) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rx(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[12];
rx(-pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5.1415927) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5.1415927) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rz(2) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[0];
rx(-pi/2) q[0];
rz(2) q[0];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[0];
rx(-pi/2) q[0];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5.1415927) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
rx(-pi/2) q[7];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5.1415927) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[9];
rz(2) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
rz(2) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
ry(pi/2) q[0];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[10];
rz(2) q[10];
rxx(pi/2) q[0],q[10];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5.1415927) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rx(-pi/2) q[10];
ry(pi/2) q[10];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5.1415927) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[10],q[8];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5.1415927) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
rx(-pi/2) q[8];
rxx(pi/2) q[13],q[8];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/2) q[8];
rz(2) q[8];
rxx(pi/2) q[13],q[8];
rx(-pi/2) q[13];
ry(-pi/2) q[13];
rz(pi/2) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.1415927) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5*pi/2) q[13];
rx(-pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5.1415927) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5*pi/2) q[8];
rx(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[2];
rx(-pi/2) q[2];
rz(2) q[2];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[2];
rx(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[7];
rz(2) q[7];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[12];
rx(-pi/2) q[12];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5.1415927) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rx(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[12];
rx(-pi/2) q[12];
rz(2) q[12];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[12];
rx(-pi/2) q[12];
rz(pi/2) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5.1415927) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5.1415927) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5.1415927) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
