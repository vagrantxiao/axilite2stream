set C_TypeInfoList {{ 
"rasterization2_m" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"Input_1": [[], {"reference": "0"}] }, {"Output_1": [[], {"reference": "0"}] }, {"Output_2": [[], {"reference": "0"}] }, {"Input_2": [[], {"reference": "0"}] }, {"Output_3": [[], {"reference": "0"}] }, {"Output_4": [[], {"reference": "0"}] }],["1","2","3","4","5","6"],""],
 "1": [ "rasterization2_m_out_4", [[], {"scalar": "int"}],""],
 "2": [ "rasterization2_m_out_3", [[], {"scalar": "int"}],""],
 "3": [ "rasterization2_m_out_2", [[], {"scalar": "int"}],""],
 "4": [ "rasterization2_m_out_1", [[], {"scalar": "int"}],""],
 "5": [ "rasterization2_m_in_2", [[], {"scalar": "int"}],""],
 "6": [ "rasterization2_m_in_1", [[], {"scalar": "int"}],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"7"]],"8"]}}], 
"7": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"8": ["hls", ""]
}}
set moduleName rasterization2_m
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
set C_modelName {rasterization2_m}
set C_modelType { void 0 }
set C_modelArgList {
	{ Input_1_V_V int 32 regular {pointer 0 volatile }  }
	{ Output_1_V_V int 32 regular {pointer 1 volatile }  }
	{ Output_2_V_V int 32 regular {pointer 1 volatile }  }
	{ Input_2_V_V int 32 regular {pointer 0 volatile }  }
	{ Output_3_V_V int 32 regular {pointer 1 volatile }  }
	{ Output_4_V_V int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Input_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Input_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_2_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_2.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Input_2_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Input_2.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_3_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_3.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_4_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_4.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
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
	{ Input_2_V_V sc_in sc_lv 32 signal 3 } 
	{ Input_2_V_V_ap_vld sc_in sc_logic 1 invld 3 } 
	{ Input_2_V_V_ap_ack sc_out sc_logic 1 inacc 3 } 
	{ Output_3_V_V sc_out sc_lv 32 signal 4 } 
	{ Output_3_V_V_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ Output_3_V_V_ap_ack sc_in sc_logic 1 outacc 4 } 
	{ Output_4_V_V sc_out sc_lv 32 signal 5 } 
	{ Output_4_V_V_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ Output_4_V_V_ap_ack sc_in sc_logic 1 outacc 5 } 
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
 	{ "name": "Output_2_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_2_V_V", "role": "ap_ack" }} , 
 	{ "name": "Input_2_V_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Input_2_V_V", "role": "default" }} , 
 	{ "name": "Input_2_V_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Input_2_V_V", "role": "ap_vld" }} , 
 	{ "name": "Input_2_V_V_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Input_2_V_V", "role": "ap_ack" }} , 
 	{ "name": "Output_3_V_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_3_V_V", "role": "default" }} , 
 	{ "name": "Output_3_V_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Output_3_V_V", "role": "ap_vld" }} , 
 	{ "name": "Output_3_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_3_V_V", "role": "ap_ack" }} , 
 	{ "name": "Output_4_V_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_4_V_V", "role": "default" }} , 
 	{ "name": "Output_4_V_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Output_4_V_V", "role": "ap_vld" }} , 
 	{ "name": "Output_4_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_4_V_V", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "14"],
		"CDFG" : "rasterization2_m",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rasterization2_odd_fu_58"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rasterization2_even_fu_82"}],
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "HS", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "Input_1_V_V"}]},
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "Output_1_V_V"}]},
			{"Name" : "Output_2_V_V", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "Output_2_V_V"}]},
			{"Name" : "Input_2_V_V", "Type" : "HS", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "Input_1_V_V"}]},
			{"Name" : "Output_3_V_V", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "Output_1_V_V"}]},
			{"Name" : "Output_4_V_V", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "Output_2_V_V"}]},
			{"Name" : "rasterization2_m_in_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "rasterization2_m_in_1"}]},
			{"Name" : "rasterization2_m_out_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "rasterization2_m_out_1"}]},
			{"Name" : "rasterization2_m_out_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "rasterization2_m_out_3"}]},
			{"Name" : "fragment_x_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "fragment_x_V_1"}]},
			{"Name" : "fragment_y_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "fragment_y_V"}]},
			{"Name" : "fragment_z_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "fragment_z_V"}]},
			{"Name" : "fragment_color_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization2_odd_fu_58", "Port" : "fragment_color_V"}]},
			{"Name" : "rasterization2_m_in_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "rasterization2_m_in_s"}]},
			{"Name" : "rasterization2_m_out_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "rasterization2_m_out_4"}]},
			{"Name" : "rasterization2_m_out", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "rasterization2_m_out"}]},
			{"Name" : "fragment_x_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "fragment_x_V"}]},
			{"Name" : "fragment_y_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "fragment_y_V_1"}]},
			{"Name" : "fragment_z_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "fragment_z_V_1"}]},
			{"Name" : "fragment_color_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_rasterization2_even_fu_82", "Port" : "fragment_color_V_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.fragment_x_V_1_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.fragment_y_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.fragment_z_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.fragment_color_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.rasterization2_m_fYi_U1", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.rasterization2_m_g8j_U2", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.rasterization2_m_hbi_U3", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.rasterization2_m_hbi_U4", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.rasterization2_m_hbi_U5", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.rasterization2_m_ibs_U6", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.rasterization2_m_ibs_U7", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_odd_fu_58.rasterization2_m_ibs_U8", "Parent" : "1"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "rasterization2_even",
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
			{"Name" : "rasterization2_m_in_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rasterization2_m_out_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rasterization2_m_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fragment_x_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fragment_y_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fragment_z_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fragment_color_V_1", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.fragment_x_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.fragment_y_V_1_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.fragment_z_V_1_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.fragment_color_V_1_U", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.rasterization2_m_fYi_U17", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.rasterization2_m_g8j_U18", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.rasterization2_m_hbi_U19", "Parent" : "14"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.rasterization2_m_hbi_U20", "Parent" : "14"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.rasterization2_m_hbi_U21", "Parent" : "14"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.rasterization2_m_ibs_U22", "Parent" : "14"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.rasterization2_m_ibs_U23", "Parent" : "14"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rasterization2_even_fu_82.rasterization2_m_ibs_U24", "Parent" : "14"}]}


set ArgLastReadFirstWriteLatency {
	rasterization2_m {
		Input_1_V_V {Type I LastRead 3 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 3}
		Output_2_V_V {Type O LastRead -1 FirstWrite 3}
		Input_2_V_V {Type I LastRead 3 FirstWrite -1}
		Output_3_V_V {Type O LastRead -1 FirstWrite 3}
		Output_4_V_V {Type O LastRead -1 FirstWrite 3}
		rasterization2_m_in_1 {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_out_1 {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_out_3 {Type IO LastRead -1 FirstWrite -1}
		fragment_x_V_1 {Type IO LastRead -1 FirstWrite -1}
		fragment_y_V {Type IO LastRead -1 FirstWrite -1}
		fragment_z_V {Type IO LastRead -1 FirstWrite -1}
		fragment_color_V {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_in_s {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_out_4 {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_out {Type IO LastRead -1 FirstWrite -1}
		fragment_x_V {Type IO LastRead -1 FirstWrite -1}
		fragment_y_V_1 {Type IO LastRead -1 FirstWrite -1}
		fragment_z_V_1 {Type IO LastRead -1 FirstWrite -1}
		fragment_color_V_1 {Type IO LastRead -1 FirstWrite -1}}
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
		fragment_color_V {Type IO LastRead -1 FirstWrite -1}}
	rasterization2_even {
		Input_1_V_V {Type I LastRead 3 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 3}
		Output_2_V_V {Type O LastRead -1 FirstWrite 3}
		rasterization2_m_in_s {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_out_4 {Type IO LastRead -1 FirstWrite -1}
		rasterization2_m_out {Type IO LastRead -1 FirstWrite -1}
		fragment_x_V {Type IO LastRead -1 FirstWrite -1}
		fragment_y_V_1 {Type IO LastRead -1 FirstWrite -1}
		fragment_z_V_1 {Type IO LastRead -1 FirstWrite -1}
		fragment_color_V_1 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Input_1_V_V { ap_hs {  { Input_1_V_V in_data 0 32 }  { Input_1_V_V_ap_vld in_vld 0 1 }  { Input_1_V_V_ap_ack in_acc 1 1 } } }
	Output_1_V_V { ap_hs {  { Output_1_V_V out_data 1 32 }  { Output_1_V_V_ap_vld out_vld 1 1 }  { Output_1_V_V_ap_ack out_acc 0 1 } } }
	Output_2_V_V { ap_hs {  { Output_2_V_V out_data 1 32 }  { Output_2_V_V_ap_vld out_vld 1 1 }  { Output_2_V_V_ap_ack out_acc 0 1 } } }
	Input_2_V_V { ap_hs {  { Input_2_V_V in_data 0 32 }  { Input_2_V_V_ap_vld in_vld 0 1 }  { Input_2_V_V_ap_ack in_acc 1 1 } } }
	Output_3_V_V { ap_hs {  { Output_3_V_V out_data 1 32 }  { Output_3_V_V_ap_vld out_vld 1 1 }  { Output_3_V_V_ap_ack out_acc 0 1 } } }
	Output_4_V_V { ap_hs {  { Output_4_V_V out_data 1 32 }  { Output_4_V_V_ap_vld out_vld 1 1 }  { Output_4_V_V_ap_ack out_acc 0 1 } } }
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
