set lang "C++"
set moduleName "data_redir_m"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortName3 "data_redir_m_out_2"
set BitWidth3 "32"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Initializer3 ""
set External3 0
set Dims3 [list 0]
set Interface3 "wire"
set NameSpace3 [list ]
set DataType3 "int"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3 $Initializer3 $External3 $NameSpace3]
lappend globalVariable $Port3
set PortName4 "data_redir_m_out_1"
set BitWidth4 "32"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Initializer4 ""
set External4 0
set Dims4 [list 0]
set Interface4 "wire"
set NameSpace4 [list ]
set DataType4 "int"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4 $Initializer4 $External4 $NameSpace4]
lappend globalVariable $Port4
set PortName5 "data_redir_m_in_1"
set BitWidth5 "32"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Initializer5 ""
set External5 0
set Dims5 [list 0]
set Interface5 "wire"
set NameSpace5 [list ]
set DataType5 "int"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5 $Initializer5 $External5 $NameSpace5]
lappend globalVariable $Port5
set PortList ""
set PortName0 "Input_1"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set DataType0 "[list ap_uint 32 ]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "Output_1"
set BitWidth1 "32"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "2"
set Reference1 "1"
set Dims1 [list 0]
set Interface1 [list AP_STREAM 0] 
set DataType1 "[list ap_uint 32 ]"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "Output_2"
set BitWidth2 "32"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "2"
set Reference2 "1"
set Dims2 [list 0]
set Interface2 [list AP_STREAM 0] 
set DataType2 "[list ap_uint 32 ]"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
