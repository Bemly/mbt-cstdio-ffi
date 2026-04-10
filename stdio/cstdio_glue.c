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
MOONBIT_FFI_EXPORT void *null_ffi(void) { return NULL; }

MOONBIT_FFI_EXPORT void *stdin_ffi(void) { return stdin; }

MOONBIT_FFI_EXPORT void *stdout_ffi(void) { return stdout; }

MOONBIT_FFI_EXPORT void *stderr_ffi(void) { return stderr; }

MOONBIT_FFI_EXPORT int32_t seek_set_ffi(void) { return SEEK_SET; }

MOONBIT_FFI_EXPORT int32_t seek_cur_ffi(void) { return SEEK_CUR; }

MOONBIT_FFI_EXPORT int32_t seek_end_ffi(void) { return SEEK_END; }

MOONBIT_FFI_EXPORT int32_t eof_ffi(void) { return EOF; }

MOONBIT_FFI_EXPORT int32_t iofbf_ffi(void) { return _IOFBF; }

MOONBIT_FFI_EXPORT int32_t iolbf_ffi(void) { return _IOLBF; }

MOONBIT_FFI_EXPORT int32_t ionbf_ffi(void) { return _IONBF; }

MOONBIT_FFI_EXPORT int32_t bufsiz_ffi(void) { return BUFSIZ; }

MOONBIT_FFI_EXPORT int32_t fopen_max_ffi(void) { return FOPEN_MAX; }

MOONBIT_FFI_EXPORT int32_t filename_max_ffi(void) {
#ifdef FILENAME_MAX
    return FILENAME_MAX;
#else
    return 255;
#endif
}

MOONBIT_FFI_EXPORT int32_t tmpnam_max_ffi(void) { return L_tmpnam; }

MOONBIT_FFI_EXPORT int32_t tmp_max_ffi(void) { return TMP_MAX; }

