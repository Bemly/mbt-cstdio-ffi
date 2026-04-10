///| 单参数输出
pub extern "C" fn printf_string(format : String) -> Unit = "moonbit_printf_ffi"

///|
pub extern "C" fn printf_bytes(format : Bytes) -> Int = "safe_printf_0_ffi"

///| 彻底疯狂穷举魔法
pub extern type VOID

///|
pub fn ignore_int(n : Int) -> VOID = "%identity"

///|
pub fn ignore_bytes(b : Bytes) -> VOID = "%identity"

///|
pub fn ignore_double(d : Double) -> VOID = "%identity"

// 	int printf(const char *format, ...);
// 发送格式化输出到标准输出 stdout。

///|
pub extern "C" fn unsafe_printf_1(format : Bytes, a : VOID) -> Int = "unsafe_printf_1_ffi"

///|
pub extern "C" fn unsafe_printf_2(format : Bytes, a : VOID, b : VOID) -> Int = "unsafe_printf_2_ffi"

///|
pub extern "C" fn unsafe_printf_3(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
) -> Int = "unsafe_printf_3_ffi"

///|
pub extern "C" fn unsafe_printf_4(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
) -> Int = "unsafe_printf_4_ffi"

///|
pub extern "C" fn unsafe_printf_5(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
) -> Int = "unsafe_printf_5_ffi"

///|
pub extern "C" fn unsafe_printf_6(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
) -> Int = "unsafe_printf_6_ffi"

///|
pub extern "C" fn unsafe_printf_7(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
) -> Int = "unsafe_printf_7_ffi"

///|
pub extern "C" fn unsafe_printf_8(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
) -> Int = "unsafe_printf_8_ffi"

///|
pub extern "C" fn unsafe_printf_9(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
  i : VOID,
) -> Int = "unsafe_printf_9_ffi"

///|
pub extern "C" fn unsafe_printf_10(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
  i : VOID,
  j : VOID,
) -> Int = "unsafe_printf_10_ffi"

///|
pub extern "C" fn unsafe_printf_11(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
  i : VOID,
  j : VOID,
  k : VOID,
) -> Int = "unsafe_printf_11_ffi"

///|
pub extern "C" fn unsafe_printf_12(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
  i : VOID,
  j : VOID,
  k : VOID,
  l : VOID,
) -> Int = "unsafe_printf_12_ffi"

///|
pub extern "C" fn unsafe_printf_13(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
  i : VOID,
  j : VOID,
  k : VOID,
  l : VOID,
  m : VOID,
) -> Int = "unsafe_printf_13_ffi"

///|
pub extern "C" fn unsafe_printf_14(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
  i : VOID,
  j : VOID,
  k : VOID,
  l : VOID,
  m : VOID,
  n : VOID,
) -> Int = "unsafe_printf_14_ffi"

///|
pub extern "C" fn unsafe_printf_15(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
  i : VOID,
  j : VOID,
  k : VOID,
  l : VOID,
  m : VOID,
  n : VOID,
  o : VOID,
) -> Int = "unsafe_printf_15_ffi"

///|
pub extern "C" fn unsafe_printf_16(
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
  i : VOID,
  j : VOID,
  k : VOID,
  l : VOID,
  m : VOID,
  n : VOID,
  o : VOID,
  p : VOID,
) -> Int = "unsafe_printf_16_ffi"

// int fprintf(FILE *__restrict, const char *__restrict, ...);
// 发送格式化输出到指定的流 stream 中。

///| int fprintf(FILE *stream, const char *format, ...);
///
/// 发送格式化输出到指定的流 stream 中。
///
/// 参数 :
/// - `stream`: 文件流指针
/// - `format`: 格式化字符串
/// - 后续参数为 `ignore_type` 包装的值
///
/// 返回值 :
/// - `Int`: 写入的字符数，发生错误返回负值
///
/// 警告 :\
/// 此函数为 unsafe 版本，需自行保证参数类型和数量与 format 匹配。
pub extern "C" fn fprintf_0(stream : FILE, format : Bytes) -> Int = "fprintf_0_ffi"

///|
pub extern "C" fn fprintf_1(
  stream : FILE,
  format : Bytes,
  a : VOID,
) -> Int = "fprintf_1_ffi"

///|
pub extern "C" fn fprintf_2(
  stream : FILE,
  format : Bytes,
  a : VOID,
  b : VOID,
) -> Int = "fprintf_2_ffi"

///|
pub extern "C" fn fprintf_3(
  stream : FILE,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
) -> Int = "fprintf_3_ffi"

///|
pub extern "C" fn fprintf_4(
  stream : FILE,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
) -> Int = "fprintf_4_ffi"

///|
pub extern "C" fn fprintf_5(
  stream : FILE,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
) -> Int = "fprintf_5_ffi"

///|
pub extern "C" fn fprintf_6(
  stream : FILE,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
) -> Int = "fprintf_6_ffi"

///|
pub extern "C" fn fprintf_7(
  stream : FILE,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
) -> Int = "fprintf_7_ffi"

