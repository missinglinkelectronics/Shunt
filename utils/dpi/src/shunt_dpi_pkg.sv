/*
============================================================================
 File        : shunt_dpi_pkg.sv
 Version     : 1.0.1
 Copyright (c) 2016-2017 IC Verimeter. All rights reserved.
               Licensed under the MIT License.
               See LICENSE file in the project root for full license information.
 Description : shunt dpi bridge
               System Verilog target initiator handshake (TCP/IP SystemVerilog SHUNT) 
  ============================================================================
*/
package shunt_dpi_pkg; 

`define SHUNT_MAX_SIZE = 4096;
   //Title: Utilites: System Verilog to C dpi bridge
   
   //Section: TCP/IP target/initiator init 
   
   /*
    Function: shunt_dpi_initiator_init
    TCP/IP initiator initialization
    
    Parameters: 
    portno - socket port
    
    Returns:  
    socket id
    (see shunt_prim_init_initiator)
    
    (start code)
    //Example:     
    #define MY_HOST "localhost"
    #define MY_PORT  3450
    
    int port;
    port = MY_PORT;
    
    shunt_prim_init_initiator(port);
    
    (end)
    
    */
`ifndef NO_SHUNT_DPI_INITIATOR_INIT 
   import "DPI-C" function int shunt_dpi_initiator_init (input int portno);
`endif
   
   /*
    Function: shunt_dpi_target_init
    TCP/IP target initialization
    
    portno - socket port
    hostname - initiator name    
    
    Returns:  
    socket id
    ( see  shunt_prim_init_tcptarget)
    
    (start code)  
    //Example:     
    #define MY_HOST "localhost"
    #define MY_PORT  3450
    
    char* hostname; 
    int port;
    port = MY_PORT;
    hostname =   MY_HOST;
    
    shunt_prim_init_tcptarget(port,hostname);
    (end)
    
    */
`ifndef NO_SHUNT_DPI_TARGET_INIT 
   import "DPI-C" function int shunt_dpi_target_init (input int portno,input string hostname);
