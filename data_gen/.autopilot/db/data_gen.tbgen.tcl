set C_TypeInfoList {{ 
"data_gen" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"Output_1": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName data_gen
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {data_gen}
set C_modelType { void 0 }
set C_modelArgList {
	{ Output_1_V_V int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Output_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Output_1_V_V sc_out sc_lv 32 signal 0 } 
	{ Output_1_V_V_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ Output_1_V_V_ap_ack sc_in sc_logic 1 outacc 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Output_1_V_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_1_V_V", "role": "default" }} , 
 	{ "name": "Output_1_V_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Output_1_V_V", "role": "ap_vld" }} , 
 	{ "name": "Output_1_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_1_V_V", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "data_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12769", "EstimateLatencyMax" : "12769",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "triangle_3ds_x0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_y0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_z0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_x1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_y1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_z1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_x2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_y2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_z2_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_x0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_y0_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_z0_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_x1_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_y1_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_z1_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_x2_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_y2_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triangle_3ds_z2_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	data_gen {
		Output_1_V_V {Type O LastRead -1 FirstWrite 2}
		triangle_3ds_x0_V {Type I LastRead -1 FirstWrite -1}
		triangle_3ds_y0_V {Type I LastRead -1 FirstWrite -1}
		triangle_3ds_z0_V {Type I LastRead -1 FirstWrite -1}
		triangle_3ds_x1_V {Type I LastRead -1 FirstWrite -1}
		triangle_3ds_y1_V {Type I LastRead -1 FirstWrite -1}
		triangle_3ds_z1_V {Type I LastRead -1 FirstWrite -1}
		triangle_3ds_x2_V {Type I LastRead -1 FirstWrite -1}
		triangle_3ds_y2_V {Type I LastRead -1 FirstWrite -1}
		triangle_3ds_z2_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12769", "Max" : "12769"}
	, {"Name" : "Interval", "Min" : "12770", "Max" : "12770"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Output_1_V_V { ap_hs {  { Output_1_V_V out_data 1 32 }  { Output_1_V_V_ap_vld out_vld 1 1 }  { Output_1_V_V_ap_ack out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
