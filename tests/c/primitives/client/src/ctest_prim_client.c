
#include "svcs_primitives.c"
#include "../../includes/cs_common.h"

int main(void) {
  puts("\nctest_prim_client start");
  int socket;
  char *hostname;
  int port;
  int success=1;
  
  port = MY_PORT;
  hostname =   MY_HOST;
  //
  socket= svcs_prim_init_tcpclient(port,hostname);
  if (socket<0) {
    printf("\nctest_prim_client::FATAL ERROR");
    success=0;
  }
  printf("\nctest_prim_client::socket=%d", socket);

  if (success>0) {
    puts("\nctest_prim_client start: Echo loopback client test start");
    
    //INT Test
    int Int;
    Int = 0xdeadbeaf;
    if (svcs_prim_recv_int(socket,&Int)<=0) success = 0;
    if (svcs_prim_send_int(socket,&Int)<=0) success = 0;
    if (success ==0 )printf("\nint loopback client fail");
    puts("\nctest_prim_client end");

    //Double Test
    double Double;
    Double = -1;

    if (svcs_prim_recv_double(socket,&Double)<=0) success = 0;
    if (svcs_prim_send_double(socket,&Double)<=0) success = 0;
    if (success ==0 ) printf("\ndouble loopback client fail");

  }
  if ( success >0)
    return EXIT_SUCCESS;
  else 
    return EXIT_FAILURE;
}