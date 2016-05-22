#include <stdio.h>
#include <stdlib.h>
#include <curl/curl.h>
#include <master.h>

ar_faa()
{
    printf( "ar_faa(): %s\n", curl_version() );
}
