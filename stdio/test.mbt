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

///| test: fopen failure on non-existent file
test "no file test" {
  let fd = fopen(b"no-exist.txt\x00", b"r+\x00")
  perror("fopen no-exist")
  assert_eq!(isNULL(fd), true)
}

///| test: file write and read roundtrip
test "file write&read test" {
  let fd = fopen(b"test.txt\x00", b"w+\x00")
  assert_eq!(isNULL(fd), false)

  let msg = b"Hello, Moonbit FFI!\x00"
  let written = fwrite(msg, 1, 21, fd)
  assert_eq!(written, 21)

  let flush_result = fflush(fd)
  assert_eq!(flush_result, 0)

  let seek_result = fseek(fd, 0, seek_set())
  assert_eq!(seek_result, 0)

  let buf = make_buf(64)
  let read_count = fread(buf, 1, 21, fd)
  assert_eq!(read_count, 21)

  let close_result = fclose(fd)
  assert_eq!(close_result, 0)
}

///| test: ftell returns correct position
test "ftell test" {
  let fd = fopen(b"test.txt\x00", b"r+\x00")
  assert_eq!(isNULL(fd), false)

  let pos1 = ftell(fd)
  assert_eq!(pos1, 0)

  let _ = fseek(fd, 0, seek_end())
  let pos2 = ftell(fd)
  assert_eq!(pos2, 21)

  let _ = fclose(fd)
}

///| test: tmpfile creates temporary file
test "tmpfile test" {
  let tmp = tmpfile()
  assert_eq!(isNULL(tmp), false)

  let msg = b"temp data\x00"
  let written = fwrite(msg, 1, 10, tmp)
  assert_eq!(written, 10)

  rewind(tmp)
  let buf = make_buf(64)
  let read_count = fread(buf, 1, 10, tmp)
  assert_eq!(read_count, 10)

  let _ = fclose(tmp)
}

///| test: remove file
test "remove test" {
  let fd = fopen(b"to_remove.txt\x00", b"w\x00")
  assert_eq!(isNULL(fd), false)
  let _ = fclose(fd)

  let result = remove(b"to_remove.txt\x00")
  assert_eq!(result, 0)
}

///| test: rename file
test "rename test" {
  let fd = fopen(b"old_name.txt\x00", b"w\x00")
  assert_eq!(isNULL(fd), false)
  let _ = fclose(fd)

  let result = rename(b"old_name.txt\x00", b"new_name.txt\x00")
  assert_eq!(result, 0)

  let _ = remove(b"new_name.txt\x00")
}

///| test: unsafe printf
test "unsafe printf test" {
  assert_eq!(printf_bytes(b"Hello, world!\n\x00") > 0, true)
  assert_eq!(unsafe_printf_1(b"%s\n\x00", ignore_bytes(b"test\x00")) > 0, true)
  assert_eq!(unsafe_printf_1(b"%d\n\x00", ignore_int(42)) > 0, true)
  assert_eq!(unsafe_printf_2(b"%d %s\n\x00", ignore_int(123), ignore_bytes(b"abc\x00")) > 0, true)
}

///| test: string printf
test "string printf test" {
  printf_string("Hello, world!\n")
  printf_string("Unicode test: \u{1F975}\n")
}

///| test: fprintf to file
test "fprintf test" {
  let fd = fopen(b"fprintf_test.txt\x00", b"w\x00")
  assert_eq!(isNULL(fd), false)

  let written = fprintf_1(fd, b"Hello %s!\x00", ignore_bytes(b"File\x00"))
  assert_eq!(written > 0, true)

  let _ = fclose(fd)
  let _ = remove(b"fprintf_test.txt\x00")
}

///| test: sprintf
test "sprintf test" {
  let buf = make_buf(64)
  let len = sprintf_1(buf, b"Value: %d\x00", ignore_int(42))
  assert_eq!(len, 9)
}

///| test: snprintf safety
test "snprintf test" {
  let buf = make_buf(8)
  let len = snprintf_1(buf, 8, b"Hello %s world\x00", ignore_bytes(b"big\x00"))
  assert_eq!(len > 7, true)
}

///| test: fseek from different positions
test "fseek positions test" {
  let fd = fopen(b"test.txt\x00", b"r\x00")
  assert_eq!(isNULL(fd), false)

  assert_eq!(fseek(fd, 5, seek_set()), 0)
  assert_eq!(ftell(fd), 5)

  assert_eq!(fseek(fd, 3, seek_cur()), 0)
  assert_eq!(ftell(fd), 8)

  assert_eq!(fseek(fd, -5, seek_end()), 0)
  assert_eq!(ftell(fd), 16)

  let _ = fclose(fd)
}

///| test: feof and ferror
test "feof ferror test" {
  let fd = fopen(b"test.txt\x00", b"r\x00")
  assert_eq!(isNULL(fd), false)

  assert_eq!(ferror(fd), 0)

  let buf = make_buf(256)
  let _ = fread(buf, 1, 256, fd)

  clearerr(fd)
  assert_eq!(ferror(fd), 0)

  let _ = fclose(fd)
}

///| test: macro constants
test "macro constants test" {
  assert_eq!(seek_set(), 0)
  assert_eq!(seek_cur(), 1)
  assert_eq!(seek_end(), 2)
  assert_eq!(eof() < 0, true)
  assert_eq!(bufsize() > 0, true)
  assert_eq!(fopen_max() > 0, true)
  assert_eq!(filename_max() > 0, true)
}

///| test: setvbuf
test "setvbuf test" {
  let fd = fopen(b"test.txt\x00", b"r\x00")
  assert_eq!(isNULL(fd), false)

  let result = setvbuf(fd, b"\x00", ionbf(), 0)
  assert_eq!(result, 0)

  let _ = fclose(fd)
}

///| test: fputs and fgets
test "fputs fgets test" {
  let fd = fopen(b"fputs_test.txt\x00", b"w+\x00")
  assert_eq!(isNULL(fd), false)

  let msg = b"line1\nline2\n\x00"
  let _ = fputs(msg, fd)
  let _ = fflush(fd)

  let _ = fseek(fd, 0, seek_set())

  let buf = make_buf(32)
  let _ = fgets(buf, 32, fd)

  let _ = fclose(fd)
  let _ = remove(b"fputs_test.txt\x00")
}
