var inp = @[1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,10,19,1,19,5,23,2,23,6,27,1,27,5,31,2,6,31,35,1,5,35,39,2,39,9,43,1,43,5,47,1,10,47,51,1,51,6,55,1,55,10,59,1,59,6,63,2,13,63,67,1,9,67,71,2,6,71,75,1,5,75,79,1,9,79,83,2,6,83,87,1,5,87,91,2,6,91,95,2,95,9,99,1,99,6,103,1,103,13,107,2,13,107,111,2,111,10,115,1,115,6,119,1,6,119,123,2,6,123,127,1,127,5,131,2,131,6,135,1,135,2,139,1,139,9,0,99,2,14,0,0]  # Replace with an seq of your key, very easy to copypaste

inp[1] = 12; inp[2] = 2  # Replacements requested by the challenge, no idea why they want this

proc `++`(i : var int) = i += 4  # I just like writing ++ proc

func solve(s : var seq[int]) : int =  # Pure function
    var i : int
    while true:
        if s[i] == 1:  # Weird opcode rules
            s[s[i + 3]] = s[s[i + 1]] + s[s[i + 2]]
        elif s[i] == 2:  # Must be elif
            s[s[i + 3]] = s[s[i + 1]] * s[s[i + 2]]
        elif s[i] == 99:  # Also must be elif
            return s[0]
        ++i

echo solve inp  # UCFS is nice, solve(inp) and solve inp are all valid nim