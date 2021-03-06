set C_TypeInfoList {{ 
"data_redir_m" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"Input_1": [[], {"reference": "0"}] }, {"Output_1": [[], {"reference": "0"}] }, {"Output_2": [[], {"reference": "0"}] }],["1","2","3"],""],
 "1": [ "data_redir_m_out_2", [[], {"scalar": "int"}],""],
 "2": [ "data_redir_m_out_1", [[], {"scalar": "int"}],""],
 "3": [ "data_redir_m_in_1", [[], {"scalar": "int"}],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"4"]],"5"]}}], 
"4": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"5": ["hls", ""]
}}
set moduleName data_redir_m
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
set C_modelName {data_redir_m}
set C_modelType { void 0 }
set C_modelArgList {
	{ Input_1_V_V int 32 regular {pointer 0 volatile }  }
	{ Output_1_V_V int 32 regular {pointer 1 volatile }  }
	{ Output_2_V_V int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Input_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Input_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_2_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_2.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "9", "10"],
		"CDFG" : "data_redir_m",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rasterization1_odd_m_fu_70"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rasterization1_even_s_fu_97"}],
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "HS", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_70", "Port" : "Output_1_V_V"}]},
			{"Name" : "Output_2_V_V", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rasterization1_even_s_fu_97", "Port" : "Output_1_V_V"}]},
			{"Name" : "data_redir_m_in_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_70", "Port" : "max_min_V_1_0"}]},
			{"Name" : "max_min_V_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_70", "Port" : "max_min_V_1_1"}]},
			{"Name" : "max_min_V_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_70", "Port" : "max_min_V_1_2"}]},
			{"Name" : "data_redir_m_out_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_70", "Port" : "data_redir_m_out_1"}]},
			{"Name" : "max_index_V_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_70", "Port" : "max_index_V_1_0"}]},
			{"Name" : "max_min_V_1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_70", "Port" : "max_min_V_1_3"}]},
			{"Name" : "max_min_V_1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_70", "Port" : "max_min_V_1_4"}]},
			{"Name" : "max_min_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rasterization1_even_s_fu_97", "Port" : "max_min_V_0"}]},
			{"Name" : "max_min_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rasterization1_even_s_fu_97", "Port" : "max_min_V_1"}]},
			{"Name" : "max_min_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rasterization1_even_s_fu_97", "Port" : "max_min_V_2"}]},
			{"Name" : "data_redir_m_out_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rasterization1_even_s_fu_97", "Port" : "data_redir_m_out_2"}]},
			{"Name" : "max_index_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rasterization1_even_s_fu_97", "Port" : "max_index_V_0"}]},
			{"Name" : "max_min_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rasterization1_even_s_fu_97", "Port" : "max_min_V_3"}]},
			{"Name" : "max_min_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rasterization1_even_s_fu_97", "Port" : "max_min_V_4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_odd_m_fu_70", "Parent" : "0", "Child" : ["2", "3", "4"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_odd_m_fu_70.data_redir_m_am_sbkb_U4", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_odd_m_fu_70.data_redir_m_am_sbkb_U5", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_odd_m_fu_70.data_redir_m_am_scud_U6", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_even_s_fu_97", "Parent" : "0", "Child" : ["6", "7", "8"],
		"CDFG" : "rasterization1_even_s",
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
			{"Name" : "max_min_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "data_redir_m_out_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_index_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_4", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_even_s_fu_97.data_redir_m_am_sbkb_U20", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_even_s_fu_97.data_redir_m_am_sbkb_U21", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_even_s_fu_97.data_redir_m_am_scud_U22", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret_projection_odd_m_fu_124", "Parent" : "0",
		"CDFG" : "projection_odd_m",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_lo_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_mi_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_hi_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret1_projection_even_m_fu_132", "Parent" : "0",
		"CDFG" : "projection_even_m",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_lo_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_mi_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_hi_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	data_redir_m {
		Input_1_V_V {Type I LastRead 5 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 1}
		Output_2_V_V {Type O LastRead -1 FirstWrite 1}
		data_redir_m_in_1 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_1 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_2 {Type IO LastRead -1 FirstWrite -1}
		data_redir_m_out_1 {Type IO LastRead -1 FirstWrite -1}
		max_index_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_3 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1_4 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_2 {Type IO LastRead -1 FirstWrite -1}
		data_redir_m_out_2 {Type IO LastRead -1 FirstWrite -1}
		max_index_V_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_3 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_4 {Type IO LastRead -1 FirstWrite -1}}
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
		max_min_V_1_4 {Type IO LastRead -1 FirstWrite -1}}
	rasterization1_even_s {
		triangle_2d_x0_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_y0_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_x1_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_y1_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_x2_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_y2_V {Type I LastRead 0 FirstWrite -1}
		triangle_2d_z_V {Type I LastRead 1 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 1}
		max_min_V_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_2 {Type IO LastRead -1 FirstWrite -1}
		data_redir_m_out_2 {Type IO LastRead -1 FirstWrite -1}
		max_index_V_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_3 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_4 {Type IO LastRead -1 FirstWrite -1}}
	projection_odd_m {
		input_lo_V {Type I LastRead 0 FirstWrite -1}
		input_mi_V {Type I LastRead 0 FirstWrite -1}
		input_hi_V {Type I LastRead 0 FirstWrite -1}}
	projection_even_m {
		input_lo_V {Type I LastRead 0 FirstWrite -1}
		input_mi_V {Type I LastRead 0 FirstWrite -1}
		input_hi_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Input_1_V_V { ap_hs {  { Input_1_V_V in_data 0 32 }  { Input_1_V_V_ap_vld in_vld 0 1 }  { Input_1_V_V_ap_ack in_acc 1 1 } } }
	Output_1_V_V { ap_hs {  { Output_1_V_V out_data 1 32 }  { Output_1_V_V_ap_vld out_vld 1 1 }  { Output_1_V_V_ap_ack out_acc 0 1 } } }
	Output_2_V_V { ap_hs {  { Output_2_V_V out_data 1 32 }  { Output_2_V_V_ap_vld out_vld 1 1 }  { Output_2_V_V_ap_ack out_acc 0 1 } } }
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
