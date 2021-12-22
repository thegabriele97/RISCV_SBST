.section .text.run_march_algorithm
.global _run_march_algorithm
.type _run_march_algorithm, @function

_march_LA:                          // Execution of the March LA algorithm - a0 contains the 000000000 pattern
    not a1, a0                      // Negated pattern that is stored in a0
    la t1, __RAM_START              // RAM starting location
    la t2, __RAM_END           // RAM end location

    m1:
        loop_m1:
            sw a0, 0*4(t1)          // w0
            addi t1, t1, 4          // Add to reach new RAM location
        bne t1, t2, loop_m1         // Check if reached end location
    
    m2:                                                         
	    la t1, __RAM_START        // RAM starting location
        la t2, __RAM_END           // RAM end location
        addi t2, t2, -4   
        loop_m2:                                
            lw t3, 0*4(t2)          // r0
            bne t3, a0, exit_error  // r0
            sw a1, 0*4(t2)          // w1
            sw a0, 0*4(t2)          // w0
            sw a1, 0*4(t2)          // w1
            lw t3, 0*4(t2)          // r1
            bne t3, a1, exit_error  // r1
            
            addi t2, t2, -4         // Add to reach new RAM location
        bne t1, t2, loop_m2         // Check if reached end location
    
    m3:
	    la t1, __RAM_START        // RAM starting location
        la t2, __RAM_END           // RAM end location
        addi t2, t2, -4   
	    loop_m3:
            lw t3, 0*4(t2)          // r1
            bne t3, a1, exit_error  // r1
            sw a0, 0*4(t2)          // w0
            sw a1, 0*4(t2)          // w1
            sw a0, 0*4(t2)          // w0
            lw t3, 0*4(t2)          // r0
            bne t3, a0, exit_error  // r0
            
            addi t2, t2, -4         // Add to reach new RAM location
        bne t1, t2, loop_m3         // Check if reached end location
        
    m4:
	    la t1, __RAM_START        // RAM starting location
        la t2, __RAM_END           // RAM end location
	    loop_m4:
            lw t3, 0*4(t1)          // r0
            bne t3, a0, exit_error  // r0
            sw a1, 0*4(t1)          // w1
            sw a0, 0*4(t1)          // w0
            sw a1, 0*4(t1)          // w1
            lw t3, 0*4(t1)          // r1
            bne t3, a1, exit_error  // r1
            
            addi t1, t1, 4          // Add to reach new RAM location
        bne t1, t2, loop_m4         // Check if reached end location
        
    m5:
	    la t1, __RAM_START        // RAM starting location
        la t2, __RAM_END           // RAM end location
	    loop_m5:
            lw t3, 0*4(t1)          // r1
            bne t3, a1, exit_error  // r1
            sw a0, 0*4(t1)          // w0
            sw a1, 0*4(t1)          // w1
            sw a0, 0*4(t1)          // w0
            lw t3, 0*4(t1)          // r0
            bne t3, a0, exit_error  // r0
            
            addi t1, t1, 4          // Add to reach new RAM location
        bne t1, t2, loop_m5         // Check if reached end location
        
    m6:
	    la t1, __RAM_START        // RAM starting location
        la t2, __RAM_END           // RAM end location
	    loop_m6:
            lw t3, 0*4(t1)          // r0
            bne t3, a0, exit_error  // r0
            
            addi t1, t1, 4          // Add to reach new RAM location
        bne t1, t2, loop_m6         // Check if reached end location
        

    li a0, 0
    j exit_march_LA
    exit_error:
        li a0, 1
    exit_march_LA:
        ret



_run_march_algorithm:              // Entry point    
    li x31, 1
    add t4, x0, ra
    li a0, 0                       // 1 pattern  
    li x30, 0x12345678 # triggers sim log for checkpoint
    call _march_LA                  
    li x31, 5
    bne a0, x0, exit_test_error

    li a0, 0x0000ffff              // 2 pattern
    li x30, 0x12345678 # triggers sim log for checkpoint
    call _march_LA                  
    bne a0, x0, exit_test_error

    li a0, 0x00ff00ff              // 3 pattern
    li x30, 0x12345678 # triggers sim log for checkpoint
    call _march_LA                  
    bne a0, x0, exit_test_error

    li a0, 0x0f0f0f0f              // 4 pattern
    li x30, 0x12345678 # triggers sim log for checkpoint
    call _march_LA                  
    bne a0, x0, exit_test_error

    li a0, 0x33333333              // 5 pattern
    li x30, 0x12345678 # triggers sim log for checkpoint
    call _march_LA                  
    bne a0, x0, exit_test_error

    li a0, 0x55555555              // 6 pattern
    li x30, 0x12345678 # triggers sim log for checkpoint
    call _march_LA                  
    bne a0, x0, exit_test_error

    li a0, 0
    j exit_test
    exit_test_error:
        li a0, 1
    exit_test:

    add ra, x0, t4
    li x31, 6
    ret
