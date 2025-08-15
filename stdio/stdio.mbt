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

///| FILE *fopen(const char *filename, const char *mode);
/// 
/// 使用给定的模式 mode 打开 filename 所指向的文件。
/// 
/// 参数 :
/// - `filename`: 文件名
/// - `mode`: *r*只写 *w*只读 *a*追加
///     r+不新建读写 w+新建覆盖读写 a+新建追加读写
/// 
/// 返回值 :
/// - `FILE`: 文件流指针, 失败返回空指针 NULL(0)
/// 
/// 提示 :\
/// *mode* 可用 *b* 来指定二进制模式, 如 *rb*, *ab*, *r+b*, *w+b*\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
///
/// 示例 :
/// ```moonbit
/// ```
#borrow(filename, mode)
pub extern "C" fn fopen(filename : Bytes, mode : Bytes) -> FILE = "moonbit_fopen_ffi"

///| FILE *freopen(const char *filename, const char *mode, FILE *stream);
/// 
/// 把一个新的文件名 filename 与给定的打开的流 stream 关联，同时关闭流中的旧文件。
/// 
/// 参数 :
/// - `filename`: 文件名
/// - `mode`: *r*只写 *w*只读 *a*追加
///     r+不新建读写 w+新建覆盖读写 a+新建追加读写
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `FILE`: 文件流指针, 失败返回空指针 NULL(0)
/// 
/// 提示 :\
/// *mode* 可用 *b* 来指定二进制模式, 如 *rb*, *ab*, *r+b*, *w+b*\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
///
#borrow(filename, mode)
pub extern "C" fn freopen(filename : Bytes, mode : Bytes, file : FILE) -> FILE = "freopen"

///| int fclose(FILE *stream);
/// 
/// 关闭流 stream。刷新所有的缓冲区。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `int`: 0 成功, EOF(-1) 失败
///
/// 提示 :\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
///
/// 示例 :
///
#borrow(stream)
pub extern "C" fn fclose(stream : FILE) -> Int = "moonbit_fclose_ffi"

///| int remove(const char *filename);
/// 
/// 删除给定的文件名 filename，以便它不再被访问。
/// 
/// 参数 :
/// - `filename`: 文件名
///
/// 返回值 :
/// - `int`: 0 删除成功, -1 删除失败
///
/// 提示 :\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
///
/// 示例 :
/// 
#borrow(filename)
pub extern "C" fn remove(filename : Bytes) -> Int = "moonbit_remove_file_ffi"

///| int rename(const char *old_filename, const char *new_filename);
/// 
/// 把 old_filename 所指向的文件名改为 new_filename。
///
/// 参数 :
/// - `old_filename`: 旧文件名
/// - `new_filename`: 新文件名
///
/// 返回值 :
/// - `int`: 0 成功, -1 失败
///
/// 提示 :\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
///
/// 示例 :
/// 
#borrow(old_filename, new_filename)
pub extern "C" fn rename(old_filename : Bytes, new_filename : Bytes) -> Int = "rename"

///| int feof(FILE *stream);
/// 
/// 测试给定流 stream 的文件结束标识符。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `int`: 0 代表文件已结束, !0 代表文件未结束。
///
/// 提示 :\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
///
/// 示例 :
/// 
pub extern "C" fn feof(stream : FILE) -> Int = "feof"

///| int ferror(FILE *stream);
/// 
/// 测试给定流 stream 的错误标识符。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `int`: 0 代表没有错误, !0 代表有错误, 值为错误标识符。
///
/// 示例 :
/// 
pub extern "C" fn ferror(stream : FILE) -> Int = "ferror"

///| int fflush(FILE *stream);
/// 
/// 刷新流 stream 的输出缓冲区。
/// 
/// 参数 :
/// - `stream`: 指定需要刷新输出缓冲区的文件流指针, 若为 NULL，则刷新所有输出流。
/// 
/// 返回值 :
/// - `int`: 0 成功刷新, EOF(-1) 发生错误。
///
/// 提示 :\
/// 发生错误返回 *EOF* 时会设置错误标志符 (ferror)
/// 
/// 警告 :\
/// 对于输入流，它的行为是未定义的，应该避免在输入流上调用该函数。
///
/// 示例 :
/// 
pub extern "C" fn fflush(stream : FILE) -> Int = "moonbit_fflush_ffi"

