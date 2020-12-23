/*
 * Empty C++ Application
 */
#include "stdio.h"

#include "ap_uint.h"
#include "stream.h"
unsigned int output[16384];


int main()
{
	unsigned int data, data1, data2;
	unsigned int i=0;
	static int parity = 0;
	printf("Hello world\n");
	stream_inst stream(0, 0);
	stream.ap_start();
	ap_uint <32> my_type1;
	ap_uint <32> my_type2;
	my_type1 = 255;
	my_type2 = 240;
	data = my_type1;
	//data = my_type1;
	data1 = my_type1.to_int();
	data2 = my_type2.to_int();

	printf("data = %d\n",data);
	printf("data1 = %d\n",data1);
	printf("data2 = %d\n",data2);
	printf("All DONE\n");
	return 0;
}

void check_results(unsigned int * output)
{
    char frame_buffer_print[256][256];

    // read result from the 32-bit output buffer
    for (int i = 0, j = 0, n = 0; n < 16384; n ++ )
    {
    	unsigned int temp = output[n];

      frame_buffer_print[i][j++] = (char) (temp & 0x000000ff);
      frame_buffer_print[i][j++] = (char) ((temp & 0x0000ff00) >> 8);
      frame_buffer_print[i][j++] = (char) ((temp & 0x00ff0000) >> 16);
      frame_buffer_print[i][j++] = (char) ((temp & 0xff000000) >> 24);
      if(j == 256)
      {
        i++;
        j = 0;
      }
    }

  // print result
  printf("Image After Rendering: \n\r");
  for (int j = 256 - 1; j >= 0; j -- )
  {
    for (int i = 0; i < 256; i ++ )
    {
      int pix;
        pix = frame_buffer_print[i][j];
        //pix = output[i*256+j];
      if (pix!=0)
        printf("1");
      else
        printf("0");
    }
    printf("\n\r");
  }

}
/*

	for(i=0; i<0x00001000; i++){
		stream.stream1_write(i+5);
		stream.stream2_write(i+5);
		stream.stream3_write(i+5);
		stream.stream4_write(i+5);
		stream.stream5_write(i+5);
		stream.stream6_write(i+5);
		stream.stream7_write(i+5);
		data = stream.stream1_read();
		printf("\n#%d: We get = %08x\n", i, data);
		data = stream.stream2_read();
		printf("\n#%d: We get = %08x\n", i, data);
		data = stream.stream3_read();
		printf("\n#%d: We get = %08x\n", i, data);
		data = stream.stream4_read();
		printf("\n#%d: We get = %08x\n", i, data);
		data = stream.stream5_read();
		printf("\n#%d: We get = %08x\n", i, data);
		data = stream.stream6_read();
		printf("\n#%d: We get = %08x\n", i, data);
		data = stream.stream7_read();
		printf("\n#%d: We get = %08x\n", i, data);
	}
 *
 */
