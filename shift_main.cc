/*
 * Empty C++ Application
 */
#include "stdio.h"
#include "stream.h"

unsigned int output[16384];
void check_results(unsigned int * output);


// find the max from 3 integers
static unsigned char find_max_new( unsigned char in0, unsigned char in1, unsigned char in2 )
{

  if (in0 > in1)
  {
    if (in0 > in2)
    	return in0;

    else
    	return in2;
  }
  else
  {
    if (in1 > in2)
    	return in1;
    else
    	return in2;
  }
}

// find the min from 3 integers
static unsigned char find_min_new( unsigned char in0, unsigned char in1, unsigned char in2 )
{
  if (in0 < in1)
  {
    if (in0 < in2)
      return in0;
    else
      return in2;
  }
  else
  {
    if (in1 < in2)
      return in1;
    else
      return in2;
  }
}


int main()
{
	unsigned int data;
	unsigned int i=0;

	printf("Hello world\n");
	stream_inst stream(0, 0);
	stream.ap_start();

	for(i=0; i<3192; i++)
	{
	  printf("frame = %d\n", i);
	  unsigned int input_lo;
	  unsigned int input_mi;
	  unsigned int input_hi;

	  unsigned int out_tmp1;
	  unsigned int out_tmp2;
	  unsigned int out_tmp3;
	  unsigned int out_tmp4;

	  unsigned char triangle_2d_x0;
	  unsigned char triangle_2d_y0;
	  unsigned char triangle_2d_z0;
	  unsigned char triangle_2d_x1;
	  unsigned char triangle_2d_y1;
	  unsigned char triangle_2d_z1;
	  unsigned char triangle_2d_x2;
	  unsigned char triangle_2d_y2;
	  unsigned char triangle_2d_z2;
	  unsigned char triangle_2d_z;
	  unsigned int tmp;


	  static int parity=0;

	  int cw;
	  static unsigned char max_min[5]={0, 0, 0, 0, 0};
	  static int max_index[1]={0};

	  input_lo = stream.stream1_read();
	  input_mi = stream.stream1_read();
	  input_hi = stream.stream1_read();
	  //printf("%08x\n", input_lo);
	  //printf("%08x\n", input_mi);
	  //printf("%08x\n", input_hi);
	  //input_lo = read_word1();
	  //input_mi = read_word1();
	  //input_hi = read_word1();

	  triangle_2d_x0 = (unsigned char)((input_lo      ) & 0xff);
	  triangle_2d_y0 = (unsigned char)((input_lo >> 8 ) & 0xff);
	  triangle_2d_z0 = (unsigned char)((input_lo >> 16) & 0xff);
	  triangle_2d_x1 = (unsigned char)((input_lo >> 24) & 0xff);
	  triangle_2d_y1 = (unsigned char)((input_mi      ) & 0xff);
	  triangle_2d_z1 = (unsigned char)((input_mi >> 8 ) & 0xff);
	  triangle_2d_x2 = (unsigned char)((input_mi >> 16) & 0xff);
	  triangle_2d_y2 = (unsigned char)((input_mi >> 24) & 0xff);
	  triangle_2d_z2 = (unsigned char)((input_hi      ) & 0xff);



	  triangle_2d_z = triangle_2d_z0 / 3 + triangle_2d_z1 / 3 + triangle_2d_z2 / 3;


	  cw = (triangle_2d_x2 - triangle_2d_x0) * (triangle_2d_y1 - triangle_2d_y0)
	       - (triangle_2d_y2 - triangle_2d_y0) * (triangle_2d_x1 - triangle_2d_x0);


	  if(cw == 0 ){
	    tmp = 1;
	    tmp = tmp + (((unsigned int)triangle_2d_x0) << 8);
	    tmp = tmp + (((unsigned int)triangle_2d_y0) << 16);
	    tmp = tmp + (((unsigned int)triangle_2d_x1) << 24);
	    //write_word1(tmp);
	    out_tmp1=tmp;
	    //Output_1.write(tmp);

	    tmp = (unsigned int) triangle_2d_y1;
	    tmp = tmp + (((unsigned int)triangle_2d_x2) << 8);
	    tmp = tmp + (((unsigned int)triangle_2d_y2) << 16);
	    tmp = tmp + (((unsigned int)triangle_2d_z)  << 24);
	    //write_word1(tmp);
	    out_tmp2=tmp;
	    //Output_1.write(tmp);

	    tmp = (unsigned int) max_index[0];
	    tmp = tmp + (((unsigned int)max_min[0]) << 16);
	    tmp = tmp + (((unsigned int)max_min[1]) << 24);
	    //write_word1(tmp);
	    out_tmp3=tmp;
	    //Output_1.write(tmp);

	    tmp =  (unsigned int)max_min[2];
	    tmp = tmp + (((unsigned int)max_min[3]) << 8);
	    tmp = tmp + (((unsigned int)max_min[4]) << 16);
	    //tmp(31,24) = 0;
	    //write_word1(tmp);
	    out_tmp4=tmp;
	    //Output_1.write(tmp);


	    if(parity==0){
	    	stream.stream1_write(out_tmp1);
	    	stream.stream1_write(out_tmp2);
	    	stream.stream1_write(out_tmp3);
	    	stream.stream1_write(out_tmp4);
	    	//printf("out1: %08x\n", out_tmp1);
	    	//printf("out1: %08x\n", out_tmp2);
	    	//printf("out1: %08x\n", out_tmp3);
	    	//printf("out1: %08x\n", out_tmp4);
	    	parity = 1;
	    }else{
	    	stream.stream2_write(out_tmp1);
	    	stream.stream2_write(out_tmp2);
	    	stream.stream2_write(out_tmp3);
	    	stream.stream2_write(out_tmp4);
	    	//printf("out2: %08x\n", out_tmp1);
	    	//printf("out2: %08x\n", out_tmp2);
	    	//printf("out2: %08x\n", out_tmp3);
	    	//printf("out2: %08x\n", out_tmp4);
	    	parity = 0;
	    }
	  }else{


		  if ( cw < 0 )
		  {
			unsigned char tmp_x, tmp_y;

			tmp_x = triangle_2d_x0;
			tmp_y = triangle_2d_y0;

			triangle_2d_x0 = triangle_2d_x1;
			triangle_2d_y0 = triangle_2d_y1;

			triangle_2d_x1 = tmp_x;
			triangle_2d_y1 = tmp_y;

		  }


		  // find the rectangle bounds of 2D triangles
		  max_min[0] = find_min_new( triangle_2d_x0, triangle_2d_x1, triangle_2d_x2 );
		  max_min[1] = find_max_new( triangle_2d_x0, triangle_2d_x1, triangle_2d_x2 );
		  max_min[2] = find_min_new( triangle_2d_y0, triangle_2d_y1, triangle_2d_y2 );
		  max_min[3] = find_max_new( triangle_2d_y0, triangle_2d_y1, triangle_2d_y2 );
		  max_min[4] = max_min[1] - max_min[0];





		  // calculate index for searching pixels
		  max_index[0] = (max_min[1] - max_min[0]) * (max_min[3] - max_min[2]);

		  tmp = 0;
		  tmp = tmp + (((unsigned int)triangle_2d_x0) << 8);
		  tmp = tmp + (((unsigned int)triangle_2d_y0) << 16);
		  tmp = tmp + (((unsigned int)triangle_2d_x1) << 24);
		  //write_word1(tmp);
		  //Output_1.write(tmp);
		  out_tmp1=tmp;

		  tmp = (unsigned int) triangle_2d_y1;
		  tmp = tmp + (((unsigned int)triangle_2d_x2) << 8);
		  tmp = tmp + (((unsigned int)triangle_2d_y2) << 16);
		  tmp = tmp + (((unsigned int)triangle_2d_z) << 24);
		  //write_word1(tmp);
		  //Output_1.write(tmp);
		  out_tmp2=tmp;


		  tmp = (unsigned int)max_index[0];
		  tmp = tmp + (((unsigned int)max_min[0]) << 16);
		  tmp = tmp + (((unsigned int)max_min[1]) << 24);
		  //write_word1(tmp);
		  //Output_1.write(tmp);
		  out_tmp3=tmp;

		  tmp = (unsigned int) max_min[2];
		  tmp = tmp + (((unsigned int)max_min[3]) << 8);
		  tmp = tmp + (((unsigned int)max_min[4]) << 16);
		  //tmp= 0;
		  //write_word1(tmp);
		  //Output_1.write(tmp);
		  out_tmp4=tmp;


		  if(parity==0){
			stream.stream1_write(out_tmp1);
			stream.stream1_write(out_tmp2);
			stream.stream1_write(out_tmp3);
			stream.stream1_write(out_tmp4);
			//printf("out1: %08x\n", out_tmp1);
			//printf("out1: %08x\n", out_tmp2);
			//printf("out1: %08x\n", out_tmp3);
			//printf("out1: %08x\n", out_tmp4);
			parity = 1;
		  }else{
			stream.stream2_write(out_tmp1);
			stream.stream2_write(out_tmp2);
			stream.stream2_write(out_tmp3);
			stream.stream2_write(out_tmp4);
			//printf("out2: %08x\n", out_tmp1);
			//printf("out2: %08x\n", out_tmp2);
			//printf("out2: %08x\n", out_tmp3);
			//printf("out2: %08x\n", out_tmp4);
			parity = 0;
		  }
	  }
	}

	for(i=0; i<16; i++){
		data = stream.stream2_read();
		//printf("\n#%d: We get = %08x\n", i, data);
	}

	for(i=0; i<16384; i++){
		output[i] = stream.stream2_read();
		//printf("\n#%d: We get = %08x\n", i, data);
	}

	check_results(output);

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