///| void clearerr(FILE *stream);
/// 
/// 清除给定流 stream 的文件结束和错误标识符。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// 
/// 警告 :\
/// 不会检测传入的流是否正确, 请自行保证正确性。
/// 
/// 示例 :
pub extern "C" fn clearerr(stream : FILE) -> Unit = "clearerr"

///| int fseek(FILE *stream, long int offset, int whence);
/// 
/// 设置流 stream 的文件位置为给定的偏移 offset，
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// - `offset`: 偏移量
/// - `whence`: 起始位置
/// 
/// 返回值 :
/// - `int`: 0 成功, -1 失败
/// 
/// 提示 :\
/// whence 的取值如下 :
/// - seek_set() : 偏移量 offset 代表相对于文件开头的位置
/// - seek_cur() : 偏移量 offset 代表相对于当前位置的位置
/// - seek_end() : 偏移量 offset 代表相对于文件结尾的位置\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
/// 
/// 示例 :
/// 
pub extern "C" fn fseek(stream : FILE, offset : Int64, whence : Int) -> Int = "moonbit_fseek_ffi"
// pub extern "C" fn fseek(stream: FILE, offset: Int64, whence: Int) -> Int = "fseek_ffi"

///| long ftell(FILE *stream);
/// 
/// 返回给定流 stream 的当前文件位置。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `long int`: 当前文件位置, 获取失败返回 -1L
/// 
/// 提示 :\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
/// 
/// 示例 :
pub extern "C" fn ftell(stream : FILE) -> Int64 = "moonbit_ftell_ffi"

///| void rewind(FILE *stream);
/// 
/// 设置文件位置为给定流 stream 的文件的开头。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// 
/// 提示 :\
/// 等价于 `fseek(stream, 0, seek_set())`
/// 
/// 示例 :
pub extern "C" fn rewind(stream : FILE) -> Unit = "rewind"

///| int fgetpos(FILE *stream, fpos_t *pos);
/// 
/// 获取流 stream 的当前文件位置，并把它写入到 pos。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// - `pos`: 位置指针
/// 
/// 返回值 :
/// - `int`: 0 成功, !0 失败
/// 
/// 示例 :
pub extern "C" fn fgetpos(stream : FILE, pos : FPOS) -> Int = "fgetpos"

///| int fsetpos(FILE *stream, const fpos_t *pos);
/// 
/// 设置给定流 stream 的文件位置为给定的位置。。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// - `pos`: 由函数 fgetpos 给定的位置指针
/// 
/// 返回值 :
/// - `int`: 0 成功, !0 失败
/// 
/// 提示 :\
/// 返回失败会向 *errno* 写入错误信息, 可使用 *perror* 函数获取
/// 
/// 示例 :
pub extern "C" fn fsetpos(stream : FILE, pos : FPOS) -> Int = "fsetpos"

///| size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream);
/// 
/// 从给定流 stream 读取数据到 ptr 所指向的数组中。
/// 
/// 参数 :
/// - `ptr`: 存放数据的数组指针
/// - `size`: 每个元素的大小(单位:字节)
/// - `nmemb`: 要读取的元素个数
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `size_t`: 实际读取的元素个数
/// 
/// 提示 :\
/// 若返回值小于 nmemb，则表示文件结束或发生错误。
/// 
/// 示例 :
#borrow(ptr)
pub extern "C" fn fread(
  ptr : Bytes,
  size : Int,
  nmemb : Int,
  stream : FILE,
) -> Int = "moonbit_fread_ffi"
// pub extern "C" fn fread(ptr: Pointer, size: UInt, nmemb: UInt, stream: FILE) -> UInt = "fread_ffi"

