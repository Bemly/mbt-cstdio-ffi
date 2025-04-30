///| 文件流指针
extern type FILE


///| `Bool` 是否是空指针
pub extern "C" fn isNULL(ptr : FILE) -> Bool = "moonbit_is_null"
///| `FILE` 空指针
pub extern "C" fn null() -> FILE = "null_ffi"
///| `FILE` 标准输入流
pub extern "C" fn stdin() -> FILE = "stdin_ffi"
///| `FILE` 标准输出流
pub extern "C" fn stdout() -> FILE = "stdout_ffi"
///| `FILE` 标准错误流
pub extern "C" fn stderr() -> FILE = "stderr_ffi"
///| - `SEEK_SET(0)`: 从文件开头开始偏移
pub extern "C" fn seek_set() -> Int = "seek_set_ffi"
///| - `SEEK_CUR(1)`: 从当前位置开始偏移
pub extern "C" fn seek_cur() -> Int = "seek_cur_ffi"
///|- `SEEK_END(2)`: 从文件末尾开始偏移
pub extern "C" fn seek_end() -> Int = "seek_end_ffi"
///| `EOF` 文件结束标志符
pub extern "C" fn eof() -> Int = "eof_ffi"
///| `Bool` 是否是文件结束标志符
pub fn isEOF(num: Int) -> Bool { num == eof() }
///| 
pub extern "C" fn iofbf() -> Int = "iofbf_ffi"
///| 
pub extern "C" fn iolbf() -> Int = "iolbf_ffi"
///| 
pub extern "C" fn ionbf() -> Int = "ionbf_ffi"
///| `setbuf` 函数使用的缓冲区大小
pub extern "C" fn bufsiz() -> Int = "bufsiz_ffi"
///| 系统可以同时打开的文件数量
pub extern "C" fn fopen_max() -> Int = "fopen_max_ffi"
///| 字符数组可以存储的文件名的最大长度
pub extern "C" fn filename_max() -> Int = "filename_max_ffi"
///| 字符数组可以存储的由 `tmpnam` 函数创建的临时文件名的最大长度
pub extern "C" fn tmpnam_max() -> Int = "tmpnam_max_ffi"
///| `tmpnam` 函数可生成的独特文件名的最大数量。
pub extern "C" fn tmp_max() -> Int = "tmp_max_ffi"