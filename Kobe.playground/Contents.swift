//: A UIKit based Playground for presenting user interface

import PlaygroundSupport

let hello = "안녕하세요"
let an = "안"
let ah = "아"

var binary = ""
var binary2 = ""
var binary3 = ""

for i in hello.utf8 {
    binary += (String(i, radix: 2) + "\n")
}

print(binary)

for i in an.utf8 {
    binary2 += (String(i, radix: 2) + "\n")
}

print(binary2)
for i in ah.utf8 {
    binary3 += (String(i, radix: 2) + "\n")
}

print(binary3)
