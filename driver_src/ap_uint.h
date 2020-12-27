template <int T>
class ap_private
{
public:
	unsigned int tmp;


};
template <int T>
class ap_uint
{
  public:
#if(T<=8)
		  unsigned int tmp;
#elif(T<=16)
		  unsigned short tmp;
#elif(T<=32)
		  unsigned int tmp;
#else
		  unsigned long tmp;
#endif

typedef ap_private<T> Base;

#define CTOR(TYPE)				\

  CTOR(bool)
  CTOR(signed char)
  CTOR(unsigned char)
  CTOR(short)
  CTOR(unsigned short)
  CTOR(int)
  CTOR(unsigned int)
  CTOR(long)
  CTOR(unsigned long)
  CTOR(unsigned long long)
  CTOR(long long)
  CTOR(half)
  CTOR(float)
  CTOR(double)
  CTOR(const char*)
  // CTOR(const std::string&)
#undef CTOR

	ap_uint<T>(){
		tmp = 0;
	}
	unsigned int range(int b, int a);

	void set(int b, int a, unsigned int rhs);

	void operator = (unsigned int op1);

	template <int TT>
	ap_uint<T>& operator = (unsigned int op1){
		return &this;
	}

	operator int() const { return tmp; }

	template <int TT>
	friend unsigned int operator == (ap_uint<TT> &p1, ap_uint<TT> &p2);

	unsigned int operator() (int Hi, int Lo){
	    return this->range(Hi, Lo);
	}


	int operator - (ap_uint op1);

	int to_int();
};

















template <int T>
unsigned int ap_uint<T>::range(int b, int a){
	unsigned tmp1;
	unsigned tmp2;
	tmp1 = tmp >> a;
	tmp2 = (1 << (b-a+1))-1;
	return tmp1&tmp2;
}

template <int T>
void ap_uint<T>::set(int b, int a, unsigned int rhs){
	unsigned int hi;
	unsigned int mi;
	unsigned int lo;
	hi = (tmp >> (b+1)) << (b+1);
	lo = (tmp << (32-a)) >> (32-a);
	mi = rhs << 2;
	tmp = hi | lo | mi;
}


template <int T>
void ap_uint<T>::operator = (unsigned int op1){
	tmp = op1;
}

template <int TT>
unsigned int operator == (ap_uint<TT> &p1, ap_uint<TT> &p2){
	if(p1.tmp > p2.tmp)
		return p1.tmp;
	else
		return p2.tmp;
}

template <int T>
int ap_uint<T>::operator - (ap_uint op1){
	return -op1.tmp;
}

template <int T>
int ap_uint<T>::to_int(){
	return this->tmp;
}


