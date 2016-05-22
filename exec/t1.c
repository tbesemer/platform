#include <stdio.h>
#include <stdlib.h>

#include <master.h>


extern int foo();

main()
{
    printf( "t1: main(): calling foo()\n" );
    foo();
}
