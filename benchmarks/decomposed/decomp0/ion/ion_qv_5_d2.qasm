OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
rz(2.4047853) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(4.3447013) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(10.840452) q[0];
rz(0.044380806) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(4.7663109) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(11.65938) q[1];
rz(-1.4236689) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3.7686703) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(8.548122) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[1];
rx(-pi/2) q[1];
rz(-0.39244675) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5.0776754) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(6.995186) q[1];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(-pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(4.0308818) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[1];
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
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(-pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3.5934171) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3*pi) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[2],q[1];
rx(-pi/2) q[1];
rz(-2.1266204) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(4.3269193) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(7.9251409) q[1];
rz(-2.6623055) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(4.8768704) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(6.9229962) q[1];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(2.2103753) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5.1553429) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(8.6484601) q[2];
rz(0.51355663) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5.2408899) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(9.545375) q[3];
ry(pi/2) q[3];
rz(0.67896632) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(4.5309135) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(7.8556974) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[0];
rx(-pi/2) q[0];
rz(-0.49483583) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5.1557453) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(6.9548462) q[0];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(3.9349394) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[0];
rx(-pi/2) q[0];
rz(-0.61547971) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/3) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(10.040258) q[0];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(3.4713719) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(2*pi) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[0];
rx(-pi/2) q[0];
rz(-0.0384772) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(4.5659769) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(8.3024205) q[0];
rz(1.6114823) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(4.8723302) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(11.465119) q[0];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
rz(-0.54595935) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5.1913084) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(6.9320903) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3.9317046) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
rz(-0.61547971) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/3) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(10.040258) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3.156801) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3*pi) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[3],q[0];
rx(-pi/2) q[0];
rz(-0.47014876) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5.1214473) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(11.020061) q[0];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(2.2308781) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5.8216764) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(6.8850572) q[3];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-2.8614599) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(4.7616079) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(6.3257681) q[4];
rz(-1.014765) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(4.1134756) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(9.7748884) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[1];
rx(-pi/2) q[1];
rz(-0.53413185) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5.1832853) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(6.9374986) q[1];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(4.2809229) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(5*pi/2) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[1];
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
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(3.3534343) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(2*pi) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[4],q[1];
rx(-pi/2) q[1];
rz(1.8595126) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3.5170955) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(9.1061806) q[1];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-1.2779262) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(4.3633888) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(6.6690324) q[4];