///|
pub extern "C" fn fprintf_8(
  stream : FILE,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
) -> Int = "fprintf_8_ffi"

// int sprintf(char *__restrict, const char *__restrict, ...);
// 发送格式化输出到字符串。

///| int sprintf(char *str, const char *format, ...);
///
/// 发送格式化输出到 str 指向的字符串中。
///
/// 参数 :
/// - `str`: 目标字符串缓冲区，需预先分配足够空间
/// - `format`: 格式化字符串
/// - 后续参数为 `ignore_type` 包装的值
///
/// 返回值 :
/// - `Int`: 写入的字符数（不包括末尾的 \0），发生错误返回负值
///
/// 警告 :\
/// 此函数为 unsafe 版本，不检查缓冲区溢出，推荐使用 snprintf。\
/// 需自行保证参数类型和数量与 format 匹配。
#borrow(str, format)
pub extern "C" fn sprintf_1(
  str : Bytes,
  format : Bytes,
  a : VOID,
) -> Int = "sprintf_1_ffi"

///|
#borrow(str, format)
pub extern "C" fn sprintf_2(
  str : Bytes,
  format : Bytes,
  a : VOID,
  b : VOID,
) -> Int = "sprintf_2_ffi"

///|
#borrow(str, format)
pub extern "C" fn sprintf_3(
  str : Bytes,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
) -> Int = "sprintf_3_ffi"

///|
#borrow(str, format)
pub extern "C" fn sprintf_4(
  str : Bytes,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
) -> Int = "sprintf_4_ffi"

///|
#borrow(str, format)
pub extern "C" fn sprintf_5(
  str : Bytes,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
) -> Int = "sprintf_5_ffi"

///|
#borrow(str, format)
pub extern "C" fn sprintf_6(
  str : Bytes,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
) -> Int = "sprintf_6_ffi"

///|
#borrow(str, format)
pub extern "C" fn sprintf_7(
  str : Bytes,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
) -> Int = "sprintf_7_ffi"

///|
#borrow(str, format)
pub extern "C" fn sprintf_8(
  str : Bytes,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
) -> Int = "sprintf_8_ffi"

// int snprintf(char *__restrict, size_t, const char *__restrict, ...);
// 发送格式化输出到字符串，限制最大写入长度。

///| int snprintf(char *str, size_t size, const char *format, ...);
///
/// 发送格式化输出到 str 指向的字符串中，最多写入 size-1 个字符。
///
/// 参数 :
/// - `str`: 目标字符串缓冲区
/// - `size`: 缓冲区最大大小（包括末尾的 \0）
/// - `format`: 格式化字符串
/// - 后续参数为 `ignore_type` 包装的值
///
/// 返回值 :
/// - `Int`: 若缓冲区足够大，返回完整字符串长度（不包括 \0）；否则返回实际写入长度
///   发生错误返回负值。
///
/// 提示 :\
/// 推荐使用此函数代替 sprintf，可避免缓冲区溢出。
#borrow(str, format)
pub extern "C" fn snprintf_1(
  str : Bytes,
  size : Int,
  format : Bytes,
  a : VOID,
) -> Int = "snprintf_1_ffi"

///|
#borrow(str, format)
pub extern "C" fn snprintf_2(
  str : Bytes,
  size : Int,
  format : Bytes,
  a : VOID,
  b : VOID,
) -> Int = "snprintf_2_ffi"

///|
#borrow(str, format)
pub extern "C" fn snprintf_3(
  str : Bytes,
  size : Int,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
) -> Int = "snprintf_3_ffi"

///|
#borrow(str, format)
pub extern "C" fn snprintf_4(
  str : Bytes,
  size : Int,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
) -> Int = "snprintf_4_ffi"

///|
#borrow(str, format)
pub extern "C" fn snprintf_5(
  str : Bytes,
  size : Int,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
) -> Int = "snprintf_5_ffi"

///|
#borrow(str, format)
pub extern "C" fn snprintf_6(
  str : Bytes,
  size : Int,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
) -> Int = "snprintf_6_ffi"

///|
#borrow(str, format)
pub extern "C" fn snprintf_7(
  str : Bytes,
  size : Int,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
) -> Int = "snprintf_7_ffi"

///|
#borrow(str, format)
pub extern "C" fn snprintf_8(
  str : Bytes,
  size : Int,
  format : Bytes,
  a : VOID,
  b : VOID,
  c : VOID,
  d : VOID,
  e : VOID,
  f : VOID,
  g : VOID,
  h : VOID,
) -> Int = "snprintf_8_ffi"

// int vprintf(const char *format, va_list arg);
// 使用参数列表发送格式化输出到标准输出 stdout。

// int vfprintf(FILE *stream, const char *format, va_list arg);
// 使用参数列表发送格式化输出到流 stream 中。

// int vsprintf(char *str, const char *format, va_list arg);
// 使用参数列表发送格式化输出到字符串。

// int vsnprintf(char *__restrict, size_t, const char *__restrict, __isoc_va_list);
