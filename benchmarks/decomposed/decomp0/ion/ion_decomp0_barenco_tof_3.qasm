OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
ry(pi/2) q[0];
ry(pi/2) q[1];
ry(pi/2) q[2];
ry(pi/2) q[3];
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
ry(pi/2) q[3];
rx(pi) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rz(-pi/4) q[3];
rxx(pi/2) q[0],q[3];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
rz(pi/4) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rx(-pi/2) q[3];
rz(-pi/4) q[3];
rxx(pi/2) q[0],q[3];
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
rx(-pi/2) q[3];
rz(pi/4) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
rz(pi/4) q[4];
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
rx(-pi/2) q[3];
rz(pi/4) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rz(-pi/4) q[3];
rxx(pi/2) q[0],q[3];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
rz(pi/4) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rx(-pi/2) q[3];
rz(-pi/4) q[3];
rxx(pi/2) q[0],q[3];
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
rx(-pi/2) q[3];
rz(pi/4) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rx(-pi/2) q[4];
rz(pi/4) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
