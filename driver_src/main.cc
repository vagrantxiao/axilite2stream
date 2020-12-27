#define DEBUG

#ifdef DEBUG
#include "stdio.h"
#include "stream.h"
#include "ap_uint.h"
unsigned int output[16384];
void check_results(unsigned int * output);
typedef ap_uint<2> bit2;
typedef ap_uint<8> bit8;
typedef ap_uint<16> bit16;
typedef ap_uint<32> bit32;

typedef ap_uint<128> bit128;

typedef struct
{
  bit8   x0;
  bit8   y0;
  bit8   x1;
  bit8   y1;
  bit8   x2;
  bit8   y2;
  bit8   z;
} Triangle_2D;



int main()
{
	unsigned int data;
	unsigned int i=0;
	static int parity = 0;
	printf("Hello world\n");
	stream_inst stream(0, 0);
	ap_uint<32> my_type1;
	my_type1 = 0;
	data = my_type1;
	printf("my_type1->tmp = %08x\n", data);
	my_type1.set(4, 2, 7);
	data = my_type1;
	printf("my_type1->tmp = %08x\n", data);
	my_type1(4, 2) = 1;
	printf("my_type1->tmp = %08x\n", data);
	printf("All DONE\n");
	return 0;
}



#else
/*
 * Empty C++ Application
 */
#include "stdio.h"
#include "stream.h"
#include "ap_uint.h"
unsigned int output[16384];
void check_results(unsigned int * output);
typedef ap_uint<2> bit2;
typedef ap_uint<8> bit8;
typedef ap_uint<16> bit16;
typedef ap_uint<32> bit32;

typedef ap_uint<128> bit128;

typedef struct
{
  bit8   x0;
  bit8   y0;
  bit8   x1;
  bit8   y1;
  bit8   x2;
  bit8   y2;
  bit8   z;
} Triangle_2D;


typedef struct
{
  bit8   x0;
  bit8   y0;
  bit8   z0;
  bit8   x1;
  bit8   y1;
  bit8   z1;
  bit8   x2;
  bit8   y2;
  bit8   z2;
} Triangle_3D;

static int check_clockwise( Triangle_2D triangle_2d )
{
  int cw;

  cw = (triangle_2d.x2 - triangle_2d.x0) * (triangle_2d.y1 - triangle_2d.y0)
       - (triangle_2d.y2 - triangle_2d.y0) * (triangle_2d.x1 - triangle_2d.x0);

  return cw;

}

// swap (x0, y0) (x1, y1) of a Triangle_2D
static void clockwise_vertices( Triangle_2D *triangle_2d )
{

  bit8 tmp_x, tmp_y;

  tmp_x = triangle_2d->x0;
  tmp_y = triangle_2d->y0;

  triangle_2d->x0 = triangle_2d->x1;
  triangle_2d->y0 = triangle_2d->y1;

  triangle_2d->x1 = tmp_x;
  triangle_2d->y1 = tmp_y;

}



// find the min from 3 integers
static bit8 find_min( bit8 in0, bit8 in1, bit8 in2 )
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


// find the max from 3 integers
static bit8 find_max( bit8 in0, bit8 in1, bit8 in2 )
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



