import md5
var key = "wtnhxymk"

proc `++`(i : var int) = i += 1

proc gen(s : string) : seq[char] =
    var i = 0
    while true:
        var hash = getMD5(s & $i)
        if hash[0..4] == "00000":
            result.add(hash[5])
            echo result
            echo s & $i
        if result.len == 8:
            return result
        ++i

for c in key.gen:
    stdout.write(c)