# TODO: ARYAAN SAPPAYANI 935009763
# TODO: Write your pseudocode here. 

"""
First set the known values at the correct registers
ram0 = 0
ram1 = 1

currRegister = 2, this will be what register we need to write to
counter = 8, this will be our loop counter 

loop:
    if counter != 0 then continue
    otherwise end program by going to @exit

    A = currRegister - 1 (get address of previous register)
    D = M (get the value of the previous register)

    A = currRegister - 2(get address of previous previous register)
    D = D + M (this will get value of register before previous register, then add those values together)

    A = currRegister
    M = D (write that value to the register which should be denoted by currRegister)

    currRegister = currRegister + 1 (move to the next register)
    counter = counter - 1 

    jump back to beginning

@exit
end program



    





"""