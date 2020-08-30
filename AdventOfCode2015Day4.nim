import md5

var key = "bgvyzdsv"

proc `++`(i : var int) = i += 1

proc gen(s : string) : int =
    var i : int
    while true:
        if getMD5(s & $i)[0..5] == "000000":
            return i
        ++i

echo key.gen