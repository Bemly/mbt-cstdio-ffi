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

///| int scanf(const char *format, ...);
///
/// 从标准输入 stdin 读取格式化输入。
///
/// 参数 :
/// - `format`: 格式化字符串，以 `\x00` 结尾
/// - `a`: 输出缓冲区，使用 `Bytes::make(size, 0uy)` 预先分配
///
/// 返回值 :
/// - `Int`: 成功匹配并赋值的项数，若输入失败或到达文件末尾返回 EOF(-1)
///
/// 警告 :\
/// 此函数为 unsafe 版本，需自行保证缓冲区类型和数量与 format 匹配。\
/// 对于 `%d` 等数值格式，需分配 4 字节以上的缓冲区。
///
/// 示例 :
#borrow(format, a)
pub extern "C" fn scanf_1(format : Bytes, a : Bytes) -> Int = "scanf_1_ffi"

///|
#borrow(format, a, b)
pub extern "C" fn scanf_2(
  format : Bytes,
  a : Bytes,
  b : Bytes,
) -> Int = "scanf_2_ffi"

///|
#borrow(format, a, b, c)
pub extern "C" fn scanf_3(
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
) -> Int = "scanf_3_ffi"

///|
#borrow(format, a, b, c, d)
pub extern "C" fn scanf_4(
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
) -> Int = "scanf_4_ffi"

///|
#borrow(format, a, b, c, d, e)
pub extern "C" fn scanf_5(
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
) -> Int = "scanf_5_ffi"

///|
#borrow(format, a, b, c, d, e, f)
pub extern "C" fn scanf_6(
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
) -> Int = "scanf_6_ffi"

///|
#borrow(format, a, b, c, d, e, f, g)
pub extern "C" fn scanf_7(
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
  g : Bytes,
) -> Int = "scanf_7_ffi"

///|
#borrow(format, a, b, c, d, e, f, g, h)
pub extern "C" fn scanf_8(
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
  g : Bytes,
  h : Bytes,
) -> Int = "scanf_8_ffi"

///| int fscanf(FILE *stream, const char *format, ...);
///
/// 从指定的流 stream 读取格式化输入。
///
/// 参数 :
/// - `stream`: 文件流指针
/// - `format`: 格式化字符串，以 `\x00` 结尾
/// - `a`: 输出缓冲区
///
/// 返回值 :
/// - `Int`: 成功匹配并赋值的项数，若输入失败或到达文件末尾返回 EOF(-1)
///
/// 警告 :\
/// 此函数为 unsafe 版本，需自行保证缓冲区类型和数量与 format 匹配。
///
/// 示例 :
#borrow(stream, format, a)
pub extern "C" fn fscanf_1(
  stream : FILE,
  format : Bytes,
  a : Bytes,
) -> Int = "fscanf_1_ffi"

///|
#borrow(stream, format, a, b)
pub extern "C" fn fscanf_2(
  stream : FILE,
  format : Bytes,
  a : Bytes,
  b : Bytes,
) -> Int = "fscanf_2_ffi"

///|
#borrow(stream, format, a, b, c)
pub extern "C" fn fscanf_3(
  stream : FILE,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
) -> Int = "fscanf_3_ffi"

///|
#borrow(stream, format, a, b, c, d)
pub extern "C" fn fscanf_4(
  stream : FILE,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
) -> Int = "fscanf_4_ffi"

///|
#borrow(stream, format, a, b, c, d, e)
pub extern "C" fn fscanf_5(
  stream : FILE,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
) -> Int = "fscanf_5_ffi"

///|
#borrow(stream, format, a, b, c, d, e, f)
pub extern "C" fn fscanf_6(
  stream : FILE,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
) -> Int = "fscanf_6_ffi"

///|
#borrow(stream, format, a, b, c, d, e, f, g)
pub extern "C" fn fscanf_7(
  stream : FILE,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
  g : Bytes,
) -> Int = "fscanf_7_ffi"

///|
#borrow(stream, format, a, b, c, d, e, f, g, h)
pub extern "C" fn fscanf_8(
  stream : FILE,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
  g : Bytes,
  h : Bytes,
) -> Int = "fscanf_8_ffi"

///| int sscanf(const char *str, const char *format, ...);
///
/// 从字符串 str 读取格式化输入。
///
/// 参数 :
/// - `str`: 源字符串，以 `\x00` 结尾
/// - `format`: 格式化字符串，以 `\x00` 结尾
/// - `a`: 输出缓冲区
///
/// 返回值 :
/// - `Int`: 成功匹配并赋值的项数，若输入失败返回 EOF(-1)
///
/// 警告 :\
/// 此函数为 unsafe 版本，需自行保证缓冲区类型和数量与 format 匹配。
///
/// 示例 :
#borrow(str, format, a)
pub extern "C" fn sscanf_1(
  str : Bytes,
  format : Bytes,
  a : Bytes,
) -> Int = "sscanf_1_ffi"

///|
#borrow(str, format, a, b)
pub extern "C" fn sscanf_2(
  str : Bytes,
  format : Bytes,
  a : Bytes,
  b : Bytes,
) -> Int = "sscanf_2_ffi"

///|
#borrow(str, format, a, b, c)
pub extern "C" fn sscanf_3(
  str : Bytes,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
) -> Int = "sscanf_3_ffi"

///|
#borrow(str, format, a, b, c, d)
pub extern "C" fn sscanf_4(
  str : Bytes,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
) -> Int = "sscanf_4_ffi"

///|
#borrow(str, format, a, b, c, d, e)
pub extern "C" fn sscanf_5(
  str : Bytes,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
) -> Int = "sscanf_5_ffi"

///|
#borrow(str, format, a, b, c, d, e, f)
pub extern "C" fn sscanf_6(
  str : Bytes,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
) -> Int = "sscanf_6_ffi"

///|
#borrow(str, format, a, b, c, d, e, f, g)
pub extern "C" fn sscanf_7(
  str : Bytes,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
  g : Bytes,
) -> Int = "sscanf_7_ffi"

///|
#borrow(str, format, a, b, c, d, e, f, g, h)
pub extern "C" fn sscanf_8(
  str : Bytes,
  format : Bytes,
  a : Bytes,
  b : Bytes,
  c : Bytes,
  d : Bytes,
  e : Bytes,
  f : Bytes,
  g : Bytes,
  h : Bytes,
) -> Int = "sscanf_8_ffi"