`endif
   
   
   //Section: Integer types 
   
   /*
    Functions:  shunt_dpi_send_short
    map shortint 2-state data type,16-bit signed integer 
    see SV LRM 6.11 Integer data types shortint/short int*
    
    Parameters:
    sockid - socket id
    Short - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_SHORT  
   import "DPI-C" function int shunt_dpi_send_short  (input int sockid,input  shortint Short);
`endif
   
   /*
    Functions:  shunt_dpi_recv_short
    map shortint 2-state data type,16-bit signed integer 
    see SV LRM 6.11 Integer data types shortint/short int*
    
    Parameters:
    sockid - socket id
    Short - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_SHORT  
   import "DPI-C" function int shunt_dpi_recv_short  (input int sockid,output shortint Short);
`endif
   
   /*
    Functions:  shunt_dpi_send_int 
    map int 2-state data type,32-bit signed integer 
    LRM 6.11 Integer data types int/int*
    
    Parameters:
    sockid - socket id
    Int - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_INT    
   import "DPI-C" function int shunt_dpi_send_int    (input int sockid,input  int Int);
`endif
   
   /*
    Functions: shunt_dpi_recv_int 
    map int 2-state data type,32-bit signed integer 
    LRM 6.11 Integer data types int/int*
    
    Parameters:
    sockid - socket id
    Int - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_INT    
   import "DPI-C" function int shunt_dpi_recv_int    (input int sockid,output int Int);
`endif
   
   /*
    Functions:  shunt_dpi_send_long
    map longint 2-state data type,64-bit signed integer
    see SV LRM 6.11 Integer data types longint/long int*
    
    Parameters:
    sockid - socket id
    Long - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_LONG  
   import "DPI-C" function int shunt_dpi_send_long  (input int sockid,input  longint Long);
`endif
   
   /*
    Functions:  shunt_dpi_recv_long
    map longint 2-state data type,64-bit signed integer
    see SV LRM 6.11 Integer data types longint/long int*
        
    Parameters:
    sockid - socket id
    Long - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_LONG  
   import "DPI-C" function int shunt_dpi_recv_long  (input int sockid,output longint Long);
`endif
   
   /*
    Functions:  shunt_dpi_send_byte
    map byte 2-state data type, 8-bit signed integer or ASCII character  
    LRM 6.11 Integer data types char/char*
    
    Parameters:
    sockid - socket id
    Byte - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_BYTE   
   import "DPI-C" function int shunt_dpi_send_byte   (input int sockid,input  byte Byte);
`endif
  
   /*
    Functions:  shunt_dpi_recv_byte
    map byte 2-state data type, 8-bit signed integer or ASCII character  
    LRM 6.11 Integer data types char/char*
        
    Parameters:
    sockid - socket id
    Byte - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_BYTE   
   import "DPI-C" function int shunt_dpi_recv_byte   (input int sockid,output byte Byte);
`endif
   
   /*
    Functions:  shunt_dpi_send_integer
    map integer  4-state data type,32-bit signed integer 
    LRM 6.11 Integer data types
    
    Parameters:
    sockid - socket id
    Integer - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_INTEGER 
   import "DPI-C" function int shunt_dpi_send_integer (input int sockid,input integer Integer);
`endif
   
   
   /*
    Functions:  shunt_dpi_recv_integer
    map integer  4-state data type,32-bit signed integer 
    LRM 6.11 Integer data types
        
    Parameters:
    sockid - socket id
    Integer - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
   
`ifndef NO_SHUNT_DPI_RECV_INTEGER 
   import "DPI-C" function int shunt_dpi_recv_integer (input int sockid,inout integer Integer);
`endif
   
   
   /*
    Functions:  shunt_dpi_send_time
    map time  4-state data type, 64-bit unsigned integer 
    LRM 6.11 
    
    Parameters:
    sockid - socket id
    Time - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_TIME 
   import "DPI-C" function int shunt_dpi_send_time (input int sockid,input time Time);
`endif
   
   /*
    Functions:  shunt_dpi_recv_time
    map time  4-state data type, 64-bit unsigned integer 
    LRM 6.11 
        
    Parameters:
    sockid - socket id
    Time - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_TIME 
   import "DPI-C" function int shunt_dpi_recv_time (input int sockid,inout time Time);
`endif
    
   /*
    Functions:  shunt_dpi_send_bit
    map bit 2-state data type,user-defined vector size unsigned 
    LRM 6.11 
        
    Parameters:
    sockid - socket id
    Bit - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_BIT 
   import "DPI-C" function int shunt_dpi_send_bit (input int sockid,input bit Bit);
`endif
   
   /*
    Functions:  shunt_dpi_recv_bit
    mapbit 2-state data type,user-defined vector size unsigned 
    LRM 6.11 
            
    Parameters:
    sockid - socket id
    Bit - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_BIT 
   import "DPI-C" function int shunt_dpi_recv_bit (input int sockid,inout bit Bit);
`endif
   
   
  
/*
    Functions:  shunt_dpi_send_reg
    map reg/logic 4-state data type
    LRM 6.11 
        
    Parameters:
    sockid - socket id
    Reg - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_REG   
   import "DPI-C" function int shunt_dpi_send_reg   (input int sockid,input reg Reg);
`endif
   
   /*
    Functions:  shunt_dpi_recv_reg
    map reg/logic 4-state data type
    LRM  6.11 
            
    Parameters:
    sockid - socket id
    Reg - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_REG   
   import "DPI-C" function int shunt_dpi_recv_reg   (input int sockid,inout reg Reg);
`endif
 
   /*
    Functions:  shunt_dpi_send_logic
    map reg/logic 4-state data type
    LRM 6.11 
        
    Parameters:
    sockid - socket id
    Logic - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_LOGIC 
   import "DPI-C" function int shunt_dpi_send_logic (input int sockid,input logic Logic);
`endif
   
      
   /*
    Functions: shunt_dpi_recv_logic
    map reg/logic 4-state data type
    LRM  6.11 
            
    Parameters:
    sockid - socket id
    Logic - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_LOGIC 
   import "DPI-C" function int shunt_dpi_recv_logic (input int sockid,inout logic Logic);
`endif
     
  
   //Section: non_integer_type IEEE 754
      
   /*
    Functions: shunt_dpi_send_real
    map real data type is the same as a C double 8 byte 
    LRM 6.12
           
    Parameters:
    sockid - socket id
    Real - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */ 
