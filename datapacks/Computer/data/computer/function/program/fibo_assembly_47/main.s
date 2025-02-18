### COMPUTE FIBO 11 ###
### USING RISC32-Im ###
### from https://stackoverflow.com/questions/65753763/fibonacci-function-in-risc-v ###
main:

            li x2, 0                # Used to determine if n (x7) equals 0
            li x3, 1                # Used to determine if n (x7) equals 1
            li x5, 0                # First number
            li x6, 1                # Second number
            lw x7, n                # Limit
            li x8, 1                # Counter
            beq x7, x2, DO          # If n == 0 then jump to DO (Which shoud print 0). Implements f(0) = 0
            beq x7, x3, WRITE       # if n == 1 then jump to WRITE (Which should print 1). Implements f(1) = 1  

    LOOP:   beq x8, x7, EXIT        # Comparse the counter x8 which starts with 1 to n (limit). If x8 == x7 jump to EXIT
            add x4, x5, x6          # Add x5 to x6 and store in x4          
            ori x5, x6, 0           # Assign the second number to my first number
            ori x6, x4, 0           # Assign the sum of x5 and x6 to my second number
            addi x8, x8, 1          # Add 1 to my counter
            j LOOP                  # Jump to loop


    DO:   
            li x4, 0                # load 0 in x10 (x10 will be used by the SysCall to print) and print            
            add x10,x4,x0       
            li x17, 1
            li x17, 5
            li x17, 10

    WRITE:  li x4, 1                # load 1 in x10 and print
            add x10,x4,x0
            li x17,1
            li x17, 5
            li x17, 10
            
EXIT:   
            li x17, 1               # Load constant 1 to x17
            add x10,x4,x0           # Add x4 (which contains the result after the above coe) to x10
            li x17, 5                                   
            li x17, 10  
            ret    
    .data
    n:  .word 47