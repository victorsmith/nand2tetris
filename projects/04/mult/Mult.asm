// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// Pseudo code
// LOOP:
//   if (R1 == 0) goto END
//   // Add R0 to the result 'r1' times
//   // Decrement R1 each time
//   R2 = R2 + R0
//   R1 = R1 - 1
//   GOTO LOOP
// END:

  // Initialize R2 to zero 
  @R2
  M=0
(LOOP)
  // Check if R1 == 0 -> Goto end if true
  @R1
  D=M
  @END
  D;JEQ
  // Continue with loop opeartions if false
  @R0
  D=M
  @R2 
  M=M+D
  // Decrement R1 value by 1
  @1
  D=A
  @R1
  M=M-D
  // GOTO to LOOP
  @LOOP
  0;JMP

(END)
  @END
  0;JMP




