// extern FILE *const stdin;
// extern FILE *const stdout;
// extern FILE *const stderr;
///|
extern type FILE
extern type Pointer

///| fopen: 使用给定的模式 mode 打开 filename 所指向的文件。
/// ```c
/// 	FILE *fopen(const char *filename, const char *mode)
/// ```
#borrow(filename, mode)
pub extern "C" fn fopen(filename : Bytes, mode : Bytes) -> FILE = "fopen_ffi"

// FILE *freopen(const char *__restrict, const char *__restrict, FILE *__restrict);
#borrow(filename, mode)
pub extern "C" fn freopen(filename: Bytes, mode: Bytes, file: FILE) -> FILE = "freopen_ffi"

///| fclose: 关闭流 stream。刷新所有的缓冲区。
/// ```c
/// 	int fclose(FILE *stream);
/// ```
pub extern "C" fn fclose(stream : FILE) -> Int = "fclose_ffi"

// int remove(const char *filename)
// 删除给定的文件名 filename，以便它不再被访问。
#borrow(filename)
pub extern "C" fn remove(filename: Bytes) -> Int = "remove"


// 	int rename(const char *old_filename, const char *new_filename)
// 把 old_filename 所指向的文件名改为 new_filename。
#borrow(old_filename, new_filename)
pub extern "C" fn rename(old_filename: Bytes, new_filename: Bytes) -> Int = "rename"


// int feof(FILE *stream)
// 测试给定流 stream 的文件结束标识符。
pub extern "C" fn feof(stream: FILE) -> Int = "feof_ffi"

// int ferror(FILE *stream);
// 测试给定流 stream 的错误标识符。
pub extern "C" fn ferror(stream: FILE) -> Int = "ferror_ffi"

// int fflush(FILE *stream);
// 刷新流 stream 的输出缓冲区。
pub extern "C" fn fflush(stream: FILE) -> Int = "fflush_ffi"



// void clearerr(FILE *stream);
// 清除给定流 stream 的文件结束和错误标识符。
pub extern "C" fn clearerr(stream: FILE) -> Unit = "clearerr_ffi"

// int fseek(FILE *stream, long int offset, int whence)
// 设置流 stream 的文件位置为给定的偏移 offset，
// 参数 offset 意味着从给定的 whence 位置查找的字节数。
pub extern "C" fn fseek(stream: FILE, offset: Int64, whence: Int) -> Int = "fseek_ffi"

// long ftell(FILE *stream);
// 返回给定流 stream 的当前文件位置。
pub extern "C" fn ftell(stream: FILE) -> Int64 = "ftell_ffi"

// void rewind(FILE *stream);
// 设置文件位置为给定流 stream 的文件的开头。
pub extern "C" fn rewind(stream: FILE) -> Unit = "rewind_ffi"

// 	int fgetpos(FILE *stream, fpos_t *pos)
// 获取流 stream 的当前文件位置，并把它写入到 pos。
//
// stream -- 这是指向 FILE 对象的指针，该 FILE 对象标识了流。
// pos -- 这是指向 fpos_t 对象的指针。
// 如果成功，该函数返回零。如果发生错误，则返回非零值。
pub extern "C" fn fgetpos(stream: FILE, pos: Int64) -> Int = "fgetpos_ffi"

// 	int fsetpos(FILE *stream, const fpos_t *pos)
// 设置给定流 stream 的文件位置为给定的位置。参数 pos 是由函数 fgetpos 给定的位置。
pub extern "C" fn fsetpos(stream: FILE, pos: Int64) -> Int = "fsetpos_ffi"

// 	size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream);
// 从给定流 stream 读取数据到 ptr 所指向的数组中。
pub extern "C" fn fread(ptr: Pointer, size: UInt64, nmemb: UInt64, stream: FILE) -> UInt64 = "fread_ffi"

// size_t fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream)
// 把 ptr 所指向的数组中的数据写入到给定流 stream 中。
pub extern "C" fn fwrite(ptr: Pointer, size: UInt64, nmemb: UInt64, stream: FILE) -> UInt64 = "fwrite_ffi"

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
pub extern "C" fn ungetc(c: Int, stream: FILE) -> Int = "ungetc_ffi"