///| size_t fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream);
/// 
/// 把 ptr 所指向的数组中的数据写入到给定流 stream 中。
/// 
/// 参数 :
/// - `ptr`: 存放数据的数组指针
/// - `size`: 每个元素的大小(单位:字节)
/// - `nmemb`: 要写入的元素个数
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `size_t`: 实际写入的元素个数
/// 
/// 提示 :\
/// 若返回值小于 nmemb，则表示发生错误。
/// 
/// 示例 :
#borrow(ptr)
pub extern "C" fn fwrite(
  ptr : Bytes,
  size : Int,
  nmemb : Int,
  stream : FILE,
) -> Int = "moonbit_fwrite_ffi"
// pub extern "C" fn fwrite(ptr: Pointer, size: UInt, nmemb: UInt, stream: FILE) -> UInt = "fwrite_ffi"

///| int fgetc(FILE *stream);\
///  int getc(FILE *stream);
/// 
/// 从指定的流 stream 获取下一个字符（一个无符号字符），并把位置标识符往前移动。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `int`: 若成功，返回下一个字符(unsigned char), EOF(-1): 到达文件末尾或发生错误
/// 
/// 示例 :
pub extern "C" fn fgetc(stream : FILE) -> Int = "fgetc"

///|
pub fnalias fgetc as getc

///| int getchar(void);
/// 
/// 从标准输入 stdin 获取一个字符（一个无符号字符）。
/// 
/// 返回值 :
/// - `int`: 若成功，返回下一个字符(unsigned char), EOF(-1): 到达文件末尾或发生错误
/// 
/// 示例 :
pub extern "C" fn getchar() -> Int = "getchar"

///| int ungetc(int char, FILE *stream);
/// 
/// 把字符 char（一个无符号字符）推入到指定的流 stream 中，以便它是下一个被读取到的字符。
/// 
/// 参数 :
/// - `char`: 要insert的字符
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `int`: 若成功，返回 char，否则返回 EOF(-1)
/// 
/// 示例 :
pub extern "C" fn ungetc(char : Int, stream : FILE) -> Int = "ungetc"

///| int fputc(int char, FILE *stream);
/// int putc(int char, FILE *stream);
/// 
/// 把参数 char 指定的字符（一个无符号字符）写入到指定的流 stream 中，并把位置标识符往前移动。
/// 
/// 参数 :
/// - `char`: 要写入的字符
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `int`: 若成功，返回 *char*，否则返回 EOF(-1)
/// 
/// 示例 :
pub extern "C" fn fputc(char : Int, stream : FILE) -> Int = "fputc"

///|
pub fnalias fputc as putc

///| int putchar(int char);
/// 
/// 把参数 char 指定的字符（一个无符号字符）写入到标准输出 stdout 中。
/// 
/// 参数 :
/// - `char`: 要写入的字符
/// 
/// 返回值 :
/// - `int`: 若成功，返回 *char*，否则返回 EOF(-1)
/// 
/// 示例 :
pub extern "C" fn putchar(char : Int) -> Int = "putchar"

///| char *fgets(char *str, int n, FILE *stream);
/// 
/// 从指定的流 stream 读取一行，并把它存储在 str 所指向的字符串内。
/// 当读取 (n-1) 个字符时，或者读取到换行符时，或者到达文件末尾时，它会停止，具体视情况而定。
/// 
/// 参数 :
/// - `str`: 要写入的字符串
/// - `n`: 字符串的最大长度（包含\0)
/// - `stream`: 读取用文件流指针
/// 
/// 返回值 :
/// - `char *`: 若成功，返回 *str*，否则返回 *NULL*
/// 
/// 提示 :\
/// 抵达文件末尾或者没有读取到任何字符时 *str* 内容保持不变
/// 
/// 示例 :
#borrow(str)
pub extern "C" fn fgets(str : Bytes, n : Int, stream : FILE) -> Bytes = "fgets"
// pub extern "C" fn fgets(buffer: Pointer, size: Int, file: FILE) -> Pointer = "fgets_ffi";

// gets
//!!!!!!!!!!!!!!!!!!!!!!!

