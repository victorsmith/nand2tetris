// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here
  @8192
  D=A
  @i
  M=D
(LOOP)
  @KBD
  D=M
  // If KBD !=  0; goto BLACK
  @BLACK
  D;JNE
  @WHITE
  0;JMP

(BLACK)
  // If i == 0 => goto LOOP
  @i
  D=M
  @RESET
  D;JEQ
  // Else => set *(SCREEN + i) = -1 && decrement n by 1
  @SCREEN
  D=A
  @i
  A=M+D
  M=-1
  @i
  M=M-1
  // Restart the loop
  @BLACK
  0;JMP

(WHITE)
   // If i == 0 => goto LOOP
  @i
  D=M
  @RESET
  D;JEQ
  // Else => set *(SCREEN + i) = -1 && decrement n by 1
  @SCREEN
  D=A
  @i
  A=M+D
  M=0
  @i
  M=M-1
  // Restart the loop
  @WHITE
  0;JMP


(RESET)
  @8192
  D=A
  @i
  M=D

  @LOOP
  0;JMP




