import os
from qiskit.circuit import QuantumCircuit
from qiskit.quantum_info import Statevector
from itertools import product

directory = ""
directoryCCX = os.getcwd()+"/benchmarks/benchmarksCCX/"

for filename in os.listdir(directoryCCX):
  if "optimized" not in filename and "qasm" in filename:
    circ1 = QuantumCircuit.from_qasm_file(directoryCCX+filename)
    try:
      circ2 = QuantumCircuit.from_qasm_file(directory+"/"+filename)
    except:
      continue
    if (circ1.num_qubits > 8):
      continue
    equal = True
    for bits in product([0, 1], repeat=circ1.num_qubits):
      new_circ1 = QuantumCircuit(circ1.num_qubits)
      new_circ2 = QuantumCircuit(circ2.num_qubits)
      bits_list = list(bits)
      for i in range(len(bits_list)):
        if bits_list[i] == 1:
          new_circ1.x(i)
          new_circ2.x(i)
      new_circ1.compose(circ1, new_circ1.qubits, inplace=True)
      new_circ2.compose(circ2, new_circ2.qubits, inplace=True)
      if not Statevector.from_instruction(new_circ1).equiv(Statevector.from_instruction(new_circ2)):
        equal = False
    print(filename + " " + str(equal))
