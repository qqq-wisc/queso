OPENQASM 2.0;
include "qelib1.inc";
qreg q[24];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
cx q[3],q[4];
rz(2.0) q[4];
cx q[3],q[4];
h q[5];
h q[6];
h q[7];
cx q[3],q[7];
rz(2.0) q[7];
cx q[3],q[7];
cx q[3],q[1];
rz(2.0) q[1];
cx q[3],q[1];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5.14159265358979) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
cx q[8],q[12];
rz(2.0) q[12];
cx q[8],q[12];
cx q[12],q[0];
rz(2.0) q[0];
cx q[12],q[0];
h q[13];
cx q[7],q[13];
rz(2.0) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(2.0) q[1];
cx q[7],q[1];
rz(pi/2) q[7];
rz(-pi/2) q[7];
h q[7];
rz(-pi/2) q[7];
rz(5.14159265358979) q[7];
rz(-pi/2) q[7];
h q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
h q[14];
cx q[4],q[14];
rz(2.0) q[14];
cx q[4],q[14];
cx q[0],q[14];
rz(2.0) q[14];
cx q[0],q[14];
cx q[0],q[13];
rz(2.0) q[13];
cx q[0],q[13];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5.14159265358979) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
h q[15];
cx q[1],q[15];
rz(2.0) q[15];
cx q[1],q[15];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5.14159265358979) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
h q[16];
cx q[4],q[16];
rz(2.0) q[16];
cx q[4],q[16];
rz(pi/2) q[4];
rz(-pi/2) q[4];
h q[4];
rz(-pi/2) q[4];
rz(5.14159265358979) q[4];
rz(-pi/2) q[4];
h q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
cx q[3],q[4];
rz(2.0) q[4];
cx q[3],q[4];
cx q[3],q[7];
rz(2.0) q[7];
cx q[3],q[7];
cx q[3],q[1];
rz(2.0) q[1];
cx q[3],q[1];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5.14159265358979) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
h q[17];
h q[18];
cx q[6],q[18];
rz(2.0) q[18];
cx q[6],q[18];
cx q[6],q[10];
rz(2.0) q[10];
cx q[6],q[10];
cx q[6],q[2];
rz(2.0) q[2];
cx q[6],q[2];
cx q[12],q[2];
rz(2.0) q[2];
cx q[12],q[2];
rz(pi/2) q[12];
rz(-pi/2) q[12];
h q[12];
rz(-pi/2) q[12];
rz(5.14159265358979) q[12];
rz(-pi/2) q[12];
h q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
rz(pi/2) q[6];
rz(-pi/2) q[6];
h q[6];
rz(-pi/2) q[6];
rz(5.14159265358979) q[6];
rz(-pi/2) q[6];
h q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
h q[19];
h q[20];
h q[21];
cx q[18],q[21];
rz(2.0) q[21];
cx q[18],q[21];
cx q[18],q[11];
rz(2.0) q[11];
cx q[18],q[11];
rz(pi/2) q[18];
rz(-pi/2) q[18];
h q[18];
rz(-pi/2) q[18];
rz(5.14159265358979) q[18];
rz(-pi/2) q[18];
h q[18];
rz(-pi/2) q[18];
rz(5*pi/2) q[18];
cx q[6],q[18];
rz(2.0) q[18];
cx q[6],q[18];
h q[22];
cx q[21],q[22];
rz(2.0) q[22];
cx q[21],q[22];
cx q[21],q[19];
rz(2.0) q[19];
cx q[21],q[19];
cx q[19],q[16];
rz(2.0) q[16];
cx q[19],q[16];
cx q[19],q[20];
rz(2.0) q[20];
cx q[19],q[20];
rz(pi/2) q[19];
rz(-pi/2) q[19];
h q[19];
rz(-pi/2) q[19];
rz(5.14159265358979) q[19];
rz(-pi/2) q[19];
h q[19];
rz(-pi/2) q[19];
rz(5*pi/2) q[19];
cx q[2],q[20];
rz(2.0) q[20];
cx q[2],q[20];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5.14159265358979) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
cx q[20],q[10];
rz(2.0) q[10];
cx q[20],q[10];
cx q[13],q[10];
rz(2.0) q[10];
cx q[13],q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
h q[10];
rz(-pi/2) q[10];
rz(5.14159265358979) q[10];
rz(-pi/2) q[10];
h q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
rz(pi/2) q[13];
rz(-pi/2) q[13];
h q[13];
rz(-pi/2) q[13];
rz(5.14159265358979) q[13];
rz(-pi/2) q[13];
h q[13];
rz(-pi/2) q[13];
rz(5*pi/2) q[13];
rz(pi/2) q[20];
rz(-pi/2) q[20];
h q[20];
rz(-pi/2) q[20];
rz(5.14159265358979) q[20];
rz(-pi/2) q[20];
h q[20];
rz(-pi/2) q[20];
rz(5*pi/2) q[20];
rz(pi/2) q[21];
rz(-pi/2) q[21];
h q[21];
rz(-pi/2) q[21];
rz(5.14159265358979) q[21];
rz(-pi/2) q[21];
h q[21];
rz(-pi/2) q[21];
rz(5*pi/2) q[21];
cx q[18],q[21];
rz(2.0) q[21];
cx q[18],q[21];
cx q[22],q[9];
cx q[6],q[10];
rz(2.0) q[10];
cx q[6],q[10];
cx q[6],q[2];
rz(2.0) q[2];
cx q[6],q[2];
rz(pi/2) q[6];
rz(-pi/2) q[6];
h q[6];
rz(-pi/2) q[6];
rz(5.14159265358979) q[6];
rz(-pi/2) q[6];
h q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
cx q[7],q[13];
rz(2.0) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(2.0) q[1];
cx q[7],q[1];
rz(pi/2) q[7];
rz(-pi/2) q[7];
h q[7];
rz(-pi/2) q[7];
rz(5.14159265358979) q[7];
rz(-pi/2) q[7];
h q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
rz(2.0) q[9];
cx q[22],q[9];
cx q[22],q[17];
rz(2.0) q[17];
cx q[22],q[17];
rz(pi/2) q[22];
rz(-pi/2) q[22];
h q[22];
rz(-pi/2) q[22];
rz(5.14159265358979) q[22];
rz(-pi/2) q[22];
h q[22];
rz(-pi/2) q[22];
rz(5*pi/2) q[22];
cx q[21],q[22];
rz(2.0) q[22];
cx q[21],q[22];
cx q[21],q[19];
rz(2.0) q[19];
cx q[21],q[19];
rz(pi/2) q[21];
rz(-pi/2) q[21];
h q[21];
rz(-pi/2) q[21];
rz(5.14159265358979) q[21];
rz(-pi/2) q[21];
h q[21];
rz(-pi/2) q[21];
rz(5*pi/2) q[21];
cx q[9],q[11];
rz(2.0) q[11];
cx q[9],q[11];
cx q[9],q[17];
rz(2.0) q[17];
cx q[9],q[17];
rz(pi/2) q[9];
rz(-pi/2) q[9];
h q[9];
rz(-pi/2) q[9];
rz(5.14159265358979) q[9];
rz(-pi/2) q[9];
h q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
cx q[22],q[9];
rz(2.0) q[9];
cx q[22],q[9];
h q[23];
cx q[8],q[23];
rz(2.0) q[23];
cx q[8],q[23];
cx q[11],q[23];
rz(2.0) q[23];
cx q[11],q[23];
rz(pi/2) q[11];
rz(-pi/2) q[11];
h q[11];
rz(-pi/2) q[11];
rz(5.14159265358979) q[11];
rz(-pi/2) q[11];
h q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
cx q[14],q[23];
cx q[18],q[11];
rz(2.0) q[11];
cx q[18],q[11];
rz(pi/2) q[18];
rz(-pi/2) q[18];
h q[18];
rz(-pi/2) q[18];
rz(5.14159265358979) q[18];
rz(-pi/2) q[18];
h q[18];
rz(-pi/2) q[18];
rz(5*pi/2) q[18];
rz(2.0) q[23];
cx q[14],q[23];
rz(pi/2) q[14];
rz(-pi/2) q[14];
h q[14];
rz(-pi/2) q[14];
rz(5.14159265358979) q[14];
rz(-pi/2) q[14];
h q[14];
rz(-pi/2) q[14];
rz(5*pi/2) q[14];
rz(pi/2) q[23];
rz(-pi/2) q[23];
h q[23];
rz(-pi/2) q[23];
rz(5.14159265358979) q[23];
rz(-pi/2) q[23];
h q[23];
rz(-pi/2) q[23];
rz(5*pi/2) q[23];
cx q[4],q[14];
rz(2.0) q[14];
cx q[4],q[14];
cx q[6],q[18];
rz(2.0) q[18];
cx q[6],q[18];
cx q[18],q[21];
rz(2.0) q[21];
cx q[18],q[21];
cx q[8],q[5];
rz(2.0) q[5];
cx q[8],q[5];
cx q[17],q[5];
rz(2.0) q[5];
cx q[17],q[5];
cx q[15],q[5];
rz(pi/2) q[17];
rz(-pi/2) q[17];
h q[17];
rz(-pi/2) q[17];
rz(5.14159265358979) q[17];
rz(-pi/2) q[17];
h q[17];
rz(-pi/2) q[17];
rz(5*pi/2) q[17];
cx q[22],q[17];
rz(2.0) q[17];
cx q[22],q[17];
rz(pi/2) q[22];
rz(-pi/2) q[22];
h q[22];
rz(-pi/2) q[22];
rz(5.14159265358979) q[22];
rz(-pi/2) q[22];
h q[22];
rz(-pi/2) q[22];
rz(5*pi/2) q[22];
cx q[21],q[22];
rz(2.0) q[22];
cx q[21],q[22];
rz(2.0) q[5];
cx q[15],q[5];
cx q[15],q[16];
rz(2.0) q[16];
cx q[15],q[16];
rz(pi/2) q[15];
rz(-pi/2) q[15];
h q[15];
rz(-pi/2) q[15];
rz(5.14159265358979) q[15];
rz(-pi/2) q[15];
h q[15];
rz(-pi/2) q[15];
rz(5*pi/2) q[15];
cx q[1],q[15];
rz(2.0) q[15];
cx q[1],q[15];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5.14159265358979) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/2) q[16];
rz(-pi/2) q[16];
h q[16];
rz(-pi/2) q[16];
rz(5.14159265358979) q[16];
rz(-pi/2) q[16];
h q[16];
rz(-pi/2) q[16];
rz(5*pi/2) q[16];
cx q[4],q[16];
rz(2.0) q[16];
cx q[4],q[16];
cx q[19],q[16];
rz(2.0) q[16];
cx q[19],q[16];
cx q[19],q[20];
rz(2.0) q[20];
cx q[19],q[20];
rz(pi/2) q[19];
rz(-pi/2) q[19];
h q[19];
rz(-pi/2) q[19];
rz(5.14159265358979) q[19];
rz(-pi/2) q[19];
h q[19];
rz(-pi/2) q[19];
rz(5*pi/2) q[19];
cx q[21],q[19];
rz(2.0) q[19];
cx q[21],q[19];
rz(pi/2) q[21];
rz(-pi/2) q[21];
h q[21];
rz(-pi/2) q[21];
rz(5.14159265358979) q[21];
rz(-pi/2) q[21];
h q[21];
rz(-pi/2) q[21];
rz(5*pi/2) q[21];
rz(pi/2) q[4];
rz(-pi/2) q[4];
h q[4];
rz(-pi/2) q[4];
rz(5.14159265358979) q[4];
rz(-pi/2) q[4];
h q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
cx q[3],q[4];
rz(2.0) q[4];
cx q[3],q[4];
cx q[3],q[7];
rz(pi/2) q[5];
rz(-pi/2) q[5];
h q[5];
rz(-pi/2) q[5];
rz(5.14159265358979) q[5];
rz(-pi/2) q[5];
h q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
rz(2.0) q[7];
cx q[3],q[7];
cx q[3],q[1];
rz(2.0) q[1];
cx q[3],q[1];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5.14159265358979) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rz(pi/2) q[8];
rz(-pi/2) q[8];
h q[8];
rz(-pi/2) q[8];
rz(5.14159265358979) q[8];
rz(-pi/2) q[8];
h q[8];
rz(-pi/2) q[8];
rz(5*pi/2) q[8];
cx q[8],q[12];
rz(2.0) q[12];
cx q[8],q[12];
cx q[12],q[0];
rz(2.0) q[0];
cx q[12],q[0];
cx q[0],q[14];
cx q[12],q[2];
rz(2.0) q[14];
cx q[0],q[14];
cx q[0],q[13];
rz(2.0) q[13];
cx q[0],q[13];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5.14159265358979) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(2.0) q[2];
cx q[12],q[2];
rz(pi/2) q[12];
rz(-pi/2) q[12];
h q[12];
rz(-pi/2) q[12];
rz(5.14159265358979) q[12];
rz(-pi/2) q[12];
h q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
cx q[2],q[20];
rz(2.0) q[20];
cx q[2],q[20];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5.14159265358979) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
cx q[20],q[10];
rz(2.0) q[10];
cx q[20],q[10];
cx q[13],q[10];
rz(2.0) q[10];
cx q[13],q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
h q[10];
rz(-pi/2) q[10];
rz(5.14159265358979) q[10];
rz(-pi/2) q[10];
h q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
rz(pi/2) q[13];
rz(-pi/2) q[13];
h q[13];
rz(-pi/2) q[13];
rz(5.14159265358979) q[13];
rz(-pi/2) q[13];
h q[13];
rz(-pi/2) q[13];
rz(5*pi/2) q[13];
rz(pi/2) q[20];
rz(-pi/2) q[20];
h q[20];
rz(-pi/2) q[20];
rz(5.14159265358979) q[20];
rz(-pi/2) q[20];
h q[20];
rz(-pi/2) q[20];
rz(5*pi/2) q[20];
cx q[6],q[10];
rz(2.0) q[10];
cx q[6],q[10];
cx q[6],q[2];
rz(2.0) q[2];
cx q[6],q[2];
rz(pi/2) q[6];
rz(-pi/2) q[6];
h q[6];
rz(-pi/2) q[6];
rz(5.14159265358979) q[6];
rz(-pi/2) q[6];
h q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
cx q[7],q[13];
rz(2.0) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(2.0) q[1];
cx q[7],q[1];
rz(pi/2) q[7];
rz(-pi/2) q[7];
h q[7];
rz(-pi/2) q[7];
rz(5.14159265358979) q[7];
rz(-pi/2) q[7];
h q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
cx q[8],q[23];
rz(2.0) q[23];
cx q[8],q[23];
cx q[8],q[5];
rz(2.0) q[5];
cx q[8],q[5];
rz(pi/2) q[8];
rz(-pi/2) q[8];
h q[8];
rz(-pi/2) q[8];
rz(5.14159265358979) q[8];
rz(-pi/2) q[8];
h q[8];
rz(-pi/2) q[8];
rz(5*pi/2) q[8];
cx q[8],q[12];
rz(2.0) q[12];
cx q[8],q[12];
cx q[12],q[0];
rz(2.0) q[0];
cx q[12],q[0];
cx q[12],q[2];
rz(2.0) q[2];
cx q[12],q[2];
rz(pi/2) q[12];
rz(-pi/2) q[12];
h q[12];
rz(-pi/2) q[12];
rz(5.14159265358979) q[12];
rz(-pi/2) q[12];
h q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
cx q[9],q[11];
rz(2.0) q[11];
cx q[9],q[11];
cx q[11],q[23];
rz(2.0) q[23];
cx q[11],q[23];
rz(pi/2) q[11];
rz(-pi/2) q[11];
h q[11];
rz(-pi/2) q[11];
rz(5.14159265358979) q[11];
rz(-pi/2) q[11];
h q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
cx q[14],q[23];
cx q[18],q[11];
rz(2.0) q[11];
cx q[18],q[11];
rz(pi/2) q[18];
rz(-pi/2) q[18];
h q[18];
rz(-pi/2) q[18];
rz(5.14159265358979) q[18];
rz(-pi/2) q[18];
h q[18];
rz(-pi/2) q[18];
rz(5*pi/2) q[18];
rz(2.0) q[23];
cx q[14],q[23];
rz(pi/2) q[14];
rz(-pi/2) q[14];
h q[14];
rz(-pi/2) q[14];
rz(5.14159265358979) q[14];
rz(-pi/2) q[14];
h q[14];
rz(-pi/2) q[14];
rz(5*pi/2) q[14];
rz(pi/2) q[23];
rz(-pi/2) q[23];
h q[23];
rz(-pi/2) q[23];
rz(5.14159265358979) q[23];
rz(-pi/2) q[23];
h q[23];
rz(-pi/2) q[23];
rz(5*pi/2) q[23];
cx q[4],q[14];
rz(2.0) q[14];
cx q[4],q[14];
cx q[0],q[14];
rz(2.0) q[14];
cx q[0],q[14];
cx q[0],q[13];
rz(2.0) q[13];
cx q[0],q[13];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5.14159265358979) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
cx q[6],q[18];
rz(2.0) q[18];
cx q[6],q[18];
cx q[18],q[21];
rz(2.0) q[21];
cx q[18],q[21];
cx q[8],q[23];
rz(2.0) q[23];
cx q[8],q[23];
cx q[9],q[17];
rz(2.0) q[17];
cx q[9],q[17];
cx q[17],q[5];
rz(2.0) q[5];
cx q[17],q[5];
cx q[15],q[5];
rz(pi/2) q[17];
rz(-pi/2) q[17];
h q[17];
rz(-pi/2) q[17];
rz(5.14159265358979) q[17];
rz(-pi/2) q[17];
h q[17];
rz(-pi/2) q[17];
rz(5*pi/2) q[17];
rz(2.0) q[5];
cx q[15],q[5];
cx q[15],q[16];
rz(2.0) q[16];
cx q[15],q[16];
rz(pi/2) q[15];
rz(-pi/2) q[15];
h q[15];
rz(-pi/2) q[15];
rz(5.14159265358979) q[15];
rz(-pi/2) q[15];
h q[15];
rz(-pi/2) q[15];
rz(5*pi/2) q[15];
cx q[1],q[15];
rz(2.0) q[15];
cx q[1],q[15];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5.14159265358979) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/2) q[16];
rz(-pi/2) q[16];
h q[16];
rz(-pi/2) q[16];
rz(5.14159265358979) q[16];
rz(-pi/2) q[16];
h q[16];
rz(-pi/2) q[16];
rz(5*pi/2) q[16];
cx q[4],q[16];
rz(2.0) q[16];
cx q[4],q[16];
cx q[19],q[16];
rz(2.0) q[16];
cx q[19],q[16];
cx q[19],q[20];
rz(2.0) q[20];
cx q[19],q[20];
rz(pi/2) q[19];
rz(-pi/2) q[19];
h q[19];
rz(-pi/2) q[19];
rz(5.14159265358979) q[19];
rz(-pi/2) q[19];
h q[19];
rz(-pi/2) q[19];
rz(5*pi/2) q[19];
cx q[2],q[20];
rz(2.0) q[20];
cx q[2],q[20];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5.14159265358979) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
cx q[20],q[10];
rz(2.0) q[10];
cx q[20],q[10];
cx q[13],q[10];
rz(2.0) q[10];
cx q[13],q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
h q[10];
rz(-pi/2) q[10];
rz(5.14159265358979) q[10];
rz(-pi/2) q[10];
h q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
rz(pi/2) q[13];
rz(-pi/2) q[13];
h q[13];
rz(-pi/2) q[13];
rz(5.14159265358979) q[13];
rz(-pi/2) q[13];
h q[13];
rz(-pi/2) q[13];
rz(5*pi/2) q[13];
rz(pi/2) q[20];
rz(-pi/2) q[20];
h q[20];
rz(-pi/2) q[20];
rz(5.14159265358979) q[20];
rz(-pi/2) q[20];
h q[20];
rz(-pi/2) q[20];
rz(5*pi/2) q[20];
rz(pi/2) q[4];
rz(-pi/2) q[4];
h q[4];
rz(-pi/2) q[4];
rz(5.14159265358979) q[4];
rz(-pi/2) q[4];
h q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
cx q[3],q[4];
rz(2.0) q[4];
cx q[3],q[4];
cx q[3],q[7];
rz(pi/2) q[5];
rz(-pi/2) q[5];
h q[5];
rz(-pi/2) q[5];
rz(5.14159265358979) q[5];
rz(-pi/2) q[5];
h q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
cx q[6],q[10];
rz(2.0) q[10];
cx q[6],q[10];
cx q[6],q[2];
rz(2.0) q[2];
cx q[6],q[2];
rz(pi/2) q[6];
rz(-pi/2) q[6];
h q[6];
rz(-pi/2) q[6];
rz(5.14159265358979) q[6];
rz(-pi/2) q[6];
h q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
rz(2.0) q[7];
cx q[3],q[7];
cx q[3],q[1];
rz(2.0) q[1];
cx q[3],q[1];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5.14159265358979) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
cx q[7],q[13];
rz(2.0) q[13];
cx q[7],q[13];
cx q[7],q[1];
rz(2.0) q[1];
cx q[7],q[1];
rz(pi/2) q[7];
rz(-pi/2) q[7];
h q[7];
rz(-pi/2) q[7];
rz(5.14159265358979) q[7];
rz(-pi/2) q[7];
h q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
cx q[8],q[5];
rz(2.0) q[5];
cx q[8],q[5];
rz(pi/2) q[8];
rz(-pi/2) q[8];
h q[8];
rz(-pi/2) q[8];
rz(5.14159265358979) q[8];
rz(-pi/2) q[8];
h q[8];
rz(-pi/2) q[8];
rz(5*pi/2) q[8];
cx q[8],q[12];
rz(2.0) q[12];
cx q[8],q[12];
cx q[12],q[0];
rz(2.0) q[0];
cx q[12],q[0];
cx q[12],q[2];
rz(2.0) q[2];
cx q[12],q[2];
rz(pi/2) q[12];
rz(-pi/2) q[12];
h q[12];
rz(-pi/2) q[12];
rz(5.14159265358979) q[12];
rz(-pi/2) q[12];
h q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
rz(pi/2) q[9];
rz(-pi/2) q[9];
h q[9];
rz(-pi/2) q[9];
rz(5.14159265358979) q[9];
rz(-pi/2) q[9];
h q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
cx q[22],q[9];
rz(2.0) q[9];
cx q[22],q[9];
cx q[22],q[17];
rz(2.0) q[17];
cx q[22],q[17];
rz(pi/2) q[22];
rz(-pi/2) q[22];
h q[22];
rz(-pi/2) q[22];
rz(5.14159265358979) q[22];
rz(-pi/2) q[22];
h q[22];
rz(-pi/2) q[22];
rz(5*pi/2) q[22];
cx q[21],q[22];
rz(2.0) q[22];
cx q[21],q[22];
cx q[21],q[19];
rz(2.0) q[19];
cx q[21],q[19];
rz(pi/2) q[21];
rz(-pi/2) q[21];
h q[21];
rz(-pi/2) q[21];
rz(5.14159265358979) q[21];
rz(-pi/2) q[21];
h q[21];
rz(-pi/2) q[21];
rz(5*pi/2) q[21];
cx q[9],q[11];
rz(2.0) q[11];
cx q[9],q[11];
cx q[11],q[23];
rz(2.0) q[23];
cx q[11],q[23];
rz(pi/2) q[11];
rz(-pi/2) q[11];
h q[11];
rz(-pi/2) q[11];
rz(5.14159265358979) q[11];
rz(-pi/2) q[11];
h q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
cx q[14],q[23];
cx q[18],q[11];
rz(2.0) q[11];
cx q[18],q[11];
rz(pi/2) q[18];
rz(-pi/2) q[18];
h q[18];
rz(-pi/2) q[18];
rz(5.14159265358979) q[18];
rz(-pi/2) q[18];
h q[18];
rz(-pi/2) q[18];
rz(5*pi/2) q[18];
rz(2.0) q[23];
cx q[14],q[23];
rz(pi/2) q[14];
rz(-pi/2) q[14];
h q[14];
rz(-pi/2) q[14];
rz(5.14159265358979) q[14];
rz(-pi/2) q[14];
h q[14];
rz(-pi/2) q[14];
rz(5*pi/2) q[14];
rz(pi/2) q[23];
rz(-pi/2) q[23];
h q[23];
rz(-pi/2) q[23];
rz(5.14159265358979) q[23];
rz(-pi/2) q[23];
h q[23];
rz(-pi/2) q[23];
rz(5*pi/2) q[23];
cx q[4],q[14];
rz(2.0) q[14];
cx q[4],q[14];
cx q[0],q[14];
rz(2.0) q[14];
cx q[0],q[14];
cx q[0],q[13];
rz(2.0) q[13];
cx q[0],q[13];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5.14159265358979) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
cx q[8],q[23];
rz(2.0) q[23];
cx q[8],q[23];
cx q[9],q[17];
rz(2.0) q[17];
cx q[9],q[17];
cx q[17],q[5];
rz(2.0) q[5];
cx q[17],q[5];
cx q[15],q[5];
rz(pi/2) q[17];
rz(-pi/2) q[17];
h q[17];
rz(-pi/2) q[17];
rz(5.14159265358979) q[17];
rz(-pi/2) q[17];
h q[17];
rz(-pi/2) q[17];
rz(5*pi/2) q[17];
rz(2.0) q[5];
cx q[15],q[5];
cx q[15],q[16];
rz(2.0) q[16];
cx q[15],q[16];
rz(pi/2) q[15];
rz(-pi/2) q[15];
h q[15];
rz(-pi/2) q[15];
rz(5.14159265358979) q[15];
rz(-pi/2) q[15];
h q[15];
rz(-pi/2) q[15];
rz(5*pi/2) q[15];
cx q[1],q[15];
rz(2.0) q[15];
cx q[1],q[15];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5.14159265358979) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/2) q[16];
rz(-pi/2) q[16];
h q[16];
rz(-pi/2) q[16];
rz(5.14159265358979) q[16];
rz(-pi/2) q[16];
h q[16];
rz(-pi/2) q[16];
rz(5*pi/2) q[16];
cx q[4],q[16];
rz(2.0) q[16];
cx q[4],q[16];
cx q[19],q[16];
rz(2.0) q[16];
cx q[19],q[16];
cx q[19],q[20];
rz(2.0) q[20];
cx q[19],q[20];
rz(pi/2) q[19];
rz(-pi/2) q[19];
h q[19];
rz(-pi/2) q[19];
rz(5.14159265358979) q[19];
rz(-pi/2) q[19];
h q[19];
rz(-pi/2) q[19];
rz(5*pi/2) q[19];
cx q[2],q[20];
rz(2.0) q[20];
cx q[2],q[20];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5.14159265358979) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
cx q[20],q[10];
rz(2.0) q[10];
cx q[20],q[10];
cx q[13],q[10];
rz(2.0) q[10];
cx q[13],q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
h q[10];
rz(-pi/2) q[10];
rz(5.14159265358979) q[10];
rz(-pi/2) q[10];
h q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
rz(pi/2) q[13];
rz(-pi/2) q[13];
h q[13];
rz(-pi/2) q[13];
rz(5.14159265358979) q[13];
rz(-pi/2) q[13];
h q[13];
rz(-pi/2) q[13];
rz(5*pi/2) q[13];
rz(pi/2) q[20];
rz(-pi/2) q[20];
h q[20];
rz(-pi/2) q[20];
rz(5.14159265358979) q[20];
rz(-pi/2) q[20];
h q[20];
rz(-pi/2) q[20];
rz(5*pi/2) q[20];
rz(pi/2) q[4];
rz(-pi/2) q[4];
h q[4];
rz(-pi/2) q[4];
rz(5.14159265358979) q[4];
rz(-pi/2) q[4];
h q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
rz(pi/2) q[5];
rz(-pi/2) q[5];
h q[5];
rz(-pi/2) q[5];
rz(5.14159265358979) q[5];
rz(-pi/2) q[5];
h q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
cx q[8],q[5];
rz(2.0) q[5];
cx q[8],q[5];
rz(pi/2) q[8];
rz(-pi/2) q[8];
h q[8];
rz(-pi/2) q[8];
rz(5.14159265358979) q[8];
rz(-pi/2) q[8];
h q[8];
rz(-pi/2) q[8];
rz(5*pi/2) q[8];
rz(pi/2) q[9];
rz(-pi/2) q[9];
h q[9];
rz(-pi/2) q[9];
rz(5.14159265358979) q[9];
rz(-pi/2) q[9];
h q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
cx q[22],q[9];
rz(2.0) q[9];
cx q[22],q[9];
cx q[22],q[17];
rz(2.0) q[17];
cx q[22],q[17];
rz(pi/2) q[22];
rz(-pi/2) q[22];
h q[22];
rz(-pi/2) q[22];
rz(5.14159265358979) q[22];
rz(-pi/2) q[22];
h q[22];
rz(-pi/2) q[22];
rz(5*pi/2) q[22];
cx q[9],q[11];
rz(2.0) q[11];
cx q[9],q[11];
cx q[11],q[23];
rz(2.0) q[23];
cx q[11],q[23];
rz(pi/2) q[11];
rz(-pi/2) q[11];
h q[11];
rz(-pi/2) q[11];
rz(5.14159265358979) q[11];
rz(-pi/2) q[11];
h q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
cx q[14],q[23];
rz(2.0) q[23];
cx q[14],q[23];
rz(pi/2) q[14];
rz(-pi/2) q[14];
h q[14];
rz(-pi/2) q[14];
rz(5.14159265358979) q[14];
rz(-pi/2) q[14];
h q[14];
rz(-pi/2) q[14];
rz(5*pi/2) q[14];
rz(pi/2) q[23];
rz(-pi/2) q[23];
h q[23];
rz(-pi/2) q[23];
rz(5.14159265358979) q[23];
rz(-pi/2) q[23];
h q[23];
rz(-pi/2) q[23];
rz(5*pi/2) q[23];
cx q[9],q[17];
rz(2.0) q[17];
cx q[9],q[17];
cx q[17],q[5];
rz(2.0) q[5];
cx q[17],q[5];
cx q[15],q[5];
rz(pi/2) q[17];
rz(-pi/2) q[17];
h q[17];
rz(-pi/2) q[17];
rz(5.14159265358979) q[17];
rz(-pi/2) q[17];
h q[17];
rz(-pi/2) q[17];
rz(5*pi/2) q[17];
rz(2.0) q[5];
cx q[15],q[5];
cx q[15],q[16];
rz(2.0) q[16];
cx q[15],q[16];
rz(pi/2) q[15];
rz(-pi/2) q[15];
h q[15];
rz(-pi/2) q[15];
rz(5.14159265358979) q[15];
rz(-pi/2) q[15];
h q[15];
rz(-pi/2) q[15];
rz(5*pi/2) q[15];
rz(pi/2) q[16];
rz(-pi/2) q[16];
h q[16];
rz(-pi/2) q[16];
rz(5.14159265358979) q[16];
rz(-pi/2) q[16];
h q[16];
rz(-pi/2) q[16];
rz(5*pi/2) q[16];
rz(pi/2) q[5];
rz(-pi/2) q[5];
h q[5];
rz(-pi/2) q[5];
rz(5.14159265358979) q[5];
rz(-pi/2) q[5];
h q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
rz(pi/2) q[9];
rz(-pi/2) q[9];
h q[9];
rz(-pi/2) q[9];
rz(5.14159265358979) q[9];
rz(-pi/2) q[9];
h q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