///////////////////////
// 可变数量参数的穷举
MOONBIT_FFI_EXPORT
int32_t safe_printf_0_ffi(moonbit_bytes_t format) {
    return printf("%s", (const char *)format);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_1_ffi(moonbit_bytes_t format, void *a) {
    return printf((const char *)format, a);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_2_ffi(moonbit_bytes_t format, void *a, void *b) {
    return printf((const char *)format, a, b);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_3_ffi(moonbit_bytes_t format, void *a, void *b, void *c) {
    return printf((const char *)format, a, b, c);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_4_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d) {
    return printf((const char *)format, a, b, c, d);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_5_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e) {
    return printf((const char *)format, a, b, c, d, e);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_6_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f) {
    return printf((const char *)format, a, b, c, d, e, f);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_7_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g) {
    return printf((const char *)format, a, b, c, d, e, f, g);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_8_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h) {
    return printf((const char *)format, a, b, c, d, e, f, g, h);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_9_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h, void *i) {
    return printf((const char *)format, a, b, c, d, e, f, g, h, i);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_10_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h, void *i, void *j) {
    return printf((const char *)format, a, b, c, d, e, f, g, h, i, j);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_11_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h, void *i, void *j, void *k) {
    return printf((const char *)format, a, b, c, d, e, f, g, h, i, j, k);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_12_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h, void *i, void *j, void *k, void *l) {
    return printf((const char *)format, a, b, c, d, e, f, g, h, i, j, k, l);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_13_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h, void *i, void *j, void *k, void *l, void *m) {
    return printf((const char *)format, a, b, c, d, e, f, g, h, i, j, k, l, m);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_14_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h, void *i, void *j, void *k, void *l, void *m, void *n) {
    return printf((const char *)format, a, b, c, d, e, f, g, h, i, j, k, l, m, n);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_15_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h, void *i, void *j, void *k, void *l, void *m, void *n, void *o) {
    return printf((const char *)format, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o);
}

MOONBIT_FFI_EXPORT
int32_t unsafe_printf_16_ffi(moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h, void *i, void *j, void *k, void *l, void *m, void *n, void *o, void *p) {
    return printf((const char *)format, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p);
}


///////////////////////
// 官方原语做胶水
#ifdef _WIN32
#include <windows.h>
#endif

MOONBIT_FFI_EXPORT
void moonbit_printf_ffi(moonbit_string_t str) {
#ifdef _WIN32
  unsigned int prev_cp = GetConsoleOutputCP();
  SetConsoleOutputCP(CP_UTF8);
#endif
  int32_t const len = Moonbit_array_length(str);
  for (int32_t i = 0; i < len; ++i) {
    uint32_t c = str[i];
    if (0xD800 <= c && c <= 0xDBFF) {
      c -= 0xD800;
      i = i + 1;
      uint32_t l = str[i] - 0xDC00;
      c = ((c << 10) + l) + 0x10000;
    }
    // stdout accepts UTF-8, so convert the stream to UTF-8 first
    if (c < 0x80) {
      putchar(c);
    } else if (c < 0x800) {
      putchar(0xc0 + (c >> 6));
      putchar(0x80 + (c & 0x3f));
    } else if (c < 0x10000) {
      putchar(0xe0 + (c >> 12));
      putchar(0x80 + ((c >> 6) & 0x3f));
      putchar(0x80 + (c & 0x3f));
    } else {
      putchar(0xf0 + (c >> 18));
      putchar(0x80 + ((c >> 12) & 0x3f));
      putchar(0x80 + ((c >> 6) & 0x3f));
      putchar(0x80 + (c & 0x3f));
    }
  }
#ifdef _WIN32
  SetConsoleOutputCP(prev_cp);
#endif
}




///////////////////////

///////////////////////
// Macro / utility
MOONBIT_FFI_EXPORT
moonbit_bytes_t make_buf_ffi(int32_t size) {
    return moonbit_make_bytes(size, 0);
}

///////////////////////
// scanf family - variadic enumeration
// int scanf(const char *format, ...);
MOONBIT_FFI_EXPORT
int32_t scanf_0_ffi(moonbit_bytes_t format) {
    return scanf((const char *)format);
}

MOONBIT_FFI_EXPORT
int32_t scanf_1_ffi(moonbit_bytes_t format, moonbit_bytes_t a) {
    return scanf((const char *)format, (void *)a);
}

MOONBIT_FFI_EXPORT
int32_t scanf_2_ffi(moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b) {
    return scanf((const char *)format, (void *)a, (void *)b);
}

MOONBIT_FFI_EXPORT
int32_t scanf_3_ffi(moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c) {
    return scanf((const char *)format, (void *)a, (void *)b, (void *)c);
}

MOONBIT_FFI_EXPORT
int32_t scanf_4_ffi(moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d) {
    return scanf((const char *)format, (void *)a, (void *)b, (void *)c, (void *)d);
}

MOONBIT_FFI_EXPORT
int32_t scanf_5_ffi(moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e) {
    return scanf((const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e);
}

MOONBIT_FFI_EXPORT
int32_t scanf_6_ffi(moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f) {
    return scanf((const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f);
}

MOONBIT_FFI_EXPORT
int32_t scanf_7_ffi(moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f, moonbit_bytes_t g) {
    return scanf((const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f, (void *)g);
}

MOONBIT_FFI_EXPORT
int32_t scanf_8_ffi(moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f, moonbit_bytes_t g, moonbit_bytes_t h) {
    return scanf((const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f, (void *)g, (void *)h);
}

// int fscanf(FILE *stream, const char *format, ...);
MOONBIT_FFI_EXPORT
int32_t fscanf_0_ffi(void *stream, moonbit_bytes_t format) {
    return fscanf((FILE *)stream, (const char *)format);
}

MOONBIT_FFI_EXPORT
int32_t fscanf_1_ffi(void *stream, moonbit_bytes_t format, moonbit_bytes_t a) {
    return fscanf((FILE *)stream, (const char *)format, (void *)a);
}

MOONBIT_FFI_EXPORT
int32_t fscanf_2_ffi(void *stream, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b) {
    return fscanf((FILE *)stream, (const char *)format, (void *)a, (void *)b);
}

MOONBIT_FFI_EXPORT
int32_t fscanf_3_ffi(void *stream, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c) {
    return fscanf((FILE *)stream, (const char *)format, (void *)a, (void *)b, (void *)c);
}

MOONBIT_FFI_EXPORT
int32_t fscanf_4_ffi(void *stream, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d) {
    return fscanf((FILE *)stream, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d);
}

MOONBIT_FFI_EXPORT
int32_t fscanf_5_ffi(void *stream, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e) {
    return fscanf((FILE *)stream, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e);
}

MOONBIT_FFI_EXPORT
int32_t fscanf_6_ffi(void *stream, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f) {
    return fscanf((FILE *)stream, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f);
}

MOONBIT_FFI_EXPORT
int32_t fscanf_7_ffi(void *stream, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f, moonbit_bytes_t g) {
    return fscanf((FILE *)stream, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f, (void *)g);
}

MOONBIT_FFI_EXPORT
int32_t fscanf_8_ffi(void *stream, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f, moonbit_bytes_t g, moonbit_bytes_t h) {
    return fscanf((FILE *)stream, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f, (void *)g, (void *)h);
}

// int sscanf(const char *str, const char *format, ...);
MOONBIT_FFI_EXPORT
int32_t sscanf_0_ffi(moonbit_bytes_t str, moonbit_bytes_t format) {
    return sscanf((const char *)str, (const char *)format);
}

MOONBIT_FFI_EXPORT
int32_t sscanf_1_ffi(moonbit_bytes_t str, moonbit_bytes_t format, moonbit_bytes_t a) {
    return sscanf((const char *)str, (const char *)format, (void *)a);
}

MOONBIT_FFI_EXPORT
int32_t sscanf_2_ffi(moonbit_bytes_t str, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b) {
    return sscanf((const char *)str, (const char *)format, (void *)a, (void *)b);
}

MOONBIT_FFI_EXPORT
int32_t sscanf_3_ffi(moonbit_bytes_t str, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c) {
    return sscanf((const char *)str, (const char *)format, (void *)a, (void *)b, (void *)c);
}

MOONBIT_FFI_EXPORT
int32_t sscanf_4_ffi(moonbit_bytes_t str, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d) {
    return sscanf((const char *)str, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d);
}

MOONBIT_FFI_EXPORT
int32_t sscanf_5_ffi(moonbit_bytes_t str, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e) {
    return sscanf((const char *)str, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e);
}

MOONBIT_FFI_EXPORT
int32_t sscanf_6_ffi(moonbit_bytes_t str, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f) {
    return sscanf((const char *)str, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f);
}

MOONBIT_FFI_EXPORT
int32_t sscanf_7_ffi(moonbit_bytes_t str, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f, moonbit_bytes_t g) {
    return sscanf((const char *)str, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f, (void *)g);
}

MOONBIT_FFI_EXPORT
int32_t sscanf_8_ffi(moonbit_bytes_t str, moonbit_bytes_t format, moonbit_bytes_t a, moonbit_bytes_t b, moonbit_bytes_t c, moonbit_bytes_t d, moonbit_bytes_t e, moonbit_bytes_t f, moonbit_bytes_t g, moonbit_bytes_t h) {
    return sscanf((const char *)str, (const char *)format, (void *)a, (void *)b, (void *)c, (void *)d, (void *)e, (void *)f, (void *)g, (void *)h);
}

///////////////////////
// fprintf family - variadic enumeration
// int fprintf(FILE *stream, const char *format, ...);
MOONBIT_FFI_EXPORT
int32_t fprintf_0_ffi(void *stream, moonbit_bytes_t format) {
    return fprintf((FILE *)stream, "%s", (const char *)format);
}

MOONBIT_FFI_EXPORT
int32_t fprintf_1_ffi(void *stream, moonbit_bytes_t format, void *a) {
    return fprintf((FILE *)stream, (const char *)format, a);
}

MOONBIT_FFI_EXPORT
int32_t fprintf_2_ffi(void *stream, moonbit_bytes_t format, void *a, void *b) {
    return fprintf((FILE *)stream, (const char *)format, a, b);
}

MOONBIT_FFI_EXPORT
int32_t fprintf_3_ffi(void *stream, moonbit_bytes_t format, void *a, void *b, void *c) {
    return fprintf((FILE *)stream, (const char *)format, a, b, c);
}

MOONBIT_FFI_EXPORT
int32_t fprintf_4_ffi(void *stream, moonbit_bytes_t format, void *a, void *b, void *c, void *d) {
    return fprintf((FILE *)stream, (const char *)format, a, b, c, d);
}

MOONBIT_FFI_EXPORT
int32_t fprintf_5_ffi(void *stream, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e) {
    return fprintf((FILE *)stream, (const char *)format, a, b, c, d, e);
}

MOONBIT_FFI_EXPORT
int32_t fprintf_6_ffi(void *stream, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f) {
    return fprintf((FILE *)stream, (const char *)format, a, b, c, d, e, f);
}

MOONBIT_FFI_EXPORT
int32_t fprintf_7_ffi(void *stream, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g) {
    return fprintf((FILE *)stream, (const char *)format, a, b, c, d, e, f, g);
}

MOONBIT_FFI_EXPORT
int32_t fprintf_8_ffi(void *stream, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h) {
    return fprintf((FILE *)stream, (const char *)format, a, b, c, d, e, f, g, h);
}

///////////////////////
// sprintf family - variadic enumeration
// int sprintf(char *str, const char *format, ...);
MOONBIT_FFI_EXPORT
int32_t sprintf_0_ffi(moonbit_bytes_t str, moonbit_bytes_t format) {
    return sprintf((char *)str, "%s", (const char *)format);
}

MOONBIT_FFI_EXPORT
int32_t sprintf_1_ffi(moonbit_bytes_t str, moonbit_bytes_t format, void *a) {
    return sprintf((char *)str, (const char *)format, a);
}

MOONBIT_FFI_EXPORT
int32_t sprintf_2_ffi(moonbit_bytes_t str, moonbit_bytes_t format, void *a, void *b) {
    return sprintf((char *)str, (const char *)format, a, b);
}

MOONBIT_FFI_EXPORT
int32_t sprintf_3_ffi(moonbit_bytes_t str, moonbit_bytes_t format, void *a, void *b, void *c) {
    return sprintf((char *)str, (const char *)format, a, b, c);
}

MOONBIT_FFI_EXPORT
int32_t sprintf_4_ffi(moonbit_bytes_t str, moonbit_bytes_t format, void *a, void *b, void *c, void *d) {
    return sprintf((char *)str, (const char *)format, a, b, c, d);
}

MOONBIT_FFI_EXPORT
int32_t sprintf_5_ffi(moonbit_bytes_t str, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e) {
    return sprintf((char *)str, (const char *)format, a, b, c, d, e);
}

MOONBIT_FFI_EXPORT
int32_t sprintf_6_ffi(moonbit_bytes_t str, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f) {
    return sprintf((char *)str, (const char *)format, a, b, c, d, e, f);
}

MOONBIT_FFI_EXPORT
int32_t sprintf_7_ffi(moonbit_bytes_t str, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g) {
    return sprintf((char *)str, (const char *)format, a, b, c, d, e, f, g);
}

MOONBIT_FFI_EXPORT
int32_t sprintf_8_ffi(moonbit_bytes_t str, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h) {
    return sprintf((char *)str, (const char *)format, a, b, c, d, e, f, g, h);
}

///////////////////////
// snprintf family - variadic enumeration
// int snprintf(char *str, size_t size, const char *format, ...);
MOONBIT_FFI_EXPORT
int32_t snprintf_0_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format) {
    return snprintf((char *)str, (size_t)size, "%s", (const char *)format);
}

MOONBIT_FFI_EXPORT
int32_t snprintf_1_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format, void *a) {
    return snprintf((char *)str, (size_t)size, (const char *)format, a);
}

MOONBIT_FFI_EXPORT
int32_t snprintf_2_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format, void *a, void *b) {
    return snprintf((char *)str, (size_t)size, (const char *)format, a, b);
}

MOONBIT_FFI_EXPORT
int32_t snprintf_3_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format, void *a, void *b, void *c) {
    return snprintf((char *)str, (size_t)size, (const char *)format, a, b, c);
}

MOONBIT_FFI_EXPORT
int32_t snprintf_4_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format, void *a, void *b, void *c, void *d) {
    return snprintf((char *)str, (size_t)size, (const char *)format, a, b, c, d);
}

MOONBIT_FFI_EXPORT
int32_t snprintf_5_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e) {
    return snprintf((char *)str, (size_t)size, (const char *)format, a, b, c, d, e);
}

MOONBIT_FFI_EXPORT
int32_t snprintf_6_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f) {
    return snprintf((char *)str, (size_t)size, (const char *)format, a, b, c, d, e, f);
}

MOONBIT_FFI_EXPORT
int32_t snprintf_7_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g) {
    return snprintf((char *)str, (size_t)size, (const char *)format, a, b, c, d, e, f, g);
}

MOONBIT_FFI_EXPORT
int32_t snprintf_8_ffi(moonbit_bytes_t str, uint64_t size, moonbit_bytes_t format, void *a, void *b, void *c, void *d, void *e, void *f, void *g, void *h) {
    return snprintf((char *)str, (size_t)size, (const char *)format, a, b, c, d, e, f, g, h);
}
