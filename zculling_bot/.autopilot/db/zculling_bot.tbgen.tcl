set C_TypeInfoList {{ 
"zculling_bot" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"Input_1": [[], {"reference": "0"}] }, {"Input_2": [[], {"reference": "0"}] }, {"Output_1": [[], {"reference": "0"}] }],["1","2","3"],""],
 "1": [ "zculling_bot_out_1", [[], {"scalar": "int"}],""],
 "2": [ "zculling_bot_in_2", [[], {"scalar": "int"}],""],
 "3": [ "zculling_bot_in_1", [[], {"scalar": "int"}],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"4"]],"5"]}}], 
"4": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"5": ["hls", ""]
}}
set moduleName zculling_bot
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
set C_modelName {zculling_bot}
set C_modelType { void 0 }
set C_modelArgList {
	{ Input_1_V_V int 32 regular {pointer 0 volatile }  }
	{ Input_2_V_V int 32 regular {pointer 0 volatile }  }
	{ Output_1_V_V int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Input_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Input_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Input_2_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Input_2.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Input_1_V_V sc_in sc_lv 32 signal 0 } 
	{ Input_1_V_V_ap_vld sc_in sc_logic 1 invld 0 } 
	{ Input_1_V_V_ap_ack sc_out sc_logic 1 inacc 0 } 
	{ Input_2_V_V sc_in sc_lv 32 signal 1 } 
	{ Input_2_V_V_ap_vld sc_in sc_logic 1 invld 1 } 
	{ Input_2_V_V_ap_ack sc_out sc_logic 1 inacc 1 } 
	{ Output_1_V_V sc_out sc_lv 32 signal 2 } 
	{ Output_1_V_V_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ Output_1_V_V_ap_ack sc_in sc_logic 1 outacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Input_1_V_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Input_1_V_V", "role": "default" }} , 
 	{ "name": "Input_1_V_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Input_1_V_V", "role": "ap_vld" }} , 
 	{ "name": "Input_1_V_V_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Input_1_V_V", "role": "ap_ack" }} , 
 	{ "name": "Input_2_V_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Input_2_V_V", "role": "default" }} , 
 	{ "name": "Input_2_V_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Input_2_V_V", "role": "ap_vld" }} , 
 	{ "name": "Input_2_V_V_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Input_2_V_V", "role": "ap_ack" }} , 
 	{ "name": "Output_1_V_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_1_V_V", "role": "default" }} , 
 	{ "name": "Output_1_V_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Output_1_V_V", "role": "ap_vld" }} , 
 	{ "name": "Output_1_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_1_V_V", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "zculling_bot",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "HS", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Input_2_V_V", "Type" : "HS", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Input_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "odd_even_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zculling_bot_in_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zculling_bot_in_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "z_buffer_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zculling_bot_out_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_buffer_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_x_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_y_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_color_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	zculling_bot {
		Input_1_V_V {Type I LastRead 4 FirstWrite -1}
		Input_2_V_V {Type I LastRead 4 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 4}
		odd_even_V {Type IO LastRead -1 FirstWrite -1}
		zculling_bot_in_1 {Type IO LastRead -1 FirstWrite -1}
		zculling_bot_in_2 {Type IO LastRead -1 FirstWrite -1}
		counter_V {Type IO LastRead -1 FirstWrite -1}
		z_buffer_V {Type IO LastRead -1 FirstWrite -1}
		zculling_bot_out_1 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	Input_1_V_V { ap_hs {  { Input_1_V_V in_data 0 32 }  { Input_1_V_V_ap_vld in_vld 0 1 }  { Input_1_V_V_ap_ack in_acc 1 1 } } }
	Input_2_V_V { ap_hs {  { Input_2_V_V in_data 0 32 }  { Input_2_V_V_ap_vld in_vld 0 1 }  { Input_2_V_V_ap_ack in_acc 1 1 } } }
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
