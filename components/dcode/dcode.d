module dcode;

extern(C) int printf (scope const char * fmt, ...);

char[8] a = ['a'];

extern (C) void dlang_main()
{
    uint i = 0;


    printf("hello, dlang says : i = %d, char a len = %d\r\n", i, a.length);
}