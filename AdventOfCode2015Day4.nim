import md5
var key = "wtnhxymk" # Replace this with the key given to you by the site

proc `++`(i : var int) = i += 1  # Simple increment helper proc

proc gen(s : string) : seq[char] =
    var i = 0  # The ticking int required by the challenge
    while true:
        var hash = getMD5(s & $i) # Requires importing md5. Counts as a side effect, so I have to use proc keyword
        if hash[0..4] == "00000":  # x..y defines the range to check substr in
            result.add(hash[5]) 
        if result.len == 8:
            return result  # return keyword breaks the while and exits the proc
        ++i 

for c in key.gen:  # This just writes out the digits on the same line as a string for easy submission
    stdout.write(c)
