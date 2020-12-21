set moduleName rasterization1_odd_m
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
set C_modelName {rasterization1_odd_m}
set C_modelType { void 0 }
set C_modelArgList {
	{ triangle_2d_x0_V int 8 regular  }
	{ triangle_2d_y0_V int 8 regular  }
	{ triangle_2d_x1_V int 8 regular  }
	{ triangle_2d_y1_V int 8 regular  }
	{ triangle_2d_x2_V int 8 regular  }
	{ triangle_2d_y2_V int 8 regular  }
	{ triangle_2d_z_V int 8 regular  }
	{ Output_1_V_V int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "triangle_2d_x0_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "triangle_2d_y0_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "triangle_2d_x1_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "triangle_2d_y1_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "triangle_2d_x2_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "triangle_2d_y2_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "triangle_2d_z_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Output_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ triangle_2d_x0_V sc_in sc_lv 8 signal 0 } 
	{ triangle_2d_y0_V sc_in sc_lv 8 signal 1 } 
	{ triangle_2d_x1_V sc_in sc_lv 8 signal 2 } 
	{ triangle_2d_y1_V sc_in sc_lv 8 signal 3 } 
	{ triangle_2d_x2_V sc_in sc_lv 8 signal 4 } 
	{ triangle_2d_y2_V sc_in sc_lv 8 signal 5 } 
	{ triangle_2d_z_V sc_in sc_lv 8 signal 6 } 
	{ Output_1_V_V sc_out sc_lv 32 signal 7 } 
	{ Output_1_V_V_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ Output_1_V_V_ap_ack sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "triangle_2d_x0_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_2d_x0_V", "role": "default" }} , 
 	{ "name": "triangle_2d_y0_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_2d_y0_V", "role": "default" }} , 
 	{ "name": "triangle_2d_x1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_2d_x1_V", "role": "default" }} , 
 	{ "name": "triangle_2d_y1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_2d_y1_V", "role": "default" }} , 
 	{ "name": "triangle_2d_x2_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_2d_x2_V", "role": "default" }} , 
 	{ "name": "triangle_2d_y2_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_2d_y2_V", "role": "default" }} , 
 	{ "name": "triangle_2d_z_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_2d_z_V", "role": "default" }} , 
 	{ "name": "Output_1_V_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_1_V_V", "role": "default" }} , 
 	{ "name": "Output_1_V_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Output_1_V_V", "role": "ap_vld" }} , 
 	{ "name": "Output_1_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_1_V_V", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "rasterization1_odd_m",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "triangle_2d_x0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "triangle_2d_y0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "triangle_2d_x1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "triangle_2d_y1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "triangle_2d_x2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "triangle_2d_y2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "triangle_2d_z_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_min_V_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "data_redir_m_out_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_index_V_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_1_4", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_redir_m_am_sbkb_U4", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_redir_m_am_sbkb_U5", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_redir_m_am_scud_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rasterization1_odd_m {
		triangle_2d_x0_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_y0_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_x1_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_y1_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_x2_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_y2_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_z_V {Type I LastRead 1 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 1}
		max_min_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_1 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_2 {Type IO LastRead -1 FirstWrite -1}
		data_redir_m_out_1 {Type IO LastRead -1 FirstWrite -1}
		max_index_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_3 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_4 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	triangle_2d_x0_V { ap_none {  { triangle_2d_x0_V in_data 0 8 } } }
	triangle_2d_y0_V { ap_none {  { triangle_2d_y0_V in_data 0 8 } } }
	triangle_2d_x1_V { ap_none {  { triangle_2d_x1_V in_data 0 8 } } }
	triangle_2d_y1_V { ap_none {  { triangle_2d_y1_V in_data 0 8 } } }
	triangle_2d_x2_V { ap_none {  { triangle_2d_x2_V in_data 0 8 } } }
	triangle_2d_y2_V { ap_none {  { triangle_2d_y2_V in_data 0 8 } } }
	triangle_2d_z_V { ap_none {  { triangle_2d_z_V in_data 0 8 } } }
	Output_1_V_V { ap_hs {  { Output_1_V_V out_data 1 32 }  { Output_1_V_V_ap_vld out_vld 1 1 }  { Output_1_V_V_ap_ack out_acc 0 1 } } }
}
