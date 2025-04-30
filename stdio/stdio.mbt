///|
extern type FILE
// extern type Pointer
pub extern "C" fn stdin() -> FILE = "stdin_ffi"
pub extern "C" fn stdout() -> FILE = "stdout_ffi"
pub extern "C" fn stderr() -> FILE = "stderr_ffi"

///| FILE *fopen(const char *filename, const char *mode)
/// 使用给定的模式 mode 打开 filename 所指向的文件。
/// mode: r只写 w只读 a追加 [rwa]+读写 [rwa]b二进制 [rwa]+b读写二进制
#borrow(filename, mode)
pub extern "C" fn fopen(filename : Bytes, mode : Bytes) -> FILE 
    = "moonbit_fopen_ffi"

///| FILE *freopen(const char *filename, const char *mode, FILE *stream);
/// 把一个新的文件名 filename 与给定的打开的流 stream 关联，同时关闭流中的旧文件。
/// mode: r只写 w只读 a追加 [rwa]+读写 [rwa]b二进制 [rwa]+b读写二进制
#borrow(filename, mode)
pub extern "C" fn freopen(filename: Bytes, mode: Bytes, file: FILE) -> FILE
    = "freopen"

///| int fclose(FILE *stream);
/// 关闭流 stream。刷新所有的缓冲区。
#borrow(stream)
pub extern "C" fn fclose(stream : FILE) -> Int = "moonbit_fclose_ffi"

///| int remove(const char *filename);
/// 删除给定的文件名 filename，以便它不再被访问。
#borrow(filename)
pub extern "C" fn remove(filename: Bytes) -> Int = "moonbit_remove_file_ffi"


///| int rename(const char *old_filename, const char *new_filename);
/// 把 old_filename 所指向的文件名改为 new_filename。
#borrow(old_filename, new_filename)
pub extern "C" fn rename(old_filename: Bytes, new_filename: Bytes) -> Int
    = "rename"

///| int feof(FILE *stream)
/// 测试给定流 stream 的文件结束标识符。
pub extern "C" fn feof(stream: FILE) -> Int = "feof"

///| int ferror(FILE *stream);
/// 测试给定流 stream 的错误标识符。
pub extern "C" fn ferror(stream: FILE) -> Int = "ferror"

///| int fflush(FILE *stream);
/// 刷新流 stream 的输出缓冲区。
pub extern "C" fn fflush(stream: FILE) -> Int = "moonbit_fflush_ffi"

///| void clearerr(FILE *stream);
/// 清除给定流 stream 的文件结束和错误标识符。
pub extern "C" fn clearerr(stream: FILE) -> Unit = "clearerr"

///| int fseek(FILE *stream, long int offset, int whence)
/// 设置流 stream 的文件位置为给定的偏移 offset，
/// offset: 偏移量，whence: SEEK_SET, SEEK_CUR, SEEK_END
/// SEEK_SET: 从文件开头开始偏移 0
/// SEEK_CUR: 从当前位置开始偏移 1
/// SEEK_END: 从文件末尾开始偏移 2
pub extern "C" fn fseek(stream: FILE, offset: Int64, whence: Int) -> Int 
    = "moonbit_fseek_ffi"
// pub extern "C" fn fseek(stream: FILE, offset: Int64, whence: Int) -> Int = "fseek_ffi"

///| long ftell(FILE *stream);
/// 返回给定流 stream 的当前文件位置。
pub extern "C" fn ftell(stream: FILE) -> Int64 = "moonbit_ftell_ffi"

///| void rewind(FILE *stream);
/// 设置文件位置为给定流 stream 的文件的开头。
pub extern "C" fn rewind(stream: FILE) -> Unit = "rewind"

///| int fgetpos(FILE *stream, fpos_t *pos)
/// 获取流 stream 的当前文件位置，并把它写入到 pos。
/// pos -- 这是指向 fpos_t 对象的指针。
/// 如果成功，该函数返回零。如果发生错误，则返回非零值。
pub extern "C" fn fgetpos(stream: FILE, pos: Int64) -> Int = "fgetpos"

// 	int fsetpos(FILE *stream, const fpos_t *pos)
// 设置给定流 stream 的文件位置为给定的位置。参数 pos 是由函数 fgetpos 给定的位置。
pub extern "C" fn fsetpos(stream: FILE, pos: Int64) -> Int = "fsetpos"

