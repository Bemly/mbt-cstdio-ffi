// Copyright 2024 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

test "no file test" {
    // TEST Value: fopen perror isNULL
    let fd: FILE = fopen(b"no-exist.txt\x00", b"r+\x00")
    perror("fopen")
    assert_eq!(isNULL(fd), true)
}

test "file write&append test" {
    // TEST Value: fopen perror isNULL

    // open file stream
    let fd: FILE = fopen(b"test.txt\x00", b"w+\x00")
    perror("fopen")
    assert_eq!(isNULL(fd), false)

    // write to file

}

test "unsafe printf test" {
    // TEST Value: printf
    println(("printf0: ", printf_bytes(b"Hello, world!\n\x00")))
    println(("printf1: ", unsafe_printf_1(b"%s\n\x00", ignore_type(b"str\x00"))))
    println(("printf2: ", unsafe_printf_1(b"%d\n\x00", ignore_type(20))))
    println(("printf3: ", unsafe_printf_2(b"%d %s\n\x00", ignore_type(234), ignore_type(b"www\x00"))))
}

test "string printf test" {
    let char = '🥵'
    printf_string("Hello, world!")
    printf_string("Hello, world!")
    printf_string("Hello, world!")
    let str = 
    #| \n
    $| \{char} 嘻嘻
    #| okok
    #|
    printf_string(str)
}