int main()
{
	unsigned int data;
	unsigned int i=0;
	static int parity = 0;
	printf("Hello world\n");
	stream_inst stream(0, 0);
	stream.ap_start();

	for(i=0; i<3192; i++)
	{
	  printf("frame = %d\n", i);
	  bit32 input_lo;
	  bit32 input_mi;
	  bit32 input_hi;
	  bit128 input_tmp;

	  Triangle_2D triangle_2d;
	  Triangle_2D triangle_2ds_2;



	  input_lo = stream.stream1_read();
	  input_mi = stream.stream1_read();
	  input_hi = stream.stream1_read();
	#ifdef PROFILE
	  data_redir_m_in_1+=3;
	#endif

	  Triangle_3D triangle_3d;
	  // Setting camera to (0,0,-1), the canvas at z=0 plane
	  // The 3D model lies in z>0 space
	  // The coordinate on canvas is proportional to the corresponding coordinate
	  // on space

	    bit2 angle;
	    angle = 0;
	    triangle_3d.x0 = input_lo( 7,  0);
	    triangle_3d.y0 = input_lo(15,  8);
	    triangle_3d.z0 = input_lo(23, 16);
	    triangle_3d.x1 = input_lo(31, 24);
	    triangle_3d.y1 = input_mi( 7,  0);
	    triangle_3d.z1 = input_mi(15,  8);
	    triangle_3d.x2 = input_mi(23, 16);
	    triangle_3d.y2 = input_mi(31, 24);
	    triangle_3d.z2 = input_hi( 7,  0);

	  if(angle == 0)
	  {
	    (&triangle_2d)->x0 = triangle_3d.x0;
	    (&triangle_2d)->y0 = triangle_3d.y0;
	    (&triangle_2d)->x1 = triangle_3d.x1;
	    (&triangle_2d)->y1 = triangle_3d.y1;
	    (&triangle_2d)->x2 = triangle_3d.x2;
	    (&triangle_2d)->y2 = triangle_3d.y2;
	    (&triangle_2d)->z  = triangle_3d.z0 / 3 + triangle_3d.z1 / 3 + triangle_3d.z2 / 3;
	  }

	  else if(angle == 1)
	  {
		(&triangle_2d)->x0 = triangle_3d.x0;
		(&triangle_2d)->y0 = triangle_3d.z0;
		(&triangle_2d)->x1 = triangle_3d.x1;
		(&triangle_2d)->y1 = triangle_3d.z1;
		(&triangle_2d)->x2 = triangle_3d.x2;
		(&triangle_2d)->y2 = triangle_3d.z2;
		(&triangle_2d)->z  = triangle_3d.y0 / 3 + triangle_3d.y1 / 3 + triangle_3d.y2 / 3;
	  }

	  else if(angle == 2)
	  {
		(&triangle_2d)->x0 = triangle_3d.z0;
		(&triangle_2d)->y0 = triangle_3d.y0;
		(&triangle_2d)->x1 = triangle_3d.z1;
		(&triangle_2d)->y1 = triangle_3d.y1;
		(&triangle_2d)->x2 = triangle_3d.z2;
		(&triangle_2d)->y2 = triangle_3d.y2;
		(&triangle_2d)->z  = triangle_3d.x0 / 3 + triangle_3d.x1 / 3 + triangle_3d.x2 / 3;
	  }

	  //projection (input_lo,input_mi,input_hi,&triangle_2ds_1);
	  //rasterization1 (triangle_2d, Output_1, Output_2);



		Triangle_2D triangle_2d_same;
		static bit8 max_min[5];
		max_min[0] = 0;
		max_min[1] = 0;
		max_min[2] = 0;
		max_min[3] = 0;
		max_min[4] = 0;
		static bit16 max_index[1];
		max_index[0] = 0;
		bit32 tmp1, tmp2, tmp3, tmp4;


		// clockwise the vertices of input 2d triangle
		if ( check_clockwise( triangle_2d ) == 0 ){

			tmp1(7,0) = 1;
			tmp1(15, 8) = triangle_2d_same.x0;
			tmp1(23,16) = triangle_2d_same.y0;
			tmp1(31,24) = triangle_2d_same.x1;

			tmp2(7,0) = triangle_2d_same.y1;
			tmp2(15, 8) = triangle_2d_same.x2;
			tmp2(23,16) = triangle_2d_same.y2;
			tmp2(31,24) = triangle_2d_same.z;

			tmp3(15,0) = max_index[0];
			tmp3(23,16) = max_min[0];
			tmp3(31,24) = max_min[1];

			tmp4(7,0) = max_min[2];
			tmp4(15, 8) = max_min[3];
			tmp4(23,16) = max_min[4];
			tmp4(31,24) = 0;
			if(parity==0){
				stream.stream1_write(tmp1);
				stream.stream1_write(tmp2);
				stream.stream1_write(tmp3);
				stream.stream1_write(tmp4);
				parity = 1;
			}else{
				stream.stream2_write(tmp1);
				stream.stream2_write(tmp2);
				stream.stream2_write(tmp3);
				stream.stream2_write(tmp4);
				parity = 0;
			}
		}else{
		if ( check_clockwise( triangle_2d ) < 0 )
		  clockwise_vertices( &triangle_2d );




		// copy the same 2D triangle
		triangle_2d_same.x0 = triangle_2d.x0;
		triangle_2d_same.y0 = triangle_2d.y0;
		triangle_2d_same.x1 = triangle_2d.x1;
		triangle_2d_same.y1 = triangle_2d.y1;
		triangle_2d_same.x2 = triangle_2d.x2;
		triangle_2d_same.y2 = triangle_2d.y2;
		triangle_2d_same.z  = triangle_2d.z ;

		// find the rectangle bounds of 2D triangles
		max_min[0] = find_min( triangle_2d.x0, triangle_2d.x1, triangle_2d.x2 );
		max_min[1] = find_max( triangle_2d.x0, triangle_2d.x1, triangle_2d.x2 );
		max_min[2] = find_min( triangle_2d.y0, triangle_2d.y1, triangle_2d.y2 );
		max_min[3] = find_max( triangle_2d.y0, triangle_2d.y1, triangle_2d.y2 );
		max_min[4] = max_min[1] - max_min[0];

		// calculate index for searching pixels
		max_index[0] = (max_min[1] - max_min[0]) * (max_min[3] - max_min[2]);

		tmp1(7,0) = 0;
		tmp1(15,8) = triangle_2d_same.x0;
		tmp1(23,16) = triangle_2d_same.y0;
		tmp1(31,24) = triangle_2d_same.x1;

		tmp2(7,0) = triangle_2d_same.y1;
		tmp2(15,8) = triangle_2d_same.x2;
		tmp2(23,16) = triangle_2d_same.y2;
		tmp2(31,24) = triangle_2d_same.z;

		tmp3(15,0) = max_index[0];
		tmp3(23,16) = max_min[0];
		tmp3(31,24) = max_min[1];

		tmp4(7,0) = max_min[2];
		tmp4(15,8) = max_min[3];
		tmp4(23, 16) = max_min[4];
		tmp4(31, 24) = 0;

		if(parity==0){
			stream.stream1_write(tmp1);
			stream.stream1_write(tmp2);
			stream.stream1_write(tmp3);
			stream.stream1_write(tmp4);
			parity = 1;
		}else{
			stream.stream2_write(tmp1);
			stream.stream2_write(tmp2);
			stream.stream2_write(tmp3);
			stream.stream2_write(tmp4);
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
#endif
