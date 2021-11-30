.section .text.run_march_algorithm
.global _run_march_algorithm
.type _run_march_algorithm, @function

_march_LA_test:
    li x31, 2
    not a1, a0                      // Negated pattern that is stored in a0
	la t1, __RAM_DATA_START        // RAM starting location
    la t2, __RAM_DATA_END           // RAM end location
    // addi t2, t2, 8

    li x31, 3
    m12:
        loop_m12:
            sw a0, 0*4(t1)          // w0
            addi t1, t1, 4          // Add to reach new RAM location
        blt t1, t2, loop_m12         // Check if reached end location
    li x31, 4
    ret



_march_LA:                          // Execution of the March LA algorithm - a0 contains the 000000000 pattern
    not a1, a0                      // Negated pattern that is stored in a0
	la t1, __TEST_DATA_START        // RAM starting location
    la t2, __RAM_DATA_END           // RAM end location

    m1:
        loop_m1:
            sw a0, 0*4(t1)          // w0
            addi t1, t1, 4          // Add to reach new RAM location
        bne t1, t2, loop_m1         // Check if reached end location
    
    m2:                                                         
	    la t1, __TEST_DATA_START        // RAM starting location
        la t2, __RAM_DATA_END           // RAM end location
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
	    la t1, __TEST_DATA_START        // RAM starting location
        la t2, __RAM_DATA_END           // RAM end location
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
	    la t1, __TEST_DATA_START        // RAM starting location
        la t2, __RAM_DATA_END           // RAM end location
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
	    la t1, __TEST_DATA_START        // RAM starting location
        la t2, __RAM_DATA_END           // RAM end location
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
	    la t1, __TEST_DATA_START        // RAM starting location
        la t2, __RAM_DATA_END           // RAM end location
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



_run_march_algorithm:                // Entry point    
    li x31, 1
    add t4, x0, ra
    li a0, 0                         // First pattern  
    call _march_LA_test                  
    li x31, 5
    bne a0, x0, exit_test_error

    //or a0, x0, 0xFF                // 2 pattern
    //sll a0, a0, 8               
  //or a0, x0, 0xFF                
  //call _march_LA                  
  //bne a0, x0, exit_test_error

  //  or a0, x0, 0xFF                // 3 pattern
  //  sll a0, a0, 16               
  //or a0, x0, 0xFF               
  //call _march_LA                  
  //bne a0, x0, exit_test_error

  //  or a0, x0, 0x0F                // 4 pattern
  //  sll a0, a0, 8             
  //or a0, x0, 0x0F                
  //sll a0, a0, 8      
  //or a0, x0, 0x0F               
  //sll a0, a0, 8     
  //or a0, x0, 0x0F                
  //call _march_LA                  
  //bne a0, x0, exit_test_error

  //  or a0, x0, 0x33                // 5 pattern
  //  sll a0, a0, 8             
  //or a0, x0, 0x33                
  //sll a0, a0, 8      
  //or a0, x0, 0x33               
  //sll a0, a0, 8   
  //  or a0, x0, 0x33   
  //  call _march_LA                  
  //bne a0, x0, exit_test_error

  //  or a0, x0, 0x55                // 6 pattern
  //  sll a0, a0, 8             
  //or a0, x0, 0x55                
  //sll a0, a0, 8      
  //or a0, x0, 0x55               
  //sll a0, a0, 8   
  //  or a0, x0, 0x55 
  //  call _march_LA                  
  //bne a0, x0, exit_test_error

    li a0, 0
    j exit_test
    exit_test_error:
        li a0, 1
    exit_test:

    add ra, x0, t4
    li x31, 6
    ret
