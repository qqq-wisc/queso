OPENQASM 2.0];
include "q[elib1.inc"];
q[reg q[8];
u2(0,pi) q[0];
u2(0,pi) q[1];
u2(0,pi) q[2];
u2(0,pi) q[3];
u2(0,pi) q[4];
u2(0,pi) q[5];
u2(0,pi) q[6];
u2(0,pi) q[7];
cx q[0], q[7];
u1(2) q[7];
cx q[0], q[7];
cx q[0], q[4];
cx q[7], q[5];
u1(2) q[4];
u1(2) q[5];
cx q[0], q[4];
cx q[7], q[5];
cx q[0], q[2];
cx q[7], q[6];
u1(2) q[2];
u1(2) q[6];
cx q[0], q[2];
cx q[7], q[6];
cx q[2], q[4];
u1(pi/2) q[0];
u1(pi/2) q[7];
u1(2) q[4];
u1(-pi/2) q[0];
u1(-pi/2) q[7];
cx q[2], q[4];
u2(0,pi) q[0];
u2(0,pi) q[7];
cx q[2], q[3];
cx q[4], q[1];
u1(-pi/2) q[0];
u1(-pi/2) q[7];
u1(2) q[3];
u1(2) q[1];
u1(5.1415927) q[0];
u1(5.1415927) q[7];
cx q[2], q[3];
cx q[4], q[1];
u1(-pi/2) q[0];
u1(-pi/2) q[7];
u1(pi/2) q[2];
cx q[1], q[5];
u1(pi/2) q[4];
u2(0,pi) q[0];
u2(0,pi) q[7];
u1(-pi/2) q[2];
u1(2) q[5];
u1(-pi/2) q[4];
u1(-pi/2) q[0];
u1(-pi/2) q[7];
u2(0,pi) q[2];
cx q[1], q[5];
u2(0,pi) q[4];
u1(7.8539816) q[0];
u1(7.8539816) q[7];
u1(-pi/2) q[2];
cx q[1], q[3];
cx q[5], q[6];
u1(-pi/2) q[4];
cx q[0], q[7];
u1(5.1415927) q[2];
u1(2) q[3];
u1(2) q[6];
u1(5.1415927) q[4];
u1(2) q[7];
u1(-pi/2) q[2];
cx q[1], q[3];
cx q[5], q[6];
u1(-pi/2) q[4];
cx q[0], q[7];
u2(0,pi) q[2];
u1(pi/2) q[1];
u1(pi/2) q[5];
cx q[3], q[6];
u2(0,pi) q[4];
u1(-pi/2) q[2];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(2) q[6];
u1(-pi/2) q[4];
u1(7.8539816) q[2];
u2(0,pi) q[1];
u2(0,pi) q[5];
cx q[3], q[6];
u1(7.8539816) q[4];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(pi/2) q[3];
u1(pi/2) q[6];
cx q[0], q[4];
u1(5.1415927) q[1];
u1(5.1415927) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u1(2) q[4];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u2(0,pi) q[3];
u2(0,pi) q[6];
cx q[0], q[4];
u2(0,pi) q[1];
u2(0,pi) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
cx q[0], q[2];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(5.1415927) q[3];
u1(5.1415927) q[6];
u1(2) q[2];
u1(7.8539816) q[1];
u1(7.8539816) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
cx q[0], q[2];
cx q[7], q[5];
u2(0,pi) q[3];
u2(0,pi) q[6];
u1(pi/2) q[0];
cx q[2], q[4];
u1(2) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u1(-pi/2) q[0];
u1(2) q[4];
cx q[7], q[5];
u1(7.8539816) q[3];
u1(7.8539816) q[6];
u2(0,pi) q[0];
cx q[2], q[4];
cx q[7], q[6];
u1(-pi/2) q[0];
cx q[2], q[3];
cx q[4], q[1];
u1(2) q[6];
u1(5.1415927) q[0];
u1(2) q[3];
u1(2) q[1];
cx q[7], q[6];
u1(-pi/2) q[0];
cx q[2], q[3];
cx q[4], q[1];
u1(pi/2) q[7];
u2(0,pi) q[0];
u1(pi/2) q[2];
u1(pi/2) q[4];
cx q[1], q[5];
u1(-pi/2) q[7];
u1(-pi/2) q[0];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
u1(2) q[5];
u2(0,pi) q[7];
u1(7.8539816) q[0];
u2(0,pi) q[2];
u2(0,pi) q[4];
cx q[1], q[5];
u1(-pi/2) q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
cx q[1], q[3];
cx q[5], q[6];
u1(5.1415927) q[7];
u1(5.1415927) q[2];
u1(5.1415927) q[4];
u1(2) q[3];
u1(2) q[6];
u1(-pi/2) q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
cx q[1], q[3];
cx q[5], q[6];
u2(0,pi) q[7];
u2(0,pi) q[2];
u2(0,pi) q[4];
u1(pi/2) q[1];
u1(pi/2) q[5];
cx q[3], q[6];
u1(-pi/2) q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(2) q[6];
u1(7.8539816) q[7];
u1(7.8539816) q[2];
u1(7.8539816) q[4];
u2(0,pi) q[1];
u2(0,pi) q[5];
cx q[3], q[6];
cx q[0], q[7];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(pi/2) q[3];
u1(pi/2) q[6];
u1(2) q[7];
u1(5.1415927) q[1];
u1(5.1415927) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
cx q[0], q[7];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u2(0,pi) q[3];
u2(0,pi) q[6];
cx q[0], q[4];
u2(0,pi) q[1];
u2(0,pi) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u1(2) q[4];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(5.1415927) q[3];
u1(5.1415927) q[6];
cx q[0], q[4];
u1(7.8539816) q[1];
u1(7.8539816) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
cx q[0], q[2];
cx q[7], q[5];
u2(0,pi) q[3];
u2(0,pi) q[6];
u1(2) q[2];
u1(2) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
cx q[0], q[2];
cx q[7], q[5];
u1(7.8539816) q[3];
u1(7.8539816) q[6];
u1(pi/2) q[0];
cx q[2], q[4];
cx q[7], q[6];
u1(-pi/2) q[0];
u1(2) q[4];
u1(2) q[6];
u2(0,pi) q[0];
cx q[2], q[4];
cx q[7], q[6];
u1(-pi/2) q[0];
cx q[2], q[3];
cx q[4], q[1];
u1(pi/2) q[7];
u1(5.1415927) q[0];
u1(2) q[3];
u1(2) q[1];
u1(-pi/2) q[7];
u1(-pi/2) q[0];
cx q[2], q[3];
cx q[4], q[1];
u2(0,pi) q[7];
u2(0,pi) q[0];
u1(pi/2) q[2];
u1(pi/2) q[4];
cx q[1], q[5];
u1(-pi/2) q[7];
u1(-pi/2) q[0];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
u1(2) q[5];
u1(5.1415927) q[7];
u1(7.8539816) q[0];
u2(0,pi) q[2];
u2(0,pi) q[4];
cx q[1], q[5];
u1(-pi/2) q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
cx q[1], q[3];
cx q[5], q[6];
u2(0,pi) q[7];
u1(5.1415927) q[2];
u1(5.1415927) q[4];
u1(2) q[3];
u1(2) q[6];
u1(-pi/2) q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
cx q[1], q[3];
cx q[5], q[6];
u1(7.8539816) q[7];
u2(0,pi) q[2];
u2(0,pi) q[4];
u1(pi/2) q[1];
u1(pi/2) q[5];
cx q[3], q[6];
cx q[0], q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(2) q[6];
u1(2) q[7];
u1(7.8539816) q[2];
u1(7.8539816) q[4];
u2(0,pi) q[1];
u2(0,pi) q[5];
cx q[3], q[6];
cx q[0], q[7];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(pi/2) q[3];
u1(pi/2) q[6];
cx q[0], q[4];
u1(5.1415927) q[1];
u1(5.1415927) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u1(2) q[4];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u2(0,pi) q[3];
u2(0,pi) q[6];
cx q[0], q[4];
u2(0,pi) q[1];
u2(0,pi) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
cx q[0], q[2];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(5.1415927) q[3];
u1(5.1415927) q[6];
u1(2) q[2];
u1(7.8539816) q[1];
u1(7.8539816) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
cx q[0], q[2];
cx q[7], q[5];
u2(0,pi) q[3];
u2(0,pi) q[6];
u1(pi/2) q[0];
cx q[2], q[4];
u1(2) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u1(-pi/2) q[0];
u1(2) q[4];
cx q[7], q[5];
u1(7.8539816) q[3];
u1(7.8539816) q[6];
u2(0,pi) q[0];
cx q[2], q[4];
cx q[7], q[6];
u1(-pi/2) q[0];
cx q[2], q[3];
cx q[4], q[1];
u1(2) q[6];
u1(5.1415927) q[0];
u1(2) q[3];
u1(2) q[1];
cx q[7], q[6];
u1(-pi/2) q[0];
cx q[2], q[3];
cx q[4], q[1];
u1(pi/2) q[7];
u2(0,pi) q[0];
u1(pi/2) q[2];
u1(pi/2) q[4];
cx q[1], q[5];
u1(-pi/2) q[7];
u1(-pi/2) q[0];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
u1(2) q[5];
u2(0,pi) q[7];
u1(7.8539816) q[0];
u2(0,pi) q[2];
u2(0,pi) q[4];
cx q[1], q[5];
u1(-pi/2) q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
cx q[1], q[3];
cx q[5], q[6];
u1(5.1415927) q[7];
u1(5.1415927) q[2];
u1(5.1415927) q[4];
u1(2) q[3];
u1(2) q[6];
u1(-pi/2) q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
cx q[1], q[3];
cx q[5], q[6];
u2(0,pi) q[7];
u2(0,pi) q[2];
u2(0,pi) q[4];
u1(pi/2) q[1];
u1(pi/2) q[5];
cx q[3], q[6];
u1(-pi/2) q[7];
u1(-pi/2) q[2];
u1(-pi/2) q[4];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(2) q[6];
u1(7.8539816) q[7];
u1(7.8539816) q[2];
u1(7.8539816) q[4];
u2(0,pi) q[1];
u2(0,pi) q[5];
cx q[3], q[6];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(pi/2) q[3];
u1(pi/2) q[6];
u1(5.1415927) q[1];
u1(5.1415927) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u2(0,pi) q[3];
u2(0,pi) q[6];
u2(0,pi) q[1];
u2(0,pi) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u1(-pi/2) q[1];
u1(-pi/2) q[5];
u1(5.1415927) q[3];
u1(5.1415927) q[6];
u1(7.8539816) q[1];
u1(7.8539816) q[5];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u2(0,pi) q[3];
u2(0,pi) q[6];
u1(-pi/2) q[3];
u1(-pi/2) q[6];
u1(7.8539816) q[3];
u1(7.8539816) q[6];