// 	size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream);
// 从给定流 stream 读取数据到 ptr 所指向的数组中。
#borrow(ptr)
pub extern "C" fn fread(
    ptr: Bytes, 
    size: Int, 
    nmemb: Int, 
    stream: FILE) -> Int 
    = "moonbit_fread_ffi"
// pub extern "C" fn fread(ptr: Pointer, size: UInt, nmemb: UInt, stream: FILE) -> UInt = "fread_ffi"


// size_t fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream)
// 把 ptr 所指向的数组中的数据写入到给定流 stream 中。
#borrow(ptr)
pub extern "C" fn fwrite(
    ptr: Bytes, 
    size: Int, 
    nmemb: Int, 
    stream: FILE) -> Int 
    = "moonbit_fwrite_ffi"
// pub extern "C" fn fwrite(ptr: Pointer, size: UInt, nmemb: UInt, stream: FILE) -> UInt = "fwrite_ffi"

// int fgetc(FILE *stream);
// int getc(FILE *stream);
// 从指定的流 stream 获取下一个字符（一个无符号字符），并把位置标识符往前移动。
pub extern "C" fn fgetc(stream: FILE) -> Int = "fgetc"
pub fnalias fgetc as getc

// int getchar(void);
// 从标准输入 stdin 获取一个字符（一个无符号字符）。
pub extern "C" fn getchar() -> Int = "getchar"

// int ungetc(int char, FILE *stream);
// 把字符 char（一个无符号字符）推入到指定的流 stream 中，以便它是下一个被读取到的字符。
pub extern "C" fn ungetc(char: Int, stream: FILE) -> Int = "ungetc"

// 	int fputc(int char, FILE *stream);
// int putc(int char, FILE *stream);
// 把参数 char 指定的字符（一个无符号字符）写入到指定的流 stream 中，并把位置标识符往前移动。
pub extern "C" fn fputc(char: Int, stream: FILE) -> Int = "fputc"
pub fnalias fputc as putc

// 	int putchar(int char);
// 把参数 char 指定的字符（一个无符号字符）写入到标准输出 stdout 中。
pub extern "C" fn putchar(char: Int) -> Int = "putchar";

// 	char *fgets(char *str, int n, FILE *stream);
// 从指定的流 stream 读取一行，并把它存储在 str 所指向的字符串内。
// 当读取 (n-1) 个字符时，或者读取到换行符时，或者到达文件末尾时，它会停止，具体视情况而定。
#borrow(str)
pub extern "C" fn fgets(str: Bytes, n: Int, stream: FILE) -> Bytes
    = "fgets"
// pub extern "C" fn fgets(buffer: Pointer, size: Int, file: FILE) -> Pointer = "fgets_ffi";

// 	int fputs(const char *str, FILE *stream);
// 把字符串写入到指定的流 stream 中，但不包括空字符。
#borrow(str)
pub extern "C" fn fputs(str: Bytes, stream: FILE) -> Int = "fputs"



// 	int puts(const char *str);
// 把一个字符串写入到标准输出 stdout，直到空字符，但不包括空字符。换行符会被追加到输出中。
#borrow(str)
pub extern "C" fn puts(str: Bytes) -> Int = "puts"

// 	void perror(const char *str);
// 把一个描述性错误消息输出到标准错误 stderr。首先输出字符串 str，后跟一个冒号，然后是一个空格。
#borrow(str)
pub extern "C" fn perror(str: Bytes) = "perror"

// int setvbuf(FILE *stream, char *buffer, int mode, size_t size);
// 另一个定义流 stream 应如何缓冲的函数。
pub extern "C" fn setvbuf(
    stream: FILE, 
    buffer: Bytes, 
    mode: Int, 
    size: Int) -> Int = "setvbuf"

// 	void setbuf(FILE *stream, char *buffer);
// 定义流 stream 应如何缓冲。
pub extern "C" fn setbuf(stream: FILE, buffer: Bytes) = "setbuf"

//	char *tmpnam(char *str);
// 生成并返回一个有效的临时文件名，该文件名之前是不存在的。
#borrow(str)
pub extern "C" fn tmpnam(str: Bytes) -> Bytes = "tmpnam"

// FILE *tmpfile(void);
// 以二进制更新模式(wb+)创建临时文件。
pub extern "C" fn tmpfile() -> FILE = "tmpfile"