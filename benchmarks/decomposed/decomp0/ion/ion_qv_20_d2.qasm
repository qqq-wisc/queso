OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
rz(0.40224784) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5.4289832) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(7.3223843) q[0];
ry(pi/2) q[0];
rz(-1.3670683) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5.3493849) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(6.7261106) q[1];
ry(pi/2) q[1];
rz(-0.63631846) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5.5235727) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(7.0891657) q[2];
rz(1.2760353) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(4.7102328) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(12.246918) q[3];
ry(pi/2) q[3];
rz(1.4423565) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(4.3868988) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(10.24802) q[4];
ry(pi/2) q[4];
rz(-0.83927688) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(4.6138398) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(8.0072346) q[5];
ry(pi/2) q[5];
rz(-0.68881254) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5.8986755) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(11.372603) q[6];
ry(pi/2) q[6];
rz(-0.72727238) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(4.2553928) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(8.1056634) q[7];
ry(pi/2) q[7];
rz(0.80218047) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(4.4445569) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(11.623077) q[8];
rz(-1.6860255) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5.8396801) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(10.752301) q[9];
rxx(pi/2) q[5],q[9];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(-pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(3.6542562) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[9];
rz(-0.45812421) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5.1287932) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(6.970149) q[9];
rxx(pi/2) q[5],q[9];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(3.2989447) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(2*pi) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[9];
rz(-0.61547971) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5*pi/3) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(10.040258) q[9];
rxx(pi/2) q[5],q[9];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(-2.4613788) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(3.7052185) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(9.0577659) q[5];
rz(2.7247402) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(3.6086069) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(10.699549) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[9];
rz(3.0710736) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(4.4534265) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(10.352441) q[9];
rz(-1.2358971) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(4.3728452) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(11.615463) q[9];
ry(pi/2) q[9];
rz(-2.0037775) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5.7556933) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(11.103446) q[10];
rxx(pi/2) q[6],q[10];
rx(-pi/2) q[10];
rz(-0.49324806) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5.154604) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(6.9555265) q[10];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(-pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(3.4916069) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[10];
rx(-pi/2) q[10];
rz(-0.61547971) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5*pi/3) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(10.040258) q[10];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(3.3379581) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(2*pi) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[10];
rx(-pi/2) q[10];
rz(2.9355187) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(3.7876881) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(9.3966442) q[10];
rz(0.79693683) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(4.8860412) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(6.4244942) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(-2.8395402) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(4.2141793) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(7.5941661) q[6];
rz(-1.5465839) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5.3086875) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(11.978861) q[6];
ry(pi/2) q[6];
rz(0.47420237) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5.3222536) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(8.8866236) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3.8498976) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rz(-0.10816605) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(4.8199278) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(7.0627562) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3.1755262) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3*pi) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[11];
rz(-0.61547971) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5*pi/3) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(10.040258) q[11];
rxx(pi/2) q[1],q[11];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-0.11238279) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(4.9140668) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(9.5398355) q[1];
rz(-2.8546072) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3.9791241) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(10.57485) q[1];
rx(-pi/2) q[11];
rz(2.8565663) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(4.8168625) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(8.0923804) q[11];
rz(-1.9190366) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5.510946) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(7.7311995) q[11];
ry(pi/2) q[11];
rxx(pi/2) q[11],q[1];
rx(-pi/2) q[1];
rz(-0.58053196) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5.2140559) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(6.9158083) q[1];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rz(-pi/2) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(4.2919709) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5*pi/2) q[11];
ry(pi/2) q[11];
rxx(pi/2) q[11],q[1];
rx(-pi/2) q[1];
rz(-0.61547971) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/3) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(10.040258) q[1];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rz(pi/2) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(3.3789914) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(2*pi) q[11];
ry(pi/2) q[11];
rxx(pi/2) q[11],q[1];
rx(-pi/2) q[1];
rz(2.5262949) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(4.9393065) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(6.7909938) q[1];
rx(-pi/2) q[11];
ry(-pi/2) q[11];
rz(-1.3287954) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(5.3397553) q[11];
rz(-pi/2) q[11];
ry(pi/2) q[11];
rx(pi) q[11];
rz(-pi/2) q[11];
rz(8.2524849) q[11];
rz(-2.1143171) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(4.6197699) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(7.6990521) q[12];
ry(pi/2) q[12];
rxx(pi/2) q[12],q[2];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
rz(-pi/2) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(4.2625268) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5*pi/2) q[12];
ry(pi/2) q[12];
rx(-pi/2) q[2];
rz(-0.45566875) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5.1269486) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(6.9711401) q[2];
rxx(pi/2) q[12],q[2];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
rz(-pi/2) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(3.2341167) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(3*pi) q[12];
ry(pi/2) q[12];
rx(-pi/2) q[2];
rz(-0.61547971) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/3) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(10.040258) q[2];
rxx(pi/2) q[12],q[2];
rx(-pi/2) q[12];
ry(-pi/2) q[12];
rz(-2.7476609) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(4.5028355) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(12.144851) q[12];
rz(-1.3395089) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(4.611919) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(6.4139528) q[12];
rx(-pi/2) q[2];
rz(1.0261783) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(4.6331371) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(12.375981) q[2];
rz(0.77449092) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(4.5194815) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(9.9612842) q[2];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rz(-0.58076359) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5.2142047) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(6.9156969) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rz(-pi/2) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(4.015522) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5*pi/2) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rz(-0.61547971) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5*pi/3) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(10.040258) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(3.7373019) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(2*pi) q[9];
ry(pi/2) q[9];
rxx(pi/2) q[9],q[12];
rx(-pi/2) q[12];
rz(-1.3227155) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(5.1025548) q[12];
rz(-pi/2) q[12];
ry(pi/2) q[12];
rx(pi) q[12];
rz(-pi/2) q[12];
rz(11.554163) q[12];
rx(-pi/2) q[9];
ry(-pi/2) q[9];
rz(0.34813846) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(5.9959483) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(12.355238) q[9];
rz(0.074437223) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.1969474) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(9.8905415) q[13];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(-0.56691812) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.2052237) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(6.9223024) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(3.8338958) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(-0.61547971) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5*pi/3) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(10.040258) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(3.600215) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(2*pi) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[13];
rx(-pi/2) q[13];
rz(2.1999615) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(4.6785955) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(8.6293011) q[13];
rz(-1.4363091) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.9585123) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(9.4577128) q[13];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-1.4846177) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(4.2711648) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(8.128997) q[4];
rz(1.2816383) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(3.6674676) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(9.863785) q[4];
rxx(pi/2) q[6],q[4];
rx(-pi/2) q[4];
rz(-0.47617311) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5.142191) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(6.962738) q[4];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(-pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(3.8014669) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5*pi/2) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[4];
rx(-pi/2) q[4];
rz(-0.61547971) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5*pi/3) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(10.040258) q[4];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(-pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(3.5292491) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(3*pi) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[6],q[4];
rx(-pi/2) q[4];
rz(-1.3442969) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5.2983782) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(7.5266073) q[4];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(1.2745811) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(5.2503735) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(9.4396617) q[6];
rz(-1.4306662) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(4.5269028) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(7.115829) q[14];
ry(pi/2) q[14];
rz(-2.7433486) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(4.7161527) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(8.5973854) q[15];
rxx(pi/2) q[7],q[15];
rx(-pi/2) q[15];
rz(-0.064306233) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(4.7765627) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(7.0665187) q[15];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(-pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(3.9474831) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[15];
rx(-pi/2) q[15];
rz(-0.61547971) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(5*pi/3) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(10.040258) q[15];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(3.5002041) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(2*pi) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[15];
rx(-pi/2) q[15];
rz(-0.00760325) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(4.7836546) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(8.7251909) q[15];
rz(2.4375633) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(3.8225915) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(7.8792982) q[15];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(-0.11894521) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(4.3496047) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(11.024918) q[7];
rz(1.7489457) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(4.4349571) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(12.075864) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[2];
rx(-pi/2) q[2];
rz(-0.57243365) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5.2088215) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(6.9196841) q[2];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(-pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(4.1279271) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5*pi/2) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[2];
rx(-pi/2) q[2];
rz(-0.61547971) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/3) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(10.040258) q[2];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(3.7474775) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(2*pi) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[7],q[2];
rx(-pi/2) q[2];
rz(2.8168074) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(4.7286995) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(9.2744) q[2];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(0.24187136) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(5.1367101) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(8.6492059) q[7];
rz(-0.57791971) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(5.6574626) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(12.184859) q[16];
rxx(pi/2) q[0],q[16];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3.6538449) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[16];
rz(-0.29207381) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(4.9927441) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(7.0270814) q[16];
rxx(pi/2) q[0],q[16];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3.3998776) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(2*pi) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[16];
rz(-0.61547971) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(5*pi/3) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(10.040258) q[16];
rxx(pi/2) q[0],q[16];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-1.9643755) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(4.5474676) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(10.83503) q[0];
rz(2.1457545) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(4.9920208) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(7.6039438) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[16];
rz(0.49611472) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(4.9590617) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(11.048774) q[16];
rz(-0.62450556) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(4.6701724) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(9.0963163) q[16];
rxx(pi/2) q[10],q[16];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rz(-pi/2) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(3.7860624) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5*pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[16];
rz(-0.43740783) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(5.1130671) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(6.9783795) q[16];
rxx(pi/2) q[10],q[16];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rz(pi/2) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(3.5195496) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(2*pi) q[10];
ry(pi/2) q[10];
rx(-pi/2) q[16];
rz(-0.61547971) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(5*pi/3) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(10.040258) q[16];
rxx(pi/2) q[10],q[16];
rx(-pi/2) q[10];
ry(-pi/2) q[10];
rz(-2.5560669) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(5.1005663) q[10];
rz(-pi/2) q[10];
ry(pi/2) q[10];
rx(pi) q[10];
rz(-pi/2) q[10];
rz(9.5245879) q[10];
rx(-pi/2) q[16];
rz(0.44160484) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(3.7376158) q[16];
rz(-pi/2) q[16];
ry(pi/2) q[16];
rx(pi) q[16];
rz(-pi/2) q[16];
rz(10.675049) q[16];
rz(-2.2409888) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(5.3860696) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(12.090151) q[17];
ry(pi/2) q[17];
rxx(pi/2) q[17],q[8];
rx(-pi/2) q[17];
ry(-pi/2) q[17];
rz(-pi/2) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(3.904595) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(5*pi/2) q[17];
ry(pi/2) q[17];
rx(-pi/2) q[8];
rz(-0.33118814) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5.0267718) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(7.0156177) q[8];
rxx(pi/2) q[17],q[8];
rx(-pi/2) q[17];
ry(-pi/2) q[17];
rz(-pi/2) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(3.5050722) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(3*pi) q[17];
ry(pi/2) q[17];
rx(-pi/2) q[8];
rz(-0.61547971) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5*pi/3) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(10.040258) q[8];
rxx(pi/2) q[17],q[8];
rx(-pi/2) q[17];
ry(-pi/2) q[17];
rz(-0.11665281) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(5.3501046) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(7.7869135) q[17];
rz(-1.0327178) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(4.6378495) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(9.4053475) q[17];
rxx(pi/2) q[5],q[17];
rx(-pi/2) q[17];
rz(-0.58135444) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(5.2145843) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(6.9154126) q[17];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(-pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(4.1987821) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(5*pi/2) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[17];
rx(-pi/2) q[17];
rz(-0.61547971) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(5*pi/3) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(10.040258) q[17];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(3.7219676) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(2*pi) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[5],q[17];
rx(-pi/2) q[17];
rz(-0.46022081) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(5.5585537) q[17];
rz(-pi/2) q[17];
ry(pi/2) q[17];
rx(pi) q[17];
rz(-pi/2) q[17];
rz(12.41671) q[17];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(-2.406005) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(4.7230294) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(8.4528668) q[5];
rx(-pi/2) q[8];
rz(0.880108) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(4.5290935) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(10.820314) q[8];
rz(-0.54766362) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(4.6923474) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(9.8611171) q[8];
rxx(pi/2) q[0],q[8];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(4.2784297) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[8];
rz(-0.51320542) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5.1687883) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(6.9468577) q[8];
rxx(pi/2) q[0],q[8];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3.9355841) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3*pi) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[8];
rz(-0.61547971) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5*pi/3) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(10.040258) q[8];
rxx(pi/2) q[0],q[8];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-2.7814934) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3.8844747) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(12.411267) q[0];
rx(-pi/2) q[8];
rz(2.0529239) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(5.2072043) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(8.4837701) q[8];
rz(2.8607771) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(4.8157484) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(8.1229218) q[18];
rxx(pi/2) q[14],q[18];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
rz(-pi/2) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(3.5585625) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(5*pi/2) q[14];
ry(pi/2) q[14];
rx(-pi/2) q[18];
rz(-0.43825938) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(5.1137208) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(6.9780471) q[18];
rxx(pi/2) q[14],q[18];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
rz(-pi/2) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(3.354075) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(3*pi) q[14];
ry(pi/2) q[14];
rx(-pi/2) q[18];
rz(-0.61547971) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(5*pi/3) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(10.040258) q[18];
rxx(pi/2) q[14],q[18];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
rz(1.9682578) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(4.8166336) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(6.5406353) q[14];
rz(0.66678128) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(4.4694043) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(8.6829535) q[14];
ry(pi/2) q[14];
rxx(pi/2) q[14],q[15];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
rz(-pi/2) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(3.3503907) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(5*pi/2) q[14];
ry(pi/2) q[14];
rx(-pi/2) q[15];
rz(-0.40194985) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(5.0852979) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(6.9917575) q[15];
rxx(pi/2) q[14],q[15];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
rz(-pi/2) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(3.1875289) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(3*pi) q[14];
ry(pi/2) q[14];
rx(-pi/2) q[15];
rz(-0.61547971) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(5*pi/3) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(10.040258) q[15];
rxx(pi/2) q[14],q[15];
rx(-pi/2) q[14];
ry(-pi/2) q[14];
rz(2.6527312) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(4.1383547) q[14];
rz(-pi/2) q[14];
ry(pi/2) q[14];
rx(pi) q[14];
rz(-pi/2) q[14];
rz(6.4691593) q[14];
rx(-pi/2) q[15];
rz(-0.056500949) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(4.7257271) q[15];
rz(-pi/2) q[15];
ry(pi/2) q[15];
rx(pi) q[15];
rz(-pi/2) q[15];
rz(11.540134) q[15];
rx(-pi/2) q[18];
rz(0.37666146) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(4.7338059) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(7.7058719) q[18];
rz(-0.75720715) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(5.4908421) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(11.185703) q[18];
rz(-1.0720327) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(4.3520552) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(9.5375396) q[19];
rxx(pi/2) q[3],q[19];
rx(-pi/2) q[19];
rz(0.10367029) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(4.6092713) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(7.0632288) q[19];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3.7437219) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[19];
rx(-pi/2) q[19];
rz(-0.61547971) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(5*pi/3) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(10.040258) q[19];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3.4331721) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3*pi) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[19];
rx(-pi/2) q[19];
rz(-0.22706497) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(4.6594323) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(11.007696) q[19];
rz(-1.7719053) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(5.6750733) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(9.9570571) q[19];
ry(pi/2) q[19];
rxx(pi/2) q[19],q[13];
rx(-pi/2) q[13];
rz(-0.38568765) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.0722081) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(6.9975833) q[13];
rx(-pi/2) q[19];
ry(-pi/2) q[19];
rz(-pi/2) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(3.9207942) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(5*pi/2) q[19];
ry(pi/2) q[19];
rxx(pi/2) q[19],q[13];
rx(-pi/2) q[13];
rz(-0.61547971) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5*pi/3) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(10.040258) q[13];
rx(-pi/2) q[19];
ry(-pi/2) q[19];
rz(pi/2) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(3.2997215) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(2*pi) q[19];
ry(pi/2) q[19];
rxx(pi/2) q[19],q[13];
rx(-pi/2) q[13];
rz(1.1471304) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(5.0408939) q[13];
rz(-pi/2) q[13];
ry(pi/2) q[13];
rx(pi) q[13];
rz(-pi/2) q[13];
rz(8.2025918) q[13];
rx(-pi/2) q[19];
ry(-pi/2) q[19];
rz(2.1649074) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(4.2824445) q[19];
rz(-pi/2) q[19];
ry(pi/2) q[19];
rx(pi) q[19];
rz(-pi/2) q[19];
rz(8.6069531) q[19];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-1.8451412) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5.1157925) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(9.3919695) q[3];
rz(0.33862103) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(6.1208832) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(8.8254907) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[18];
rx(-pi/2) q[18];
rz(-0.4792601) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(5.144454) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(6.9614485) q[18];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3.9918974) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[18];
rx(-pi/2) q[18];
rz(-0.61547971) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(5*pi/3) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(10.040258) q[18];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3.284866) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(2*pi) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[18];
rx(-pi/2) q[18];
rz(-0.2716529) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(4.235915) q[18];
rz(-pi/2) q[18];
ry(pi/2) q[18];
rx(pi) q[18];
rz(-pi/2) q[18];
rz(9.5869883) q[18];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(1.5695658) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(4.5102669) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(11.375528) q[3];
