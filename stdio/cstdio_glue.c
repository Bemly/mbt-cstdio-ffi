#include <stdio.h>
#include "moonbit.h"

// moonbit_incref 条件
// 存储进数据结构 
// 作为参数传递给 MoonBit 函数
// 作为返回值被返回
// 外部类型（extern type T）也被分配在堆上，
// 但它们表示外部指针，因此 MoonBit 不会对它们执行任何引用计数操作。

// MOONBIT_FFI_EXPORT
// void *fopen_ffi(moonbit_bytes_t filename, moonbit_bytes_t mode) {
//     return fopen((const char *)filename, (const char *)mode);
// }

MOONBIT_FFI_EXPORT
void *freopen_ffi(moonbit_bytes_t filename, moonbit_bytes_t mode, void *file) {
    return freopen((const char *)filename, (const char *)mode, (FILE *)file);
}

MOONBIT_FFI_EXPORT
int32_t fclose_ffi(void *stream) {
    return fclose((FILE *)stream);
}

MOONBIT_FFI_EXPORT
int32_t feof_ffi(void *stream) {
    return feof((FILE *)stream);
}

MOONBIT_FFI_EXPORT
int32_t ferror_ffi(void *stream) {
    return ferror((FILE *)stream);
}

MOONBIT_FFI_EXPORT
int32_t fflush_ffi(void *stream) {
    return fflush((FILE *)stream);
}

MOONBIT_FFI_EXPORT
void clearerr_ffi(void *stream) {
    clearerr((FILE *)stream); return;
}

MOONBIT_FFI_EXPORT
int32_t fseek_ffi(void *stream, int64_t offset, int32_t whence) {
    return fseek((FILE *)stream, offset, whence);
}

MOONBIT_FFI_EXPORT
int64_t ftell_ffi(void *stream) {
    return ftell((FILE *)stream);
}

MOONBIT_FFI_EXPORT
void rewind_ffi(void *stream) {
    rewind((FILE *)stream); return;
}

MOONBIT_FFI_EXPORT
int32_t fgetpos_ffi(void *stream, int64_t *pos) {
    return fgetpos((FILE *)stream, (fpos_t *)pos);
}

MOONBIT_FFI_EXPORT
int32_t fsetpos_ffi(void *stream, int64_t *pos) {
    return fsetpos((FILE *)stream, (const fpos_t *)pos);
}

MOONBIT_FFI_EXPORT
uint64_t fread_ffi(void *ptr, uint64_t size, uint64_t nmemb, void *stream) {
    return fread(ptr, (size_t)size, (size_t)nmemb, (FILE *)stream);
}

MOONBIT_FFI_EXPORT
uint64_t fwrite_ffi(const void *ptr, uint64_t size, uint64_t nmemb, void *stream) {
    return fwrite(ptr, (size_t)size, (size_t)nmemb, (FILE *)stream);
}

MOONBIT_FFI_EXPORT
int32_t ungetc_ffi(int32_t c, void *stream) {
    return ungetc(c, (FILE *)stream);
}

