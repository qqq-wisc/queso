OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[11];
u2(0,pi) q[4];
u2(0,pi) q[6];
u2(0,pi) q[9];
u2(0,pi) q[8];
u2(0,pi) q[2];
u3(pi,0,-pi) q[5];
cx q[3], q[4];
cx q[7], q[9];
cx q[5], q[6];
u1(-pi/4) q[4];
u1(-pi/4) q[9];
u1(-pi/4) q[6];
cx q[1], q[4];
u1(pi/4) q[4];
cx q[3], q[4];
u1(-pi/4) q[4];
cx q[1], q[4];
cx q[1], q[3];
u1(pi/4) q[4];
cx q[1], q[3];
u2(0,pi) q[4];
u3(pi,0,-pi) q[4];
cx q[4], q[6];
u1(pi/4) q[6];
cx q[5], q[6];
u1(-pi/4) q[6];
cx q[4], q[6];
cx q[4], q[5];
u1(pi/4) q[6];
u1(-pi/4) q[5];
u2(0,pi) q[6];
cx q[4], q[5];
u3(pi,0,-pi) q[6];
u1(pi/4) q[4];
u1(pi/4) q[5];
cx q[6], q[9];
u3(pi,0,-pi) q[4];
u3(pi,0,-pi) q[5];
u1(pi/4) q[9];
u3(pi,0,-pi) q[4];
u3(pi,0,-pi) q[5];
cx q[7], q[9];
u1(-pi/4) q[9];
cx q[6], q[9];
cx q[6], q[7];
u1(pi/4) q[9];
u1(-pi/4) q[7];
u2(0,pi) q[9];
cx q[6], q[7];
cx q[9], q[8];
u1(pi/4) q[6];
u1(pi/4) q[7];
u1(-pi/4) q[8];
u3(pi,0,-pi) q[6];
u2(0,pi) q[7];
cx q[10], q[8];
u2(0,pi) q[6];
u1(pi/4) q[8];
cx q[5], q[6];
cx q[9], q[8];
u1(-pi/4) q[6];
u1(-pi/4) q[8];
cx q[4], q[6];
cx q[10], q[8];
u1(pi/4) q[6];
cx q[10], q[9];
u1(pi/4) q[8];
cx q[5], q[6];
cx q[10], q[9];
u2(0,pi) q[8];
u1(-pi/4) q[6];
cx q[8], q[0];
cx q[4], q[6];
cx q[4], q[5];
u1(-pi/4) q[5];
cx q[4], q[5];
u1(pi/4) q[4];
u1(pi/4) q[5];
u3(pi,0,-pi) q[4];
u3(pi,0,-pi) q[5];
u2(0,pi) q[4];
cx q[3], q[4];
cx q[1], q[4];
u1(-pi/4) q[4];
cx q[3], q[4];
u1(pi/4) q[4];
cx q[1], q[4];
cx q[1], q[3];
cx q[1], q[3];
cx q[8], q[1];
cx q[3], q[4];
cx q[8], q[5];
cx q[1], q[2];
cx q[5], q[6];
cx q[8], q[7];
u1(-pi/4) q[2];
u1(pi/4) q[6];
u1(-pi/4) q[7];
cx q[0], q[2];
u1(pi/4) q[2];
cx q[1], q[2];
u1(-pi/4) q[2];
cx q[0], q[2];
cx q[0], q[1];
u1(pi/4) q[2];
cx q[0], q[1];
u2(0,pi) q[2];
u3(pi,0,-pi) q[2];
cx q[2], q[4];
u1(pi/4) q[4];
cx q[3], q[4];
u1(-pi/4) q[4];
cx q[2], q[4];
u2(0,pi) q[4];
cx q[2], q[3];
u3(pi,0,-pi) q[4];
u1(-pi/4) q[3];
cx q[4], q[6];
cx q[2], q[3];
u1(-pi/4) q[6];
u1(pi/4) q[2];
cx q[5], q[6];
u3(pi,0,-pi) q[2];
u1(pi/4) q[6];
u3(pi,0,-pi) q[2];
cx q[4], q[6];
u2(0,pi) q[6];
cx q[4], q[5];
u3(pi,0,-pi) q[6];
u1(pi/4) q[5];
cx q[6], q[7];
cx q[4], q[5];
u1(pi/4) q[7];
u1(-pi/4) q[4];
cx q[8], q[7];
u3(pi,0,-pi) q[4];
u1(-pi/4) q[7];
u3(pi,0,-pi) q[4];
cx q[6], q[7];
cx q[6], q[8];
u1(pi/4) q[7];
u1(-pi/4) q[8];
u2(0,pi) q[7];
cx q[6], q[8];
u1(pi/4) q[6];
u3(pi,0,-pi) q[6];
u2(0,pi) q[6];
cx q[5], q[6];
u1(-pi/4) q[6];
cx q[4], q[6];
u1(pi/4) q[6];
cx q[5], q[6];
u1(-pi/4) q[6];
cx q[4], q[6];
cx q[4], q[5];
u1(pi/4) q[6];
u1(-pi/4) q[5];
u2(0,pi) q[6];
cx q[4], q[5];
u2(0,pi) q[5];
u1(pi/4) q[4];
cx q[8], q[5];
u3(pi,0,-pi) q[4];
u1(pi/4) q[5];
cx q[4], q[5];
u1(-pi/4) q[5];
cx q[8], q[5];
u1(pi/4) q[5];
cx q[4], q[5];
cx q[4], q[8];
u1(-pi/4) q[5];
u1(pi/4) q[8];
u2(0,pi) q[5];
cx q[4], q[8];
u1(-pi/4) q[4];
u2(0,pi) q[4];
cx q[3], q[4];
u1(pi/4) q[4];
cx q[2], q[4];
u1(-pi/4) q[4];
cx q[3], q[4];
u1(pi/4) q[4];
cx q[2], q[4];
cx q[2], q[3];
u1(-pi/4) q[4];
u1(pi/4) q[3];
u2(0,pi) q[4];
cx q[2], q[3];
u2(0,pi) q[3];
u1(-pi/4) q[2];
cx q[8], q[3];
u3(pi,0,-pi) q[2];
u1(-pi/4) q[3];
u3(pi,0,-pi) q[2];
cx q[2], q[3];
u1(pi/4) q[3];
cx q[8], q[3];
u1(-pi/4) q[3];
cx q[2], q[3];
cx q[2], q[8];
u1(pi/4) q[3];
u1(-pi/4) q[8];
u2(0,pi) q[3];
cx q[2], q[8];
u1(pi/4) q[2];
u3(pi,0,-pi) q[2];
u2(0,pi) q[2];
cx q[1], q[2];
u1(pi/4) q[2];
cx q[0], q[2];
u1(-pi/4) q[2];
cx q[1], q[2];
u1(pi/4) q[2];
cx q[0], q[2];
cx q[0], q[1];
u1(-pi/4) q[2];
cx q[0], q[1];
u2(0,pi) q[2];
u2(0,pi) q[1];
u3(pi,0,-pi) q[0];
cx q[8], q[1];
u1(pi/4) q[1];
cx q[0], q[1];
u1(-pi/4) q[1];
cx q[8], q[1];
u1(pi/4) q[1];
cx q[0], q[1];
cx q[0], q[8];
u1(-pi/4) q[1];
u1(pi/4) q[8];
u2(0,pi) q[1];
cx q[0], q[8];
u2(0,pi) q[8];
u1(-pi/4) q[0];
cx q[9], q[8];
u3(pi,0,-pi) q[0];
u1(pi/4) q[8];
cx q[10], q[8];
u1(-pi/4) q[8];
cx q[9], q[8];
u1(pi/4) q[8];
cx q[10], q[8];
cx q[10], q[9];
u1(-pi/4) q[8];
cx q[10], q[9];
u2(0,pi) q[8];
