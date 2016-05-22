#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>

#include "master.h"

int foo( void )
{
void *libHandle;
void (*so_test)(void);

    printf( "foo(): dlopen() <so_test.so>\n" );
    libHandle = dlopen( "../../so/so/so_test.so", (RTLD_GLOBAL | RTLD_NOW) );
    if( !libHandle ) {
        fprintf( stderr, "dlopen() failed, %s\n", dlerror() );
        exit( 1 );
    }

    so_test = dlsym( libHandle, "so_foo" );
    if( !so_test) {
        fprintf( stderr, "dysym() failed, %s\n", dlerror() );
        exit( 1 );

    }

    (*so_test)();


    ar_foo();

}
