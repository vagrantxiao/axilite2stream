set moduleName rasterization2_odd
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
set C_modelName {rasterization2_odd}
set C_modelType { void 0 }
set C_modelArgList {
	{ Input_1_V_V int 32 regular {pointer 0 volatile }  }
	{ Output_1_V_V int 32 regular {pointer 1 volatile }  }
	{ Output_2_V_V int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Input_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Output_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Output_2_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ Output_1_V_V sc_out sc_lv 32 signal 1 } 
	{ Output_1_V_V_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ Output_1_V_V_ap_ack sc_in sc_logic 1 outacc 1 } 
	{ Output_2_V_V sc_out sc_lv 32 signal 2 } 
	{ Output_2_V_V_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ Output_2_V_V_ap_ack sc_in sc_logic 1 outacc 2 } 
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
 	{ "name": "Output_1_V_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_1_V_V", "role": "default" }} , 
 	{ "name": "Output_1_V_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Output_1_V_V", "role": "ap_vld" }} , 
 	{ "name": "Output_1_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_1_V_V", "role": "ap_ack" }} , 
 	{ "name": "Output_2_V_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_2_V_V", "role": "default" }} , 
 	{ "name": "Output_2_V_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Output_2_V_V", "role": "ap_vld" }} , 
 	{ "name": "Output_2_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_2_V_V", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "rasterization2_odd",
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
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_2_V_V", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Output_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rasterization2_m_in_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rasterization2_m_out_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rasterization2_m_out_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fragment_x_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fragment_y_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fragment_z_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fragment_color_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fragment_x_V_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fragment_y_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fragment_z_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fragment_color_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rasterization2_m_fYi_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rasterization2_m_g8j_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rasterization2_m_hbi_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rasterization2_m_hbi_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rasterization2_m_hbi_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rasterization2_m_ibs_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rasterization2_m_ibs_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rasterization2_m_ibs_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rasterization2_odd {
		Input_1_V_V {Type I LastRead 3 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 3}
		Output_2_V_V {Type O LastRead -1 FirstWrite 3}
		rasterization2_m_in_1 {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_out_1 {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_out_3 {Type IO LastRead -1 FirstWrite -1}
		fragment_x_V_1 {Type IO LastRead -1 FirstWrite -1}
		fragment_y_V {Type IO LastRead -1 FirstWrite -1}
		fragment_z_V {Type IO LastRead -1 FirstWrite -1}
		fragment_color_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	Input_1_V_V { ap_hs {  { Input_1_V_V in_data 0 32 }  { Input_1_V_V_ap_vld in_vld 0 1 }  { Input_1_V_V_ap_ack in_acc 1 1 } } }
	Output_1_V_V { ap_hs {  { Output_1_V_V out_data 1 32 }  { Output_1_V_V_ap_vld out_vld 1 1 }  { Output_1_V_V_ap_ack out_acc 0 1 } } }
	Output_2_V_V { ap_hs {  { Output_2_V_V out_data 1 32 }  { Output_2_V_V_ap_vld out_vld 1 1 }  { Output_2_V_V_ap_ack out_acc 0 1 } } }
}
