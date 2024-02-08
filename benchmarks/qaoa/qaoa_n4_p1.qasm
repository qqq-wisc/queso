OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
h q[1];
cx q[0],q[1];
rz(2.0) q[1];
cx q[0],q[1];
h q[2];
h q[3];
cx q[0],q[3];
rz(2.0) q[3];
cx q[0],q[3];
cx q[0],q[2];
rz(2.0) q[2];
cx q[0],q[2];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5.14159265358979) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
cx q[1],q[2];
rz(2.0) q[2];
cx q[1],q[2];
cx q[1],q[3];
rz(2.0) q[3];
cx q[1],q[3];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5.14159265358979) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
cx q[2],q[3];
rz(2.0) q[3];
cx q[2],q[3];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5.14159265358979) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5.14159265358979) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
