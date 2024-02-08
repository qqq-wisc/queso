OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
cx q[4], q[3]; 
cx q[6], q[5]; 
cx q[8], q[7]; 
cx q[10], q[9]; 
cx q[12], q[11]; 
cx q[4], q[2]; 
rz(pi/2.0) q[2]; 
cx q[6], q[4]; 
sx q[2]; 
rz(pi/2.0) q[4]; 
cx q[8], q[6]; 
rz(pi/2.0) q[2]; 
sx q[4]; 
rz(pi/2.0) q[6]; 
cx q[10], q[8]; 
cx q[1], q[2]; 
rz(pi/2.0) q[4]; 
sx q[6]; 
rz(pi/2.0) q[8]; 
cx q[12], q[10]; 
rz(-pi/4.0) q[2]; 
cx q[3], q[4]; 
rz(pi/2.0) q[6]; 
sx q[8]; 
rz(pi/2.0) q[10]; 
cx q[12], q[13]; 
cx q[0], q[2]; 
rz(-pi/4.0) q[4]; 
cx q[5], q[6]; 
rz(pi/2.0) q[8]; 
sx q[10]; 
rz(pi/2.0) q[13]; 
rz(pi/4.0) q[2]; 
rz(-pi/4.0) q[6]; 
cx q[7], q[8]; 
rz(pi/2.0) q[10]; 
sx q[13]; 
cx q[1], q[2]; 
rz(-pi/4.0) q[8]; 
cx q[9], q[10]; 
rz(pi/2.0) q[13]; 
rz(-pi/4.0) q[2]; 
rz(-pi/4.0) q[10]; 
cx q[11], q[13]; 
cx q[0], q[2]; 
rz(-pi/4.0) q[13]; 
cx q[0], q[1]; 
rz(pi/4.0) q[2]; 
rz(-pi/4.0) q[1]; 
rz(pi/2.0) q[2]; 
cx q[0], q[1]; 
sx q[2]; 
rz(pi/4.0) q[0]; 
rz(pi/4.0) q[1]; 
rz(pi/2.0) q[2]; 
cx q[2], q[4]; 
rz(pi/4.0) q[4]; 
cx q[3], q[4]; 
rz(-pi/4.0) q[4]; 
cx q[2], q[4]; 
cx q[2], q[3]; 
rz(pi/4.0) q[4]; 
rz(-pi/4.0) q[3]; 
rz(pi/2.0) q[4]; 
cx q[2], q[3]; 
sx q[4]; 
rz(pi/4.0) q[2]; 
rz(pi/4.0) q[3]; 
rz(pi/2.0) q[4]; 
x q[3]; 
cx q[4], q[6]; 
cx q[2], q[3]; 
rz(pi/4.0) q[6]; 
cx q[5], q[6]; 
rz(-pi/4.0) q[6]; 
cx q[4], q[6]; 
cx q[4], q[5]; 
rz(pi/4.0) q[6]; 
rz(-pi/4.0) q[5]; 
rz(pi/2.0) q[6]; 
cx q[4], q[5]; 
sx q[6]; 
rz(pi/4.0) q[4]; 
rz(pi/4.0) q[5]; 
rz(pi/2.0) q[6]; 
x q[5]; 
cx q[6], q[8]; 
cx q[4], q[5]; 
rz(pi/4.0) q[8]; 
cx q[7], q[8]; 
rz(-pi/4.0) q[8]; 
cx q[6], q[8]; 
cx q[6], q[7]; 
rz(pi/4.0) q[8]; 
rz(-pi/4.0) q[7]; 
rz(pi/2.0) q[8]; 
cx q[6], q[7]; 
sx q[8]; 
rz(pi/4.0) q[6]; 
rz(pi/4.0) q[7]; 
rz(pi/2.0) q[8]; 
x q[7]; 
cx q[8], q[10]; 
cx q[6], q[7]; 
rz(pi/4.0) q[10]; 
cx q[9], q[10]; 
rz(-pi/4.0) q[10]; 
cx q[8], q[10]; 
rz(pi/4.0) q[10]; 
cx q[8], q[9]; 
rz(pi/2.0) q[10]; 
rz(-pi/4.0) q[9]; 
sx q[10]; 
cx q[8], q[9]; 
rz(pi/2.0) q[10]; 
rz(pi/4.0) q[8]; 
rz(pi/4.0) q[9]; 
cx q[10], q[13]; 
x q[9]; 
rz(pi/4.0) q[13]; 
cx q[8], q[9]; 
cx q[11], q[13]; 
rz(-pi/4.0) q[13]; 
cx q[10], q[13]; 
cx q[10], q[11]; 
rz(pi/4.0) q[13]; 
rz(-pi/4.0) q[11]; 
rz(pi/2.0) q[13]; 
cx q[10], q[11]; 
sx q[13]; 
rz(pi/4.0) q[10]; 
rz(pi/4.0) q[11]; 
rz(pi/2.0) q[13]; 
cx q[10], q[11]; 
rz(pi/2.0) q[10]; 
sx q[10]; 
rz(pi/2.0) q[10]; 
cx q[9], q[10]; 
rz(-pi/4.0) q[10]; 
cx q[8], q[10]; 
rz(pi/4.0) q[10]; 
cx q[9], q[10]; 
rz(-pi/4.0) q[10]; 
cx q[8], q[10]; 
rz(pi/4.0) q[10]; 
cx q[8], q[9]; 
rz(pi/2.0) q[10]; 
rz(-pi/4.0) q[9]; 
sx q[10]; 
cx q[8], q[9]; 
rz(pi/2.0) q[10]; 
rz(pi/4.0) q[8]; 
rz(pi/4.0) q[9]; 
cx q[12], q[10]; 
rz(pi/2.0) q[8]; 
x q[9]; 
cx q[12], q[11]; 
sx q[8]; 
rz(pi/2.0) q[8]; 
cx q[7], q[8]; 
rz(-pi/4.0) q[8]; 
cx q[6], q[8]; 
rz(pi/4.0) q[8]; 
cx q[7], q[8]; 
rz(-pi/4.0) q[8]; 
cx q[6], q[8]; 
cx q[6], q[7]; 
rz(pi/4.0) q[8]; 
rz(-pi/4.0) q[7]; 
rz(pi/2.0) q[8]; 
cx q[6], q[7]; 
sx q[8]; 
rz(pi/4.0) q[6]; 
rz(pi/4.0) q[7]; 
rz(pi/2.0) q[8]; 
rz(pi/2.0) q[6]; 
x q[7]; 
cx q[10], q[8]; 
sx q[6]; 
cx q[10], q[9]; 
rz(pi/2.0) q[6]; 
cx q[5], q[6]; 
rz(-pi/4.0) q[6]; 
cx q[4], q[6]; 
rz(pi/4.0) q[6]; 
cx q[5], q[6]; 
rz(-pi/4.0) q[6]; 
cx q[4], q[6]; 
cx q[4], q[5]; 
rz(pi/4.0) q[6]; 
rz(-pi/4.0) q[5]; 
rz(pi/2.0) q[6]; 
cx q[4], q[5]; 
sx q[6]; 
rz(pi/4.0) q[4]; 
rz(pi/4.0) q[5]; 
rz(pi/2.0) q[6]; 
rz(pi/2.0) q[4]; 
x q[5]; 
cx q[8], q[6]; 
sx q[4]; 
cx q[8], q[7]; 
rz(pi/2.0) q[4]; 
cx q[3], q[4]; 
rz(-pi/4.0) q[4]; 
cx q[2], q[4]; 
rz(pi/4.0) q[4]; 
cx q[3], q[4]; 
rz(-pi/4.0) q[4]; 
cx q[2], q[4]; 
cx q[2], q[3]; 
rz(pi/4.0) q[4]; 
rz(-pi/4.0) q[3]; 
rz(pi/2.0) q[4]; 
cx q[2], q[3]; 
sx q[4]; 
rz(pi/4.0) q[2]; 
rz(pi/4.0) q[3]; 
rz(pi/2.0) q[4]; 
rz(pi/2.0) q[2]; 
x q[3]; 
cx q[6], q[4]; 
sx q[2]; 
cx q[6], q[5]; 
rz(pi/2.0) q[2]; 
cx q[1], q[2]; 
rz(-pi/4.0) q[2]; 
cx q[0], q[2]; 
rz(pi/4.0) q[2]; 
cx q[1], q[2]; 
rz(-pi/4.0) q[2]; 
cx q[0], q[2]; 
cx q[0], q[1]; 
rz(pi/4.0) q[2]; 
rz(-pi/4.0) q[1]; 
rz(pi/2.0) q[2]; 
cx q[0], q[1]; 
sx q[2]; 
rz(pi/4.0) q[0]; 
rz(pi/4.0) q[1]; 
rz(pi/2.0) q[2]; 
cx q[1], q[0]; 
cx q[4], q[2]; 
cx q[4], q[3]; 