`ifndef NO_SHUNT_DPI_SEND_REAL      
   import "DPI-C" function int shunt_dpi_send_real      (input int sockid,input  real Real);
`endif
   
    /*
    Functions: shunt_dpi_recv_real
    map real data type is the same as a C double 8 byte  
    LRM 6.12
    
    Parameters:
    sockid - socket id
    Real - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_REAL      
   import "DPI-C" function int shunt_dpi_recv_real      (input int sockid,output real Real);
`endif
   
   /*
    Functions: shunt_dpi_send_shortreal
    map real data type is the same as a C float 
    LRM 6.12
    
    Parameters:
    sockid - socket id
    Real - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */ 
`ifndef NO_SHUNT_DPI_SEND_SHORTREAL 
   import "DPI-C" function int shunt_dpi_send_shortreal (input int sockid,input  shortreal Real);
`endif
   
   /*
    Functions: shunt_dpi_recv_shortreal
    map real data type is the same as a C float  
    LRM 6.12
    
    Parameters:
    sockid - socket id
    Real - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_SHORTREAL 
   import "DPI-C" function int shunt_dpi_recv_shortreal (input int sockid,output shortreal Real);
`endif
   
   
   //Section: Vectors 
   
  
   
   
   
   /*
    Functions: shunt_dpi_send_bitN
    
    map bit[N:0]  2-state data type packed array of scalar bit types
    LRM 6.11 
        
    Parameters:
    sockid - socket id
    bitN - data
    size - number of vector elements
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_BITN
   import "DPI-C" function int shunt_dpi_send_bitN(input int sockid,input int size,input bit[] bitN);
`endif
   
   /*
    Functions: shunt_dpi_recv_bitN
    map bit[N:0] 2-state data type packed array of scalar bit types
    LRM  6.11 
            
    Parameters:
    sockid - socket id
    bitN - data
    size - number of vector elements
    
    Returns: 
    number of bytes have been recv : success > 0
    */
  
`ifndef NO_SHUNT_DPI_RECV_BITN  
   import "DPI-C" function int shunt_dpi_recv_bitN  (input int sockid,input int size,inout bit[] bitN);
`endif
   /*
    Functions: shunt_dpi_send_string
    map string string is an ordered collection of characters be indexed as a unpacked array of bytes 
    LRM 6.16
           
    Parameters:
    sockid - socket id
    String - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */ 
`ifndef NO_SHUNT_DPI_SEND_STRING 
   import "DPI-C" function int shunt_dpi_send_string (input int sockid,input int size,input  string String);
`endif
  
   /*
    Functions: shunt_dpi_recv_string
    map string string is an ordered collection of characters be indexed as a unpacked array of bytes 
    LRM 6.16 
    
    Parameters:
    sockid - socket id
    String - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_STRING 
   import "DPI-C" function int shunt_dpi_recv_string (input int sockid,input int size,inout  string String);
`endif
   
   //Section: Integer vector types    
  
   /*
    Functions:  shunt_dpi_send_intV
    map unpacked "int" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Int - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_INTV   
   import "DPI-C" function int shunt_dpi_send_intV   (input int sockid,input int size,input  int Int[]);
`endif
   
   /*
    Functions:  shunt_dpi_recv_intV
    map unpacked "int" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Int - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_INTV   
   import "DPI-C" function int shunt_dpi_recv_intV   (input int sockid,input int size,output int Int[]);
`endif
   
   
   /*
    Functions:  shunt_dpi_send_shortV
    map unpacked "shortint" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Int - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_SHORTV 
   import "DPI-C" function int shunt_dpi_send_shortV (input int sockid,input int size,input  shortint Int[]);
`endif
   
   /*
    Functions:  shunt_dpi_recv_shortV
    map unpacked "shortint" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Int - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_SHORTV 
   import "DPI-C" function int shunt_dpi_recv_shortV (input int sockid,input int size,output shortint Int[]);
`endif
  
   /*
    Functions:   shunt_dpi_send_longV 
    map unpacked "longint" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Int - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_SEND_LONGV 
   import "DPI-C" function int shunt_dpi_send_longV (input int sockid,input int size,input  longint Int[]);
`endif
   
   /*
    Functions: shunt_dpi_recv_longV
    map unpacked "longint" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Int - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_LONGV 
   import "DPI-C" function int shunt_dpi_recv_longV (input int sockid,input int size,output longint Int[]);
`endif
   
  
    /*
    Functions: shunt_dpi_send_realV  
    map unpacked "real" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Real - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */  
