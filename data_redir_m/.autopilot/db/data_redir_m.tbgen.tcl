set moduleName data_redir_m
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
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
}
set C_modelArgMapList {[ 
	{ "Name" : "Input_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Input_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
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
 	{ "name": "Output_1_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_1_V_V", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "data_redir_m",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rasterization1_odd_m_fu_42"}],
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "HS", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_42", "Port" : "Output_1_V_V"}]},
			{"Name" : "max_min_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_42", "Port" : "max_min_V_0"}]},
			{"Name" : "max_min_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_42", "Port" : "max_min_V_1"}]},
			{"Name" : "max_min_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_42", "Port" : "max_min_V_2"}]},
			{"Name" : "max_index_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_42", "Port" : "max_index_V_0"}]},
			{"Name" : "max_min_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_42", "Port" : "max_min_V_3"}]},
			{"Name" : "max_min_V_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rasterization1_odd_m_fu_42", "Port" : "max_min_V_4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rasterization1_odd_m_fu_42", "Parent" : "0",
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
			{"Name" : "max_min_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_index_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "max_min_V_4", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret_projection_odd_m_fu_67", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_forward_Output_1_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	data_redir_m {
		Input_1_V_V {Type I LastRead 2 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 0}
		max_min_V_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_2 {Type IO LastRead -1 FirstWrite -1}
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
		triangle_2d_z_V {Type I LastRead 0 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 0}
		max_min_V_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_1 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_2 {Type IO LastRead -1 FirstWrite -1}
		max_index_V_0 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_3 {Type IO LastRead -1 FirstWrite -1}
		max_min_V_4 {Type IO LastRead -1 FirstWrite -1}}
	projection_odd_m {
		input_lo_V {Type I LastRead 0 FirstWrite -1}
		input_mi_V {Type I LastRead 0 FirstWrite -1}
		input_hi_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Input_1_V_V { ap_hs {  { Input_1_V_V in_data 0 32 }  { Input_1_V_V_ap_vld in_vld 0 1 }  { Input_1_V_V_ap_ack in_acc 1 1 } } }
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
