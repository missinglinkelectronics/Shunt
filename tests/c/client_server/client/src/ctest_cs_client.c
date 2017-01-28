

#include "svcs_client_server.c"
#include "../../includes/cs_common.h"

int main(void) {
  puts("\nctest_cs_client start");
  int socket;
  char *hostname;
  int port;
  int success=1;
  
  port = MY_PORT;
  hostname =   MY_HOST;
 //
  socket= svcs_prim_init_tcpclient(port,hostname);
  if (socket<0) {
    printf("\nctest_cs_client::FATAL ERROR");
    success=0;
  }
  printf("\nctest_cs_client::socket=%d", socket);

  if (success>0) {
    puts("\nctest_cs_client start: Echo loopback client test start");

    cs_header header;
    header.sockid = socket;
    svcs_cs_recv_header (&header);
    svcs_cs_print_header(&header);

    int* IntV;
    IntV = malloc(sizeof(int)*header.trnx_payload_size);
    if (svcs_cs_recv_intV  (&header,IntV)<= 0) success = 0;
    if (success == 0 )  printf("\nIntV client fail recv");
    /*
    for (int i = 0; i < header.trnx_payload_size; i++) {
       	printf("\nserver IntV[%0d]=%d",i,IntV[i]);
          }
    */
    svcs_cs_send_header(&header);
    if (svcs_cs_send_intV (&header,IntV)<= 0) success = 0;
    if (success == 0 )  printf("\nIntV client fail send");
    
    puts("\nctest_cs_client end");
  }
  if ( success >0)
    return EXIT_SUCCESS;
  else 
    return EXIT_FAILURE;
}