`ifndef NO_SHUNT_DPI_SEND_REALV  
   import "DPI-C" function int shunt_dpi_send_realV  (input int sockid,input int size,input  real Real[]);
`endif
   /*
    Functions: shunt_dpi_recv_realV 
    map unpacked "real" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Real - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_REALV  
   import "DPI-C" function int shunt_dpi_recv_realV  (input int sockid,input int size,output real Real[]);
`endif
   
    /*
    Functions: shunt_dpi_send_shortrealV  
    map unpacked "shortreal" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Shortreal - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */  
`ifndef NO_SHUNT_DPI_SEND_SHORTREALV
   import "DPI-C" function int shunt_dpi_send_shortrealV  (input int sockid,input int size,input  shortreal Shortreal[]);
`endif
   /*
    Functions: shunt_dpi_recv_shortrealV 
    map unpacked "shortreal" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    Shortreal - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_SHORTREALV
   import "DPI-C" function int shunt_dpi_recv_shortrealV  (input int sockid,input int size,output shortreal Shortreal[]);
`endif
    
  
  /*
    Functions: shunt_dpi_send_integerV  
    map unpacked "integer" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    IntegerV - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */  

`ifndef NO_SHUNT_DPI_SEND_INTEGERV
   import "DPI-C"  function int shunt_dpi_send_integerV (input int sockid,input int size,input integer IntegerV[]);
`endif
   
   /*
    Functions: shunt_dpi_recv_integerV 
    map unpacked "integer" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    size - number of vector elements 
    IntegerV - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_RECV_INTEGERV
   import "DPI-C"  function int shunt_dpi_recv_integerV (input  int sockid,input int size,output integer IntegerV[]);
`endif
 
   //Section: Integer/Non integer dynamic vectors     
   
   // Variable: cs_header_t
   
 /* verilator lint_off UNPACKED */  
   typedef struct{		
      real 	 trnx_type;
      real 	 trnx_id;
      real 	 data_type;
      int 	 n_payloads;
   } cs_header_t;
/* verilator lint_on UNPACKED */   
  
   // Variable: cs_data_header_t
   // See Also:
   // <Data exchange structures and utilities>      

`ifndef  NO_CS_DATA_HEADER_T  
   typedef struct{
      real 	 data_type;      real 	 data_type;
      int 	 trnx_payload_sizes[];
   }cs_data_header_t;
`endif
  
   /*
    Function: shunt_dpi_hash
    simple hash function 
    
    Parameters: 
    str - hash key
    
    Returns: 
    hash value
     
    See Also:
    <shunt_prim_hash>
    */
`ifndef NO_SHUNT_DPI_HASH
   import "DPI-C" function real shunt_dpi_hash(input string str);
`endif
   
 
   /*
    Function: shunt_dpi_send_header
    send SHUNT header over TCP/IP
    
    Parameters:
    
    sockid - socket id from init initiator/target 
    h - cs_header verilog structure <cs_header_t>
    
    See Also:
    <Data exchange structures and utilities>
    
    Returns:
    number of elements have been sent  : success > 0
    */ 
