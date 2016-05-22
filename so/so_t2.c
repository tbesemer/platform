#include <stdio.h>
#include <stdlib.h>
#include <curl/curl.h>
#include <master.h>

so_faa()
{
    printf( "so_faa(): %s\n", curl_version() );
}