// 	int fputc(int char, FILE *stream);
// int putc(int char, FILE *stream);
// 把参数 char 指定的字符（一个无符号字符）写入到指定的流 stream 中，并把位置标识符往前移动。
pub extern "C" fn fputc(c: Int, stream: FILE) -> Int = "fputc"
pub fnalias fputc as putc

// 	int putchar(int char);
// 把参数 char 指定的字符（一个无符号字符）写入到标准输出 stdout 中。
pub extern "C" fn putchar(c: Int) -> Int = "putchar";

// char *fgets(char *__restrict, int, FILE *__restrict);
// pub extern "C" fn fgets(buffer: Pointer, size: Int, file: FILE) -> Pointer = "fgets_ffi";

// int fputs(const char *__restrict, FILE *__restrict);
// int puts(const char *);

// int printf(const char *__restrict, ...);
// int fprintf(FILE *__restrict, const char *__restrict, ...);
// int sprintf(char *__restrict, const char *__restrict, ...);
// int snprintf(char *__restrict, size_t, const char *__restrict, ...);

// int vprintf(const char *__restrict, __isoc_va_list);
// int vfprintf(FILE *__restrict, const char *__restrict, __isoc_va_list);
// int vsprintf(char *__restrict, const char *__restrict, __isoc_va_list);
// int vsnprintf(char *__restrict, size_t, const char *__restrict, __isoc_va_list);

// int scanf(const char *__restrict, ...);
// int fscanf(FILE *__restrict, const char *__restrict, ...);
// int sscanf(const char *__restrict, const char *__restrict, ...);
// int vscanf(const char *__restrict, __isoc_va_list);
// int vfscanf(FILE *__restrict, const char *__restrict, __isoc_va_list);
// int vsscanf(const char *__restrict, const char *__restrict, __isoc_va_list);

// void perror(const char *);

// int setvbuf(FILE *__restrict, char *__restrict, int, size_t);
// void setbuf(FILE *__restrict, char *__restrict);

// char *tmpnam(char *);
// FILE *tmpfile(void);

// #if defined(_POSIX_SOURCE) || defined(_POSIX_C_SOURCE) \
//  || defined(_XOPEN_SOURCE) || defined(_GNU_SOURCE) \
//  || defined(_BSD_SOURCE)
// FILE *fmemopen(void *__restrict, size_t, const char *__restrict);
// FILE *open_memstream(char **, size_t *);
// FILE *fdopen(int, const char *);
// FILE *popen(const char *, const char *);
// int pclose(FILE *);
// int fileno(FILE *);
// int fseeko(FILE *, off_t, int);
// off_t ftello(FILE *);
// int dprintf(int, const char *__restrict, ...);
// int vdprintf(int, const char *__restrict, __isoc_va_list);
// void flockfile(FILE *);
// int ftrylockfile(FILE *);
// void funlockfile(FILE *);
// int getc_unlocked(FILE *);
// int getchar_unlocked(void);
// int putc_unlocked(int, FILE *);
// int putchar_unlocked(int);
// ssize_t getdelim(char **__restrict, size_t *__restrict, int, FILE *__restrict);
// ssize_t getline(char **__restrict, size_t *__restrict, FILE *__restrict);
// int renameat(int, const char *, int, const char *);
// char *ctermid(char *);
// #define L_ctermid 20
// #endif

// #if defined(_GNU_SOURCE)
// #define RENAME_NOREPLACE (1 << 0)
// #define RENAME_EXCHANGE  (1 << 1)
// #define RENAME_WHITEOUT  (1 << 2)

// int renameat2(int, const char *, int, const char *, unsigned);
// #endif

// #if defined(_XOPEN_SOURCE) || defined(_GNU_SOURCE) \
//  || defined(_BSD_SOURCE)
// #define P_tmpdir "/tmp"
// char *tempnam(const char *, const char *);
// #endif

// #if defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
// #define L_cuserid 20
// char *cuserid(char *);
// void setlinebuf(FILE *);
// void setbuffer(FILE *, char *, size_t);
// int fgetc_unlocked(FILE *);
// int fputc_unlocked(int, FILE *);
// int fflush_unlocked(FILE *);
// size_t fread_unlocked(void *, size_t, size_t, FILE *);
// size_t fwrite_unlocked(const void *, size_t, size_t, FILE *);
// void clearerr_unlocked(FILE *);
// int feof_unlocked(FILE *);
// int ferror_unlocked(FILE *);
// int fileno_unlocked(FILE *);
// int getw(FILE *);
// int putw(int, FILE *);
// char *fgetln(FILE *, size_t *);
// int asprintf(char **, const char *, ...);
// int vasprintf(char **, const char *, __isoc_va_list);
// #endif

