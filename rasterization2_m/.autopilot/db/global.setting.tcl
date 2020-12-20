
set TopModule "rasterization2_m"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c ../src/sdsoc/rendering_new.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile /home/ylxiao/ws_192/F200818_rendering_hls/rasterization2_m/rasterization2_m.directive
set TBFiles {verilog {../src/host/3d_rendering_host.cpp ../src/host/check_result.cpp ../src/host/check_result.h ../src/host/input_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} bc {../src/host/3d_rendering_host.cpp ../src/host/check_result.cpp ../src/host/check_result.h ../src/host/input_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} vhdl {../src/host/3d_rendering_host.cpp ../src/host/check_result.cpp ../src/host/check_result.h ../src/host/input_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} sc {../src/host/3d_rendering_host.cpp ../src/host/check_result.cpp ../src/host/check_result.h ../src/host/input_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} cas {../src/host/3d_rendering_host.cpp ../src/host/check_result.cpp ../src/host/check_result.h ../src/host/input_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile rasterization2_m.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
