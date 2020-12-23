
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

	unsigned int range(int b, int a);

	void operator = (unsigned int op1);

	operator int() const { return tmp; }

	template <int TT>
	friend unsigned int operator == (ap_uint<TT> &p1, ap_uint<TT> &p2);

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


