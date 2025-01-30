> [!IMPORTANT]  
> This repository has been subsumed by https://github.com/qqq-wisc/guoq. Please refer to the instructions there on how to use QUESO.

# QUESO
This is a tool for synthesizing quantum-circuit optimizers as described in [[1]](https://arxiv.org/abs/2211.09691). 
To reproduce the experimental conditions of the paper, see the [Zenodo artifact](https://zenodo.org/records/7809285), which contains a Docker image with everything set up.

## Dependencies
- Java 17
- Maven 3

## Installation

```bash
git clone https://github.com/qqq-wisc/queso.git
cd queso
mvn package -Dmaven.test.skip
```

The JAR will be in `queso/target`.

## Usage

### Supported Gate Sets
If the gate set you are looking for is not in this list, read on to the next section to see how to add a new gate set. 
Additionally, feel free to open an issue requesting a new gate set. Pull requests adding new gate sets are welcome!

- IBM (old): u1, u2, u3, cx
- IBM (new): rz, sx, x, cx
- Rigetti: rx(pi/2), rx(-pi/2), rx(pi), rz, cz
- Ion trap: rx, ry, rz, rxx
- Nam [[2]](https://www.nature.com/articles/s41534-018-0072-4): h, rz, x, cx

### Defining a New Gate Set
1. Derive path sum semantics for the relevant gates
2. Implement path sum semantics in a method in PathSum.java for each gate
3. Add each new gate to `applyGate(...)` in Synthesizer.java and specify how angles should be enumerated if this is a parameterized gate
4. Add the gate set at the bottom of Synthesizer.java with the desired angles

### Synthesizing Rules

To see options available:
```bash
java --enable-preview -cp target/QUESO-1.0-jar-with-dependencies.jar Synthesizer
```

Example commands:
```bash
java --enable-preview -cp target/QUESO-1.0-jar-with-dependencies.jar Synthesizer -g nam -q 3 -s 3
java --enable-preview -cp target/QUESO-1.0-jar-with-dependencies.jar Synthesizer -g nam -q 3 -s 6
```

### Optimizing a Circuit

To see options available:
```bash
java --enable-preview -cp target/QUESO-1.0-jar-with-dependencies.jar Optimizer
```

Example command:
```bash
java --enable-preview -cp target/QUESO-1.0-jar-with-dependencies.jar Optimizer -c benchmarks/decomposed/decomp0/nam_rz/decomp0_tof_3.qasm -g nam -r rules_q3_s6_nam.txt -sr rules_q3_s3_nam_symb.txt -t 3600 -o optimized_benchmarks -j "nam"
```

The following rule sizes result in the best performance:
|           | Not Symbolic | Symbolic |
|-----------|--------------|----------|
| Nam       | 6            | 3        |
| IBM (old) | 4            | 3        |
| Rigetti   | 5            | 3        |
| Ion trap  | 3            | 3        |


## References
[1] Amanda Xu, Abtin Molavi, Lauren Pick, Swamit Tannu, Aws Albarghouthi. Synthesizing quantum-circuit optimizers. Proceedings of the ACM on Programming Languages. Volume 7, PLDI, 2023. https://doi.org/10.1145/3591254

[2] Yunseong Nam, Neil J Ross, Yuan Su, Andrew M Childs, and Dmitri Maslov. 2018. Automated optimization of large quantum circuits with continuous parameters. npj Quantum Information 4, 1 (2018), 1-12.
