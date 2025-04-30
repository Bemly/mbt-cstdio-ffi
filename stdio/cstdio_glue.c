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

// moonbit_incref 条件
// 存储进数据结构 
// 作为参数传递给 MoonBit 函数
// 作为返回值被返回
// 外部类型（extern type T）也被分配在堆上，
// 但它们表示外部指针，因此 MoonBit 不会对它们执行任何引用计数操作。

///////////////////////
// 目前 runtime.c 一致的

// moonbit_fopen_ffi
// moonbit_fclose_ffi
// moonbit_remove_file_ffi
// moonbit_fflush_ffi
// moonbit_ftell_ffi

// moonbit_is_null

///////////////////////
// 目前 runtime.c 已有的，但类型不同的

// MOONBIT_FFI_EXPORT
// int32_t fseek_ffi(void *stream, int64_t offset, int32_t whence) {
//     return fseek((FILE *)stream, offset, whence);
// }

// MOONBIT_FFI_EXPORT
// uint64_t fread_ffi(void *ptr, uint64_t size, uint64_t nmemb, void *stream) {
//     return fread(ptr, (size_t)size, (size_t)nmemb, (FILE *)stream);
// }

// MOONBIT_FFI_EXPORT
// uint64_t fwrite_ffi(const void *ptr, uint64_t size, uint64_t nmemb, void *stream) {
//     return fwrite(ptr, (size_t)size, (size_t)nmemb, (FILE *)stream);
// }

#include <stdio.h>
#include "moonbit.h"

///////////////////////
// 宏
MOONBIT_FFI_EXPORT
inline void *null_ffi(void) { return NULL; }

MOONBIT_FFI_EXPORT
inline void *stdin_ffi(void) { return stdin; }

MOONBIT_FFI_EXPORT
inline void *stdout_ffi(void) { return stdout; }

MOONBIT_FFI_EXPORT
inline void *stderr_ffi(void) { return stderr; }

MOONBIT_FFI_EXPORT
inline void *seek_set_ffi(void) { return SEEK_SET; }

MOONBIT_FFI_EXPORT
inline void *seek_cur_ffi(void) { return SEEK_CUR; }

MOONBIT_FFI_EXPORT
inline void *seek_end_ffi(void) { return SEEK_END; }

MOONBIT_FFI_EXPORT
inline void *eof_ffi(void) { return EOF; }

MOONBIT_FFI_EXPORT
inline void *iofbf_ffi(void) { return _IOFBF; }

MOONBIT_FFI_EXPORT
inline void *iolbf_ffi(void) { return _IOLBF; }

MOONBIT_FFI_EXPORT
inline void *ionbf_ffi(void) { return _IONBF; }

MOONBIT_FFI_EXPORT
inline void *bufsiz_ffi(void) { return BUFSIZ; }

MOONBIT_FFI_EXPORT
inline void *fopen_max_ffi(void) { return FOPEN_MAX; }

MOONBIT_FFI_EXPORT
inline void *filename_max_ffi(void) {
#ifdef FILENAME_MAX
    return FILENAME_MAX;
#else
    return 255;
#endif
}

MOONBIT_FFI_EXPORT
inline void *tmpnam_max_ffi(void) { return L_tmpnam; }

MOONBIT_FFI_EXPORT
inline void *tmp_max_ffi(void) { return TMP_MAX; }

///////////////////////
// 可变数量参数的穷举



///////////////////////

// MOONBIT_FFI_EXPORT
// void *freopen_ffi(
//     moonbit_bytes_t filename, 
//     moonbit_bytes_t mode, 
//     void *file) {
//     return freopen(
//         (const char *)filename, 
//         (const char *)mode, 
//         (FILE *)file);
// }

// MOONBIT_FFI_EXPORT
// int32_t feof_ffi(void *stream) {
//     return feof((FILE *)stream);
// }

// MOONBIT_FFI_EXPORT
// int32_t ferror_ffi(void *stream) {
//     return ferror((FILE *)stream);
// }


// MOONBIT_FFI_EXPORT
// void clearerr_ffi(void *stream) {
//     clearerr((FILE *)stream); return;
// }

// MOONBIT_FFI_EXPORT
// void rewind_ffi(void *stream) {
//     rewind((FILE *)stream); return;
// }

// MOONBIT_FFI_EXPORT
// int32_t fgetpos_ffi(void *stream, int64_t *pos) {
//     return fgetpos((FILE *)stream, (fpos_t *)pos);
// }

// MOONBIT_FFI_EXPORT
// int32_t fsetpos_ffi(void *stream, int64_t *pos) {
//     return fsetpos((FILE *)stream, (const fpos_t *)pos);
// }

// MOONBIT_FFI_EXPORT
// int32_t ungetc_ffi(int32_t c, void *stream) {
//     return ungetc(c, (FILE *)stream);
// }
