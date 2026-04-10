# Moonbit C standard I/O FFI Binding

A comprehensive, direct binding of C standard I/O to Moonbit.\
It follows the C standard's resource handling rules to align with C logic.\
There is **NO garbage collection** (GC) in this FFI binding.\
**All** file streams require manual release!

本模块是 C 标准库 stdio 的完整 Moonbit FFI 绑定。\
为了最大程度地与 C 逻辑保持一致，采用 I/O 标准本身的资源释放规则。\
此 FFI Binding **没有垃圾回收**。\
所有文件流都需要**手动释放!!!**

## Features / 功能特性

### File Operations / 文件操作
- `fopen` / `fclose` / `freopen` - 打开 / 关闭 / 重新打开文件
- `remove` / `rename` - 删除 / 重命名文件
- `tmpfile` / `tmpnam` - 临时文件操作

### Formatted I/O / 格式化输入输出
- `printf_bytes` / `printf_string` - 安全格式化输出到标准输出
- `unsafe_printf_1-16` - 支持最多 16 个参数的 printf 变体
- `fprintf_0-8` - 格式化输出到文件流
- `sprintf_1-8` - 格式化输出到字符串
- `snprintf_1-8` - 安全边界格式化输出到字符串
- `scanf_1-8` / `fscanf_1-8` / `sscanf_1-8` - 格式化输入

### Character I/O / 字符操作
- `fgetc` / `getc` / `getchar` - 字符读取
- `fputc` / `putc` / `putchar` - 字符写入
- `ungetc` - 字符回退

### String I/O / 字符串操作
- `fgets` / `fputs` / `puts` - 行读写

### Binary I/O / 二进制操作
- `fread` / `fwrite` - 块读写

### Positioning / 定位
- `fseek` / `ftell` / `rewind` - 文件定位
- `fgetpos` / `fsetpos` - 文件位置记录

### Buffering / 缓冲
- `fflush` - 刷新缓冲区
- `setbuf` / `setvbuf` - 缓冲控制

### Error Handling / 错误处理
- `feof` / `ferror` / `clearerr` - 状态检查与清除
- `perror` - 错误信息输出

### Constants & Utilities / 常量与工具
- `seek_set()` / `seek_cur()` / `seek_end()` - 定位模式常量
- `eof()` / `isEOF()` - 文件结束标志
- `iofbf()` / `iolbf()` / `ionbf()` - 缓冲模式常量
- `bufsize()` / `fopen_max()` / `filename_max()` / `tmpnam_max()` / `tmp_max()` - 系统常量
- `null()` / `isNULL()` - 空指针检查
- `stdin()` / `stdout()` / `stderr()` - 标准流
- `make_buf()` - 分配 FFI 用字节缓冲区

## Usage / 使用方法

```moonbit
// 打开文件，写入后关闭
let fd = fopen(b"hello.txt\x00", b"w\x00")
let msg = b"Hello, Moonbit!\x00"
let _ = fwrite(msg, 1, msg.length(), fd)
let _ = fclose(fd)

// 读取文件
let fd2 = fopen(b"hello.txt\x00", b"r\x00")
let buf = make_buf(64)
let n = fread(buf, 1, 64, fd2)
let _ = fclose(fd2)
```

## Warnings / 警告

- 所有文件流必须手动调用 `fclose` 关闭，否则会造成资源泄漏
- `scanf` 系列函数需要预先分配足够大的 `Bytes` 缓冲区作为输出参数
- 格式化字符串必须以 `\x00` 结尾

## License

Apache-2.0