`ifndef NO_SHUNT_DPI_SEND_HEADER
   import "DPI-C" function int shunt_dpi_send_header(input int sockid,input cs_header_t h);
`endif
   
   /*
    Function: shunt_dpi_recv_header
    fetch SHUNT transaction header from TCP/IP socket
    
    Parameters:
    
    sockid - socket id from init initiator/target 
    h - cs_header verilog structure <cs_header_t>
    
    See Also:
    <Data exchange structures and utilities>
    
    Returns:
    number of elements have been sent  : success > 0
    */ 
`ifndef NO_SHUNT_DPI_RECV_HEADER
   import "DPI-C" function int shunt_dpi_recv_header(input int sockid,output cs_header_t h);
`endif
   
   
   /*
    Function: shunt_dpi_send_data_header
    send SHUNT data header over TCP/IP
                 
    Parameters:
    sockid - socket id from init initiator/target 
    h      - cs_header structure <cs_data_header_t>
    data_type - cs_data_header_t.data_type
    trnx_payload_sizes -cs_data_header_t.trnx_payload_sizes, number of data payloads.trnx_payload_sizes
    
    Returns:
    
    number of elements have been sent  : success > 0
     
    See Also:
    <Data exchange structures and utilities>
    */
`ifndef NO_SHUNT_DPI_SEND_DATA_HEADER
   import "DPI-C" function int shunt_dpi_send_data_header(input int sockid,input cs_header_t h,input real data_type,input int trnx_payload_sizes[]);
`endif
  
   /*
    Function: shunt_dpi_recv_data_header
    fetch SHUNT transaction data header from TCP/IP socket
                
    Parameters:
    sockid - socket id from init initiator/target <cs_data_header_t>
    h      - cs_header structure <cs_header_t>
    data_type - cs_data_header_t.data_type
    trnx_payload_sizes -cs_data_header_t.trnx_payload_sizes, number of data payloads.trnx_payload_sizes
    
    Returns:
    
    number of elements have been sent  : success > 0
     
    See Also:
    <Data exchange structures and utilities>
    */ 
`ifndef NO_SHUNT_DPI_RECV_DATA_HEADER
   import "DPI-C" function int shunt_dpi_recv_data_header(input int sockid,input cs_header_t h,inout real data_type,inout int  trnx_payload_sizes[]);
`endif
   
  
   /*
    Functions: shunt_dpi_hs_send_short
    map unpacked dynamic "shortint" one-dimensional array 
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_SEND_SHORT
   import "DPI-C" function int shunt_dpi_hs_send_short     (input int sockid,input cs_header_t h_trnx,input shortint Array[]);
`endif
  
   /*
    Functions:  shunt_dpi_hs_recv_short
    map unpacked dynamic  "shortint" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */ 
