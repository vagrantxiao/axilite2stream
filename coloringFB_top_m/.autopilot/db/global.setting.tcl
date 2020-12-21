
set TopModule "coloringFB_top_m"
set ClockPeriod "10.000000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7z020:clg484:-1"
set SourceFiles {sc {} c ../../../c_src/sdsoc/rendering.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile {/home/ylxiao/ws_201/RISC/ip_development/hls_prj/rendering/coloringFB_top_m/coloringFB_top_m.directive}
set TBFiles {verilog {../../../c_src/host/utils.h ../../../c_src/host/utils.cpp ../../../c_src/host/typedefs.h ../../../c_src/host/input_data.h ../../../c_src/host/check_result.h ../../../c_src/host/check_result.cpp ../../../c_src/host/3d_rendering_host.cpp} bc {../../../c_src/host/utils.h ../../../c_src/host/utils.cpp ../../../c_src/host/typedefs.h ../../../c_src/host/input_data.h ../../../c_src/host/check_result.h ../../../c_src/host/check_result.cpp ../../../c_src/host/3d_rendering_host.cpp} vhdl {../../../c_src/host/utils.h ../../../c_src/host/utils.cpp ../../../c_src/host/typedefs.h ../../../c_src/host/input_data.h ../../../c_src/host/check_result.h ../../../c_src/host/check_result.cpp ../../../c_src/host/3d_rendering_host.cpp} sc {../../../c_src/host/utils.h ../../../c_src/host/utils.cpp ../../../c_src/host/typedefs.h ../../../c_src/host/input_data.h ../../../c_src/host/check_result.h ../../../c_src/host/check_result.cpp ../../../c_src/host/3d_rendering_host.cpp} cas {../../../c_src/host/utils.h ../../../c_src/host/utils.cpp ../../../c_src/host/typedefs.h ../../../c_src/host/input_data.h ../../../c_src/host/check_result.h ../../../c_src/host/check_result.cpp ../../../c_src/host/3d_rendering_host.cpp} c {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "coloringFB_top_m.aps"
set AvePath "../.."
set HPFPO "0"
