extern type VOID
pub fn ignore_type[T](any: T) -> VOID = "%identity"

// 	int printf(const char *format, ...);
// 发送格式化输出到标准输出 stdout。

pub extern "C" fn unsafe_printf_0(format: Bytes) -> Int
 = "safe_printf_0_ffi"
pub extern "C" fn unsafe_printf_1(format: Bytes, a: VOID) -> Int
 = "unsafe_printf_1_ffi"
pub extern "C" fn unsafe_printf_2(format: Bytes, a: VOID, b: VOID) -> Int
 = "unsafe_printf_2_ffi"
pub extern "C" fn unsafe_printf_3(format: Bytes, a: VOID, b: VOID, c: VOID) -> Int
 = "unsafe_printf_3_ffi"
pub extern "C" fn unsafe_printf_4(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID) -> Int
 = "unsafe_printf_4_ffi"
pub extern "C" fn unsafe_printf_5(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID) -> Int
 = "unsafe_printf_5_ffi"
pub extern "C" fn unsafe_printf_6(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID) -> Int
 = "unsafe_printf_6_ffi"
pub extern "C" fn unsafe_printf_7(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID) -> Int
 = "unsafe_printf_7_ffi"
pub extern "C" fn unsafe_printf_8(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID) -> Int
 = "unsafe_printf_8_ffi"
pub extern "C" fn unsafe_printf_9(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID, i: VOID) -> Int
 = "unsafe_printf_9_ffi"
pub extern "C" fn unsafe_printf_10(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID, i: VOID, j: VOID) -> Int
 = "unsafe_printf_10_ffi"
pub extern "C" fn unsafe_printf_11(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID, i: VOID, j: VOID, k: VOID) -> Int
 = "unsafe_printf_11_ffi"
pub extern "C" fn unsafe_printf_12(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID, i: VOID, j: VOID, k: VOID, l: VOID) -> Int
 = "unsafe_printf_12_ffi"
pub extern "C" fn unsafe_printf_13(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID, i: VOID, j: VOID, k: VOID, l: VOID, m: VOID) -> Int
 = "unsafe_printf_13_ffi"
pub extern "C" fn unsafe_printf_14(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID, i: VOID, j: VOID, k: VOID, l: VOID, m: VOID, n: VOID) -> Int
 = "unsafe_printf_14_ffi"
pub extern "C" fn unsafe_printf_15(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID, i: VOID, j: VOID, k: VOID, l: VOID, m: VOID, n: VOID, o: VOID) -> Int
 = "unsafe_printf_15_ffi"
pub extern "C" fn unsafe_printf_16(format: Bytes, a: VOID, b: VOID, c: VOID, d: VOID, e: VOID, f: VOID, g: VOID, h: VOID, i: VOID, j: VOID, k: VOID, l: VOID, m: VOID, n: VOID, o: VOID, p: VOID) -> Int
 = "unsafe_printf_16_ffi"


// int fprintf(FILE *__restrict, const char *__restrict, ...);

// int sprintf(char *__restrict, const char *__restrict, ...);

// int snprintf(char *__restrict, size_t, const char *__restrict, ...);

// 	int vprintf(const char *format, va_list arg);
// 使用参数列表发送格式化输出到标准输出 stdout。


// 	int vfprintf(FILE *stream, const char *format, va_list arg);
// 使用参数列表发送格式化输出到流 stream 中。


// int vsprintf(char *str, const char *format, va_list arg);
// 使用参数列表发送格式化输出到字符串。

// int vsnprintf(char *__restrict, size_t, const char *__restrict, __isoc_va_list);