`ifndef NO_SHUNT_DPI_HS_RECV_SHORT
   import "DPI-C" function int shunt_dpi_hs_recv_short     (input int sockid,input cs_header_t h_trnx,inout shortint Array[]); 
`endif
   
   /*
    Functions: shunt_dpi_hs_send_int 
    map unpacked dynamic "int" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_SEND_INT
   import "DPI-C" function int shunt_dpi_hs_send_int       (input int sockid,input cs_header_t h_trnx,input int  Array[]);
`endif
    
   /*
    Functions:  shunt_dpi_hs_recv_int
    map unpacked dynamic "int" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_RECV_INT
   import "DPI-C" function int shunt_dpi_hs_recv_int       (input int sockid,input cs_header_t h_trnx,inout int  Array[]);
`endif
   
    /*
    Functions: shunt_dpi_hs_send_long  
    map unpacked dynamic "longint" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_SEND_LONG
   import "DPI-C" function int shunt_dpi_hs_send_long      (input int sockid,input cs_header_t h_trnx,input longint Array[]);
`endif
   
   /*
    Functions: shunt_dpi_hs_recv_long
    map unpacked dynamic  "longint" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_RECV_LONG
   import "DPI-C" function int shunt_dpi_hs_recv_long      (input int sockid,input cs_header_t h_trnx,inout longint Array[]);
`endif
   
   /*
    Functions: shunt_dpi_hs_send_byte
    map  unpacked dynamic "byte" one-dimensional array 
    LRM 6.11 Integer data types char/char*
    
    Parameters:
    sockid - socket id
    Array - data
    
    Returns: 
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_SEND_BYTE
   import "DPI-C" function int shunt_dpi_hs_send_byte      (input int sockid,input cs_header_t h_trnx,input byte Array[]);
`endif
  
   /*
    Functions:  shunt_dpi_hs_recv_byte
    map  unpacked dynamic "byte" one-dimensional array 
    LRM 6.11 Integer data types char/char*
        
    Parameters:
    sockid - socket id
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_RECV_BYTE
   import "DPI-C" function int shunt_dpi_hs_recv_byte      (input int sockid,input cs_header_t h_trnx,inout byte Array[]);
`endif
   
   /*
    Functions: shunt_dpi_hs_send_string
    map string string is an ordered collection of characters be indexed as a unpacked array of bytes 
    LRM 6.16   
           
    Parameters:
    sockid - socket id
    String - data
    
    Returns: 
    number of bytes have been sent : success > 0
    
    See Also: 
    <shunt_dpi_send_string>
    */ 
`ifndef NO_SHUNT_DPI_HS_SEND_STRING    
   import "DPI-C" function int shunt_dpi_hs_send_string    (input int sockid,input cs_header_t h_trnx,input string String);
`endif
   
   /*
    Functions: shunt_dpi_hs_recv_string  
    map string string is an ordered collection of characters be indexed as a unpacked array of bytes 
    LRM 6.16 
    
    Parameters:
    sockid - socket id
    String - data
    
    Returns: 
    number of bytes have been recv : success > 0
    
    See Also:
    <shunt_dpi_recv_string>
    */
`ifndef NO_SHUNT_DPI_HS_RECV_STRING    
   import "DPI-C" function int shunt_dpi_hs_recv_string    (input int sockid,input cs_header_t h_trnx,inout string String);
`endif
   
   /*
    Functions: shunt_dpi_hs_send_integer  
    map  unpacked dynamic  "integer" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */  
`ifndef NO_SHUNT_DPI_HS_SEND_INTEGER
   import "DPI-C" function int shunt_dpi_hs_send_integer   (input int sockid,input cs_header_t h_trnx,input integer Array[]);
`endif
   
   /*
    Functions: shunt_dpi_hs_recv_integer 
    map unpacked  dynamic "integer" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_RECV_INTEGER
   import "DPI-C" function int shunt_dpi_hs_recv_integer   (input int sockid,input cs_header_t h_trnx,inout integer Array[]);
`endif
   
   /*
    Functions: shunt_dpi_hs_send_real
    map unpacked dynamic  "real" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */  
`ifndef NO_SHUNT_DPI_HS_SEND_REAL
   import "DPI-C" function int shunt_dpi_hs_send_real      (input int sockid,input cs_header_t h_trnx,input real Array[]);
`endif
   /*
    Functions: shunt_dpi_hs_recv_real
    map unpacked  dynamic "real" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_RECV_REAL
   import "DPI-C" function int shunt_dpi_hs_recv_real      (input int sockid,input cs_header_t h_trnx,inout real Array[]);
`endif
    
   /*
    Functions: shunt_dpi_hs_send_shortreal
    map unpacked dynamic "shortreal" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    number of bytes have been recv : success > 0
    */  
