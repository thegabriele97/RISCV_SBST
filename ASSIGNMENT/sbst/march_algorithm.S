.section .text.run_march_algorithm
.global _run_march_algorithm
.type _run_march_algorithm, @function

_march_LA:                          // Execution of the March LA algorithm - a0 contains the 000000000 pattern
    not a1, a0                      // Negated pattern that is stored in a0
    la t0, RAM_LOCATION             // Load location that contains memory information
	lw t1, 0*4(t0)                  // RAM starting location
    lw t2, 1*4(t0)                  // RAM end location

    m1:
        loop_m1:
            sw a0, 0*4(t1)          // w0
            addi t1, t1, 4          // Add to reach new RAM location
        bne t1, t2, loop_m1         // Check if reached end location
    
    m2:
	    lw t1, 0*4(t0)              // RAM starting location
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
        lw t2, 1*4(t0)              // RAM end location
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
        lw t2, 1*4(t0)              // RAM end location
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
	    lw t1, 0*4(t0)              // RAM starting location
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
	    lw t1, 0*4(t0)              // RAM starting location
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


_run_march_algorithm:                // C wrapper
    call _march_LA                   // Must execute 8 times with different patterns
    ret


RAM_LOCATION:
	.long 0x00200000                // RAM starting location
	.long 0x00240000                // RAM end location