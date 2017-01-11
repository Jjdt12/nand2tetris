// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
	@8192
	D=A
	@count
	M=D

(LOOP)
	@index
	M=0
(CHECK)
	@KBD
	D=M
	@WHITE
	D;JEQ
(BLACK)
	@index
	D=M
	@SCREEN
	A=A+D
	M=-1
	@END
	0;JMP
(WHITE)
	@index
	D=M
	@SCREEN
	A=A+D
	M=0
(END)
	@index
	M=M+1
	@count
	D=D-M
	@LOOP
	D;JEQ
	@CHECK
	0;JMP