`ifndef NO_SHUNT_DPI_HS_SEND_SHORTREAL
   import "DPI-C" function int shunt_dpi_hs_send_shortreal (input int sockid,input cs_header_t h_trnx,input shortreal Array[]);
`endif
   
   /*
    Functions:  shunt_dpi_hs_recv_shortreal
    map unpacked dynamic "shortreal" one-dimensional array
    LRM 7.4.2 
    
    Parameters:
    
    sockid - socket id
    h_trnx - <cs_header_t> structure 
    Array - data
    
    Returns: 
    
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_RECV_SHORTREAL
   import "DPI-C" function int shunt_dpi_hs_recv_shortreal (input int sockid,input cs_header_t h_trnx,inout shortreal Array[]);
`endif
   
   /*
    Functions:  shunt_dpi_hs_send_bitN 
    map bit[N:0]  2-state data type packed array of scalar bit types
    LRM 6.11 
        
    Parameters: 
    
    sockid - socket id
    bitN - data
    h_trnx - <cs_header_t> structure 
    
    Returns: 
    
    number of bytes have been sent : success > 0
   
    */
`ifndef NO_SHUNT_DPI_HS_SEND_BITN
   import "DPI-C" function int shunt_dpi_hs_send_bitN (input int sockid,input cs_header_t h_trnx,input bit[] bitN);
`endif
   
   /*
    Functions: shunt_dpi_hs_recv_bitN 
    map bit[N:0] 2-state data type packed array of scalar bit types
    LRM  6.11 
            
    Parameters:
    
    sockid - socket id
    bitN - data
    h_trnx - <cs_header_t> structure 
    
    Returns: 
    
    number of bytes have been recv : success > 0
    
    
    */
`ifndef NO_SHUNT_DPI_HS_RECV_BITN
   import "DPI-C" function int shunt_dpi_hs_recv_bitN    (input int sockid,input cs_header_t h_trnx,inout bit[] bitN);
`endif
   
   
     
   /*
    Functions: shunt_dpi_hs_send_regN
    map reg[N:0] or logic[N:0]  4-state data type,packed array,user-defined vector size, unsigned 
    LRM 6.11 
        
    Parameters:
    
    sockid - socket id
    Reg  - data
    h_trnx - cs_header verilog structure <cs_header_t>
      
    Returns: 
    
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_SEND_REGN
   import "DPI-C" function int shunt_dpi_hs_send_regN   (input int sockid,input cs_header_t h_trnx,input reg[] Reg);
`endif
   
   /*
    Functions: shunt_dpi_hs_send_logicN
    map reg[N:0] or logic[N:0]  4-state data type,packed array,user-defined vector size, unsigned 
    LRM 6.11 
        
    Parameters:
    
    sockid - socket id
    Reg  - data
    h_trnx - cs_header_t structure
      
    Returns: 
    
    number of bytes have been sent : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_SEND_LOGICN
   import "DPI-C" function int shunt_dpi_hs_send_logicN (input int sockid,input cs_header_t h_trnx,input logic[] Reg);
`endif
   
    /*
    Functions: shunt_dpi_hs_recv_regN
    map reg[N:0] or logic[N:0]  4-state data type,packed array,user-defined vector size, unsigned
    LRM  6.11 
            
    Parameters:
    
     sockid - socket id
    Reg - data
    h_trnx - cs_header_t structure
    
    Returns: 
    
     number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_RECV_REGN
   import "DPI-C" function int shunt_dpi_hs_recv_regN   (input int sockid,input cs_header_t h_trnx,inout reg[] Reg);
`endif
   
   /*
    Functions: shunt_dpi_hs_recv_logicN
    map reg[N:0] or logic[N:0]  4-state data type,packed array,user-defined vector size, unsigned
    LRM  6.11 
            
    Parameters:
    
    sockid - socket id
    Reg - data
    h_trnx - cs_header_t structure
    
    Returns: 
    
    number of bytes have been recv : success > 0
    */
`ifndef NO_SHUNT_DPI_HS_RECV_LOGICN
   import "DPI-C" function int shunt_dpi_hs_recv_logicN (input int sockid,input cs_header_t h_trnx,inout logic[] Reg);
`endif
   
   
endpackage : shunt_dpi_pkg