///| int fputs(const char *str, FILE *stream);
/// 
/// 把字符串写入到指定的流 stream 中，但不包括空字符。
/// 
/// 参数 :
/// - `str`: 要写入的字符串
/// - `stream`: 文件流指针
/// 
/// 返回值 :
/// - `int`: 若成功，返回字符串长度（包括末尾的 \0)，否则返回 EOF(-1)
/// 
/// 示例 :
#borrow(str)
pub extern "C" fn fputs(str : Bytes, stream : FILE) -> Int = "fputs"

///| int puts(const char *str);
/// 
/// 把一个字符串写入到标准输出 stdout，直到空字符，但不包括空字符。换行符会被追加到输出中。
/// 
/// 参数 :
/// - `str`: 要写入的字符串
/// 
/// 返回值 :
/// - `int`: 若成功，返回字符串长度（包括末尾的 \0)，否则返回 EOF(-1)
/// 
/// 示例 :
#borrow(str)
pub extern "C" fn puts(str : Bytes) -> Int = "puts"

///| void perror(const char *str);
/// 
/// 把一个描述性错误消息输出到标准错误 stderr。
/// 
/// 参数 :
/// - `str`: 错误信息前缀
/// 
/// 提示 :\
/// 如果参数 str 为 NULL，则默认使用 "Error: " 作为前缀。
/// 
/// 示例 :
#borrow(str)
pub extern "C" fn perror(str : Bytes) -> Unit = "perror"

///| int setvbuf(FILE *stream, char *buffer, int mode, size_t size);
/// 
/// 另一个定义流 stream 应如何缓冲的函数。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// - `buffer`: 缓冲区指针, 设置为 NULL 分配自动大小的缓冲区
/// - `mode`: 缓冲模式
/// - `size`: 缓冲区大小(单位:字节)
/// 
/// 返回值 :
/// - `int`: 0 成功, !0 失败
/// 
/// 提示 :\
/// mode 的取值如下 :
/// - ionbf() : 不缓冲
/// - iofbf() : 全缓冲
/// - iolbf() : 行缓冲
/// 
/// 示例 :
pub extern "C" fn setvbuf(
  stream : FILE,
  buffer : Bytes,
  mode : Int,
  size : Int,
) -> Int = "setvbuf"

///| void setbuf(FILE *stream, char *buffer);
/// 
/// 定义流 stream 应如何缓冲。
/// 
/// 参数 :
/// - `stream`: 文件流指针
/// - `buffer`: 缓冲区指针(>= bufsize())
/// 
/// 提示 :
/// - 该函数应在与流 stream 相关的文件被打开时，且还未发生任何输入或输出操作之前被调用一次。
/// - `buffer != NULL` 等价于 `setvbuf(stream, buffer, iofbf(), bufsize())`
/// - `buffer == NULL` 等价于 `setvbuf(stream, NULL, ionbf(), 0)`
/// 
/// 示例 :  
pub extern "C" fn setbuf(stream : FILE, buffer : Bytes) -> Unit = "setbuf"

///| char *tmpnam(char *str);
/// 
/// 生成并返回一个有效的临时文件名，该文件名之前是不存在的。
/// 
/// 参数 :
/// - `str`: 存放临时文件名的缓冲区
/// 
/// 返回值 :
/// - 一个指向 C 字符串的指针，该字符串存储了临时文件名。
///     如果 str 是一个空指针，则该指针指向一个内部缓冲区，缓冲区在下一次调用函数时被覆盖。
/// - 如果 str 不是一个空指针，则返回 str。
///     如果函数未能成功创建可用的文件名，则返回一个空指针。
/// 
/// 示例 :
#borrow(str)
pub extern "C" fn tmpnam(str : Bytes) -> Bytes = "tmpnam"

///| FILE *tmpfile(void);
/// 
/// 以二进制更新模式(wb+)创建临时文件。
/// 
/// 返回值 :
/// - 一个指向被创建的临时文件的流指针。如果文件未被创建，则返回 NULL。
/// 
/// 提示 :\
/// 被创建的临时文件会在流关闭的时候或者在程序终止的时候自动删除。
/// 
/// 示例 :
pub extern "C" fn tmpfile() -> FILE = "tmpfile"
