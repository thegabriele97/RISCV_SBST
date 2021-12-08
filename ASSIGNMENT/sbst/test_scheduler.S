.section .text.scheduler_test
.global _scheduler_test
.type _scheduler_test, @function

####################################################################################
# Software Based Selft Test  -- MAIN SCHEDULER --                                  #
# Overall Coverage:                 91.90%                                         #
#    - ALU:                         xx.xx%                                         #
#    - MUL:                         xx.xx%                                         #
#    -  RF:                         xx.xx%                                         #
# Engineers:                        Battilana Matteo, La Greca Salvatore Gabriele  #
#                                                                                  #
#                                                                                  #
#                                                    _nnnn_                        #
#                                                   dGGGGMMb     ,"""""""""""""".  #
#                                                  @p~qp~~qMb    | Linux Rules! |  #
#                                                  M|@||@) M|   _;..............'  #
#                                                  @,----.JM| -'                   #
#                                                 JS^\__/  qKL                     #
#                                                dZP        qKRb                   #
#                                               dZP          qKKb                  #
#                                              fZP            SMMb                 #
#                                              HZM            MMMM                 #
#                                              FqM            MMMM                 #
#                                              __| ".        |\dS"qML              #
#                                             |    `.       | `' \Zq               #
#                                            _)      \.___.,|     .'               #
#                                            \____   )MMMMMM|   .'                 #
#                                                 `-'       `--'                   #
####################################################################################


######################################################################################
# Procedure Name: Test Scheduler                                                     #
# Arguments:      Requires a vector of test signatures and a vector of flags         #
#                 to enable disable sub routines (1=run routine; 0=skip routine).    #
# Description:    Executes all the sub routine that are enable (see vector of flags) #
#                 meant to test all the subparts composing the ALU, the MAC and      #
#                 Register File of this CPU. The maximum coverage is guaranteed only #
#                 with all procedures enabled.                                       #
#                 All sub procedures are guaranteed to last at most 1000 ccs. They   #
#                 can be invoked separately at different times without corrupting    #
#                 the maximum coverage.                                              #
#                 Based on the signature returned by the procedures and the vector   #
#                 of test signature given as input to this procedure, the scheduler  #
#                 will decide to halt the CPU or not if the test doesn't succeed.    #
# Register Usage:                                                                    #
#   * a1 - Pointer to the current in the vector of test signatures. Used to compute  #
#          the expected signature.                                                   #
#   * a0 - Vector of flags for sub routine enabling, to use as follow:               #
#   *    - a1.00 <-> a1.10: alu                                                      #
#   *    - a1.11 <-> a1.14: mul                                                      #
#   *    - a1.11 <-> a1.14: mul                                                      #
#   * s0 - Stores the expected signature                                             #
#   * s1 - Stores the original value of a0. a0 will be the result from the           #
#          sub procedures.                                                           #
######################################################################################
_scheduler_test:
    
    sw ra, 0(sp)
    sw a0, 4(sp)
    sw a1, 8(sp)
    sw s0, 12(sp)
    sw s1, 16(sp)
    add sp, sp, 16

    mv s1, a0

    # ALU TEST #

    #mv t0, s1
    #li t1, 0x1ffff
    #and t0, t0, t1
    #p.cnt t0, t0 # Population counting for ALU's flags

    #mv s0, x0
    #j loop_if_
    #loop_:
    #    lw t2, 0(a1)
    #    xor s0, s0, t2
    #    add a1, a1, 4
    #    add t0, t0, -1
    #loop_if_:
    #    bne t0, x0, loop_

    li t0, 0x1ffff
    and a0, s1, t0
    call _get_sig
    mv s0, a0

    mv a0, s1
    call _alu_test
    bne a0, s0, _halt_cpu

    srl s1, s1, 0x11
    li t0, 0x7
    and a0, s1, t0
    call _get_sig
    mv s0, a0

    mv a0, s1
    call _mul_test
    bne a0, s0, _halt_cpu

    #srl a0, a0, 0x03
    #call _rf_test


    add sp, sp, -16
    lw s1, 10(sp)
    lw s0, 10(sp)
    lw a1, 8(sp)
    lw a0, 4(sp)
    lw ra, 0(sp)

    ret

# a0: flags
# a1: pointer
_get_sig:
    p.cnt t0, a0 # population counting for flags
    mv a0, x0
    j loop_if_
    loop_:
        lw t1, 0(a1)
        xor a0, a0, t1
        add a1, a1, 4
        add t0, t0, -1
    loop_if_:
        bne t0, x0, loop_     

    ret

_halt_cpu:
    j _halt_cpu