// #ifdef _GNU_SOURCE
// char *fgets_unlocked(char *, int, FILE *);
// int fputs_unlocked(const char *, FILE *);

// typedef ssize_t (cookie_read_function_t)(void *, char *, size_t);
// typedef ssize_t (cookie_write_function_t)(void *, const char *, size_t);
// typedef int (cookie_seek_function_t)(void *, off_t *, int);
// typedef int (cookie_close_function_t)(void *);

// typedef struct _IO_cookie_io_functions_t {
// 	cookie_read_function_t *read;
// 	cookie_write_function_t *write;
// 	cookie_seek_function_t *seek;
// 	cookie_close_function_t *close;
// } cookie_io_functions_t;

// FILE *fopencookie(void *, const char *, cookie_io_functions_t);

//  clearerr       check and reset stream status

//  fclose         close a stream
//  fdopen         stream open functions
//  feof           check and reset stream status
//  ferror         check and reset stream status
//  fflush         flush a stream
//  fgetc          get next character or word from input stream
//  fgetln         get a line from a stream
//  fgetpos        reposition a stream
//  fgets          get a line from a stream
//  fgetwc         get next wide character from input stream
//  fgetws         get a line of wide characters from a stream
//  fileno         check and reset stream status
//  fprintf        formatted output conversion
//  fpurge         flush a stream
//  fputc          output a character or word to a stream
//  fputs          output a line to a stream
//  fputwc         output a wide character to a stream
//  fputws         output a line of wide characters to a stream
//  fread          binary stream input/output
//  freopen        stream open functions
//  fropen         open a stream
//  fscanf         input format conversion
//  fseek          reposition a stream
//  fsetpos        reposition a stream
//  ftell          reposition a stream
//  funopen        open a stream
//  fwide          set/get orientation of stream
//  fwopen         open a stream
//  fwprintf       formatted wide character output conversion
//  fwrite         binary stream input/output

//  getc           get next character or word from input stream
//  getchar        get next character or word from input stream
//  getdelim       get a line from a stream
//  getline        get a line from a stream
//  gets           get a line from a stream
//  getw           get next character or word from input stream
//  getwc          get next wide character from input stream
//  getwchar       get next wide character from input stream

//  mkdtemp        create unique temporary directory
//  mkstemp        create unique temporary file
//  mktemp         create unique temporary file

//  perror         system error messages
//  printf         formatted output conversion
//  putc           output a character or word to a stream
//  putchar        output a character or word to a stream
//  puts           output a line to a stream
//  putw           output a character or word to a stream
//  putwc          output a wide character to a stream
//  putwchar       output a wide character to a stream

//  remove         remove directory entry
//  rewind         reposition a stream

//  scanf          input format conversion
//  setbuf         stream buffering operations
//  setbuffer      stream buffering operations
//  setlinebuf     stream buffering operations
//  setvbuf        stream buffering operations
//  snprintf       formatted output conversion
//  sprintf        formatted output conversion
//  sscanf         input format conversion
//  strerror       system error messages
//  swprintf       formatted wide character output conversion
//  sys_errlist    system error messages
//  sys_nerr       system error messages

//  tempnam        temporary file routines
//  tmpfile        temporary file routines
//  tmpnam         temporary file routines

//  ungetc         un-get character from input stream
//  ungetwc        un-get wide character from input stream

//  vasprintf      formatted output conversion
//  vfprintf       formatted output conversion
//  vfscanf        input format conversion
//  vfwprintf      formatted wide character output conversion
//  vprintf        formatted output conversion
//  vscanf         input format conversion
//  vsnprintf      formatted output conversion
//  vsprintf       formatted output conversion
//  vsscanf        input format conversion
//  vswprintf      formatted wide character output conversion
//  vwprintf       formatted wide character output conversion

//  wprintf        formatted wide character output conversion
