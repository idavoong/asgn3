	.global main 	#main is a label that other programs and files can see.
	.text	# Tell the assembler that we are writing code (text) now 
main:
	la	a0, intro	# put intro into a0
	li	a7, 4		# string prompt
	ecall			# print statement
	la	a0, prompt1	#prints prompt1
	li	a7, 4
	ecall	
	li 	a7, 5		#reads user prompt
	ecall
	mv	t0, a0		#moves prmopt to register t0
for_start:

for_loop:
	
	
for_end:
	li	a7, 10		#ends program
	ecall



	.data
intro:	.string	"Welcome to the CountOnes program.\n\n"
prompt1:	.string "Please enter a number: "
result: .string "The number of bits set is : "
prompt2:	.string "Continue (y/n)?: "