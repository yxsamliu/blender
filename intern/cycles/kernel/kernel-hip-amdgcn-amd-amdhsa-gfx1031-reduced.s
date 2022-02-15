	.text
	.protected	kernel_gpu_integrator_shade_background ; -- Begin function kernel_gpu_integrator_shade_background
	.globl	kernel_gpu_integrator_shade_background
	.p2align	8
	.type	kernel_gpu_integrator_shade_background,@function
kernel_gpu_integrator_shade_background: ; @kernel_gpu_integrator_shade_background
.Lfunc_begin90:
	.loc	86 195 0                        ; /gpu/kernel.h:195:0
	.cfi_startproc
; %bb.0:                                ; %entry
	.cfi_escape 0x0f, 0x03, 0x30, 0x36, 0xe1 ; 
	.cfi_undefined 16
	s_movk_i32 s32, 0x2e00
	s_add_u32 s8, s8, s11
	s_addc_u32 s9, s9, 0
	s_setreg_b32 hwreg(HW_REG_FLAT_SCR_LO), s8
	s_setreg_b32 hwreg(HW_REG_FLAT_SCR_HI), s9
	s_add_u32 s0, s0, s11
	s_addc_u32 s1, s1, 0
	s_load_dword s8, s[6:7], 0x10
.Ltmp22945:
	.loc	17 287 12 prologue_end          ; hip/amd_detail/amd_hip_runtime.h:287:12
	s_load_dword s4, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s4, 0xffff
	s_mul_i32 s10, s10, s4
.Ltmp22946:
	.loc	86 196 57                       ; /gpu/kernel.h:196:57
	v_add_nc_u32_e32 v40, s10, v0
.Ltmp22947:
	.loc	86 198 20                       ; /gpu/kernel.h:198:20
	v_cmp_gt_i32_e32 vcc_lo, s8, v40
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_273
; %bb.1:                                ; %if.then
	.loc	86 0 20 is_stmt 0               ; /gpu/kernel.h:0:20
	s_load_dwordx4 s[48:51], s[6:7], 0x0
.Ltmp22948:
	.loc	86 199 44 is_stmt 1             ; /gpu/kernel.h:199:44
	v_ashrrev_i32_e32 v41, 31, v40
	.loc	86 199 23 is_stmt 0             ; /gpu/kernel.h:199:23
	s_waitcnt lgkmcnt(0)
	s_cmp_eq_u64 s[48:49], 0
	s_cbranch_scc1 BB90_3
; %bb.2:                                ; %cond.true
	.loc	86 199 44                       ; /gpu/kernel.h:199:44
	v_lshlrev_b64 v[0:1], 2, v[40:41]
	v_add_co_u32 v0, vcc_lo, s48, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s49, v1, vcc_lo
	global_load_dword v40, v[0:1], off
.Ltmp22949:
	.file	200 "/integrator" "shade_background.h"
	.loc	200 135 24 is_stmt 1            ; /integrator/shade_background.h:135:24
	s_waitcnt vmcnt(0)
	v_ashrrev_i32_e32 v41, 31, v40
BB90_3:                                 ; %cond.end
	.loc	200 0 24 is_stmt 0              ; /integrator/shade_background.h:0:24
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __integrator_state@rel32@lo+188
	s_addc_u32 s5, s5, __integrator_state@rel32@hi+196
	.loc	200 135 47                      ; /integrator/shade_background.h:135:47
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_getpc_b64 s[14:15]
	s_add_u32 s14, s14, __integrator_state@rel32@lo+4
	s_addc_u32 s15, s15, __integrator_state@rel32@hi+12
	s_waitcnt lgkmcnt(0)
	v_mad_i64_i32 v[88:89], s4, v40, 12, s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __integrator_state@rel32@lo+204
	s_addc_u32 s5, s5, __integrator_state@rel32@hi+212
	.loc	200 136 49 is_stmt 1            ; /integrator/shade_background.h:136:49
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_lshlrev_b64 v[0:1], 2, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v92, vcc_lo, s4, v0
	v_add_co_ci_u32_e32 v93, vcc_lo, s5, v1, vcc_lo
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1388
	s_addc_u32 s5, s5, __data@rel32@hi+1396
	s_load_dword s71, s[4:5], 0x0
	s_getpc_b64 s[12:13]
	s_add_u32 s12, s12, __data@rel32@lo+4
	s_addc_u32 s13, s13, __data@rel32@hi+12
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __lights@rel32@lo+4
	s_addc_u32 s5, s5, __lights@rel32@hi+12
	s_load_dwordx2 s[60:61], s[4:5], 0x0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1396
	s_addc_u32 s5, s5, __data@rel32@hi+1404
	s_load_dword s83, s[4:5], 0x0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __integrator_state@rel32@lo+100
	s_addc_u32 s5, s5, __integrator_state@rel32@hi+108
	s_load_dwordx4 s[4:7], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v56, vcc_lo, s4, v0
	v_add_co_ci_u32_e32 v57, vcc_lo, s5, v1, vcc_lo
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __shaders@rel32@lo+4
	s_addc_u32 s5, s5, __shaders@rel32@hi+12
	s_load_dwordx2 s[34:35], s[4:5], 0x0
	v_add_co_u32 v90, vcc_lo, s6, v0
	v_add_co_ci_u32_e32 v91, vcc_lo, s7, v1, vcc_lo
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __integrator_state@rel32@lo+140
	s_addc_u32 s5, s5, __integrator_state@rel32@hi+148
	s_load_dwordx8 s[4:11], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	v_mad_i64_i32 v[76:77], s4, v40, 12, s[4:5]
	s_clause 0x1
	s_load_dwordx4 s[16:19], s[14:15], 0x0
	s_load_dwordx2 s[4:5], s[14:15], 0x10
	v_lshlrev_b64 v[2:3], 1, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v78, vcc_lo, s4, v2
	v_add_co_ci_u32_e32 v79, vcc_lo, s5, v3, vcc_lo
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1472
	s_addc_u32 s5, s5, __data@rel32@hi+1480
	s_load_dwordx2 s[58:59], s[4:5], 0x0
	v_add_co_u32 v74, vcc_lo, s16, v0
	v_add_co_ci_u32_e32 v75, vcc_lo, s17, v1, vcc_lo
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+988
	s_addc_u32 s5, s5, __data@rel32@hi+996
	s_load_dwordx4 s[44:47], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s69, s45, 31
	v_add_co_u32 v72, vcc_lo, s18, v0
	v_add_co_ci_u32_e32 v73, vcc_lo, s19, v1, vcc_lo
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1500
	s_addc_u32 s5, s5, __data@rel32@hi+1508
	s_load_dword s65, s[4:5], 0x0
	s_mov_b32 s70, 0
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u32 s65, 0
	s_cselect_b32 s68, -1, 0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1112
	s_addc_u32 s5, s5, __data@rel32@hi+1120
	s_load_dword s52, s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s53, s52, 31
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1104
	s_addc_u32 s5, s5, __data@rel32@hi+1112
	s_load_dword s56, s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s57, s56, 31
	s_lshr_b32 s4, s44, 1
	s_bitcmp1_b32 s4, 0
	s_cselect_b32 s66, -1, 0
	s_ashr_i32 s47, s46, 31
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1132
	s_addc_u32 s5, s5, __data@rel32@hi+1140
	s_load_dword s54, s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s55, s54, 31
	s_cmp_lg_u64 s[54:55], -1
	s_cselect_b32 s67, -1, 0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1484
	s_addc_u32 s5, s5, __data@rel32@hi+1492
	s_load_dword s4, s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s33, -1, 0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1048
	s_addc_u32 s5, s5, __data@rel32@hi+1056
	s_load_dwordx8 s[36:43], s[4:5], 0x0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1160
	s_addc_u32 s5, s5, __data@rel32@hi+1168
	s_load_dword s48, s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s49, s48, 31
	s_cmp_eq_u64 s[48:49], -1
	s_cselect_b32 s64, -1, 0
	v_mad_i64_i32 v[62:63], s4, v40, 12, s[10:11]
	s_load_dword s62, s[12:13], 0x0
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s4, s62, 23
	s_bitcmp1_b32 s4, 0
	s_cselect_b32 s63, -1, 0
	v_mad_i64_i32 v[58:59], s4, v40, 12, s[6:7]
	v_mad_i64_i32 v[60:61], s4, v40, 12, s[8:9]
.Ltmp22950:
	.loc	200 138 27                      ; /integrator/shade_background.h:138:27
	s_cmp_lt_i32 s71, 1
	s_cbranch_scc1 BB90_118
.Ltmp22951:
; %bb.4:                                ; %for.body.preheader.i.i
	.loc	200 0 27 is_stmt 0              ; /integrator/shade_background.h:0:27
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1080
	s_addc_u32 s5, s5, __data@rel32@hi+1088
	s_load_dword s72, s[4:5], 0x0
	.loc	200 135 24 is_stmt 1            ; /integrator/shade_background.h:135:24
	global_load_dwordx3 v[44:46], v[88:89], off
	.loc	200 136 26                      ; /integrator/shade_background.h:136:26
	global_load_dword v47, v[92:93], off
	s_brev_b32 s73, 1
	s_waitcnt vmcnt(1)
	v_xor_b32_e32 v104, s73, v44
	v_xor_b32_e32 v105, s73, v45
	v_xor_b32_e32 v106, s73, v46
	s_getreg_b32 s4, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s4, s4, 16
	v_mov_b32_e32 v0, 16
	v_cmp_ne_u32_e32 vcc_lo, -1, v0
	s_mov_b32 s84, 0
	v_cndmask_b32_e64 v42, 0, s4, vcc_lo
	v_cndmask_b32_e32 v43, 0, v0, vcc_lo
	s_cmp_lg_u32 s44, 0
	s_cselect_b32 s74, -1, 0
	v_mov_b32_e32 v107, 0
	s_movk_i32 s75, 0xc0
	s_brev_b32 s76, 16
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v108, -1
	v_mov_b32_e32 v109, 0x7f7fffff
	s_brev_b32 s77, -2
	s_mov_b32 s78, 0xff000001
	v_mov_b32_e32 v110, 1
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr120
	s_branch BB90_10
BB90_5:                                 ; %Flow669
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 0 26 is_stmt 0              ; /integrator/shade_background.h:0:26
	s_or_b32 exec_lo, exec_lo, s4
BB90_6:                                 ; %Flow679
                                        ;   in Loop: Header=BB90_10 Depth=1
	v_mov_b32_e32 v2, 0
BB90_7:                                 ; %Flow691
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s5
BB90_8:                                 ; %Flow698
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s81
	v_cmp_ne_u32_e32 vcc_lo, 0, v2
	v_add_nc_u32_e32 v107, 1, v107
	v_cmp_eq_u32_e64 s4, s71, v107
	s_or_b32 s4, vcc_lo, s4
	s_andn2_b32 s5, s79, exec_lo
	s_and_b32 s4, s4, exec_lo
	s_or_b32 s79, s5, s4
BB90_9:                                 ; %Flow701
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s80
	s_and_b32 s4, exec_lo, s79
	s_or_b32 s84, s4, s84
	s_andn2_b32 exec_lo, exec_lo, s84
	s_cbranch_execz BB90_117
BB90_10:                                ; %for.body.i.i
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB90_48 Depth 2
                                        ;     Child Loop BB90_50 Depth 2
                                        ;     Child Loop BB90_52 Depth 2
                                        ;     Child Loop BB90_55 Depth 2
                                        ;     Child Loop BB90_57 Depth 2
                                        ;     Child Loop BB90_59 Depth 2
                                        ;     Child Loop BB90_65 Depth 2
                                        ;     Child Loop BB90_67 Depth 2
                                        ;     Child Loop BB90_69 Depth 2
                                        ;     Child Loop BB90_74 Depth 2
                                        ;     Child Loop BB90_76 Depth 2
                                        ;     Child Loop BB90_78 Depth 2
                                        ;     Child Loop BB90_80 Depth 2
                                        ;     Child Loop BB90_84 Depth 2
                                        ;     Child Loop BB90_86 Depth 2
                                        ;     Child Loop BB90_88 Depth 2
                                        ;     Child Loop BB90_94 Depth 2
                                        ;     Child Loop BB90_96 Depth 2
                                        ;     Child Loop BB90_98 Depth 2
                                        ;     Child Loop BB90_101 Depth 2
                                        ;     Child Loop BB90_103 Depth 2
                                        ;     Child Loop BB90_105 Depth 2
                                        ;     Child Loop BB90_112 Depth 2
                                        ;     Child Loop BB90_114 Depth 2
                                        ;     Child Loop BB90_116 Depth 2
	v_mad_u64_u32 v[0:1], s4, v107, s75, s[60:61]
.Ltmp22952:
	.loc	122 366 45 is_stmt 1            ; /light/light.h:366:45
	global_load_dword v0, v[0:1], off
.Ltmp22953:
	.loc	122 368 12                      ; /light/light.h:368:12
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
	s_mov_b32 s4, 0
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz BB90_16
.Ltmp22954:
; %bb.11:                               ; %if.end.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	122 0 12 is_stmt 0              ; /light/light.h:0:12
	v_mad_u64_u32 v[0:1], s4, v107, s75, s[60:61]
	.loc	122 365 40 is_stmt 1            ; /light/light.h:365:40
	s_clause 0x1
	global_load_dword v3, v[0:1], off offset:144
	global_load_dword v2, v[0:1], off offset:16 ; light.h:364 shader = klight->shader_id
.Ltmp22955:
	.loc	122 371 8                       ; /light/light.h:371:8
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v4, 28, v2
	v_and_b32_e32 v4, 1, v4
	v_cmp_eq_u32_e32 vcc_lo, 1, v4
	v_cmp_lg_f32_e64 s4, 0, v3
	s_and_b32 s7, vcc_lo, s4
	s_mov_b32 s4, 0
	s_and_saveexec_b32 s6, s7
	s_cbranch_execz BB90_15
.Ltmp22956:
; %bb.12:                               ; %if.end11.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	122 0 8 is_stmt 0               ; /light/light.h:0:8
	v_add_co_u32 v0, vcc_lo, 0x90, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, 0, v1, vcc_lo
	v_mad_u64_u32 v[3:4], s4, v107, s75, s[60:61]
	.loc	122 393 31 is_stmt 1            ; /light/light.h:393:31
	global_load_dwordx3 v[3:5], v[3:4], off offset:4
.Ltmp22957:
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v5, v5, v46
	v_fmac_f32_e32 v5, v4, v45
	v_fma_f32 v3, v3, v104, -v5
.Ltmp22958:
	.loc	122 395 36                      ; /light/light.h:395:36
	global_load_dword v4, v[0:1], off offset:4
.Ltmp22959:
	.loc	122 397 16                      ; /light/light.h:397:16
	s_waitcnt vmcnt(0)
	v_cmp_lt_f32_e32 vcc_lo, v3, v4
	v_cmp_ge_f32_e64 s4, v3, v4
	s_and_saveexec_b32 s7, s4
	s_cbranch_execz BB90_14
.Ltmp22960:
; %bb.13:                               ; %if.end23.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	122 415 33                      ; /light/light.h:415:33
	v_mul_f32_e32 v4, v3, v3
	.loc	122 415 44 is_stmt 0            ; /light/light.h:415:44
	v_mul_f32_e32 v3, v4, v3
	.loc	122 414 35 is_stmt 1            ; /light/light.h:414:35
	global_load_dword v0, v[0:1], off offset:8
	.loc	122 415 21                      ; /light/light.h:415:21
	v_rcp_f32_e32 v1, v3
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v111, v0, v1
	.loc	122 417 11                      ; /light/light.h:417:11
	v_mul_f32_e32 v120, s83, v111
	v_mov_b32_e32 v121, v2                ; light.h:401 ls->shader=klight->shader_id
	v_mov_b32_e32 v122, v107
BB90_14:                                ; %cleanup.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	122 0 11 is_stmt 0              ; /light/light.h:0:11
	s_or_b32 exec_lo, exec_lo, s7
	.loc	122 420 1 is_stmt 1             ; /light/light.h:420:1
	s_xor_b32 s4, vcc_lo, -1
	s_and_b32 s4, s4, exec_lo
.Ltmp22961:
BB90_15:                                ; %Flow699
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	122 0 1 is_stmt 0               ; /light/light.h:0:1
	s_or_b32 exec_lo, exec_lo, s6
	s_and_b32 s4, s4, exec_lo
BB90_16:                                ; %_Z29light_sample_from_distant_rayPK16KernelGlobalsGPU15HIP_vector_typeIfLj3EEiP11LightSample.exit.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s5
	s_mov_b32 s79, -1
	s_xor_b32 s4, s4, -1
	s_and_saveexec_b32 s5, s4
	s_xor_b32 s4, exec_lo, s5
; %bb.17:                               ; %for.inc.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 138 67 is_stmt 1            ; /integrator/shade_background.h:138:67
	v_add_nc_u32_e32 v107, 1, v107
	.loc	200 138 27 is_stmt 0            ; /integrator/shade_background.h:138:27
	v_cmp_eq_u32_e32 vcc_lo, s71, v107
	s_orn2_b32 s79, vcc_lo, exec_lo
; %bb.18:                               ; %Flow700
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 0 27                        ; /integrator/shade_background.h:0:27
	s_or_saveexec_b32 s80, s4
	s_xor_b32 exec_lo, exec_lo, s80
	s_cbranch_execz BB90_9
; %bb.19:                               ; %if.then.i7.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp22962:
	.loc	200 142 34 is_stmt 1            ; /integrator/shade_background.h:142:34
	global_load_dword v123, v[56:57], off
.Ltmp22963:
	.loc	200 144 21                      ; /integrator/shade_background.h:144:21
	v_and_b32_e32 v0, 0xfc00000, v121
	.loc	200 144 11 is_stmt 0            ; /integrator/shade_background.h:144:11
	v_cmp_ne_u32_e32 vcc_lo, 0, v0
	s_mov_b32 s4, -1
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz BB90_29
; %bb.20:                               ; %if.then6.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp22964:
	.loc	200 145 25 is_stmt 1            ; /integrator/shade_background.h:145:25
	v_and_b32_e32 v0, s76, v121
	.loc	200 145 14 is_stmt 0            ; /integrator/shade_background.h:145:14
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 8, v123
	v_cmp_eq_u32_e64 s4, 0, v0
	.loc	200 145 51                      ; /integrator/shade_background.h:145:51
	s_or_b32 s7, vcc_lo, s4
	s_mov_b32 s4, 0
	s_and_saveexec_b32 s6, s7
	s_cbranch_execz BB90_28
; %bb.21:                               ; %lor.lhs.false.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 146 25 is_stmt 1            ; /integrator/shade_background.h:146:25
	v_and_b32_e32 v0, 0x4000000, v121
	.loc	200 146 14 is_stmt 0            ; /integrator/shade_background.h:146:14
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v0, 18, v123
	v_cmp_ne_u32_e64 s4, 18, v0
	s_or_b32 s8, vcc_lo, s4
	s_mov_b32 s4, 0
	s_and_saveexec_b32 s7, s8
	s_cbranch_execz BB90_27
; %bb.22:                               ; %lor.lhs.false18.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 149 25 is_stmt 1            ; /integrator/shade_background.h:149:25
	v_and_b32_e32 v0, 0x2000000, v121
	.loc	200 149 14 is_stmt 0            ; /integrator/shade_background.h:149:14
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v0, 4, v123
	v_cmp_eq_u32_e64 s4, 0, v0
	.loc	200 149 52                      ; /integrator/shade_background.h:149:52
	s_or_b32 s9, vcc_lo, s4
	s_mov_b32 s4, 0
	s_and_saveexec_b32 s8, s9
	s_cbranch_execz BB90_26
; %bb.23:                               ; %lor.lhs.false25.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 150 25 is_stmt 1            ; /integrator/shade_background.h:150:25
	v_and_b32_e32 v0, 0x1000000, v121
	.loc	200 150 14 is_stmt 0            ; /integrator/shade_background.h:150:14
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v0, 1, v123
	v_cmp_eq_u32_e64 s4, 0, v0
	.loc	200 150 50                      ; /integrator/shade_background.h:150:50
	s_or_b32 s10, vcc_lo, s4
	s_mov_b32 s4, 0
	s_and_saveexec_b32 s9, s10
; %bb.24:                               ; %lor.lhs.false32.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 151 25 is_stmt 1            ; /integrator/shade_background.h:151:25
	v_and_b32_e32 v0, 0x800000, v121
	.loc	200 151 14 is_stmt 0            ; /integrator/shade_background.h:151:14
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v0, 0x80, v123
	v_cmp_eq_u32_e64 s4, 0, v0
	.loc	200 151 51                      ; /integrator/shade_background.h:151:51
	s_or_b32 s4, vcc_lo, s4
	s_and_b32 s4, s4, exec_lo
.Ltmp22965:
; %bb.25:                               ; %Flow697
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 0 51                        ; /integrator/shade_background.h:0:51
	s_or_b32 exec_lo, exec_lo, s9
	s_and_b32 s4, s4, exec_lo
BB90_26:                                ; %Flow696
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s8
	s_and_b32 s4, s4, exec_lo
BB90_27:                                ; %Flow695
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s7
	s_and_b32 s4, s4, exec_lo
BB90_28:                                ; %Flow694
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s6
	s_orn2_b32 s4, s4, exec_lo
BB90_29:                                ; %Flow693
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s5
	v_mov_b32_e32 v2, 1
	s_and_saveexec_b32 s81, s4
	s_cbranch_execz BB90_8
; %bb.30:                               ; %if.end40.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp22966:
	.loc	197 539 29 is_stmt 1            ; /integrator/shader_eval.h:539:29
	v_and_b32_e32 v94, 0x3fffff, v121
	v_lshlrev_b32_e32 v0, 5, v94
	.loc	197 540 47                      ; /integrator/shader_eval.h:540:47
	global_load_dword v3, v0, s[34:35] offset:16
.Ltmp22967:
	.loc	197 542 19                      ; /integrator/shader_eval.h:542:19
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, s76, v3
	.loc	197 542 7 is_stmt 0             ; /integrator/shader_eval.h:542:7
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_lshrrev_b32_e32 v0, 27, v3
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e64 s4, 1, v0
.Ltmp22968:
	.file	201 "/light" "sample.h"
	.loc	201 0 0                         ; /light/sample.h:0:0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 0
	s_and_saveexec_b32 s5, s4
	s_cbranch_execz BB90_32
; %bb.31:                               ; %if.then.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	v_lshlrev_b64 v[0:1], 5, v[94:95]
	v_add_co_u32 v0, s4, s34, v0
	v_add_co_ci_u32_e64 v1, s4, s35, v1, s4
.Ltmp22969:
	.loc	197 543 25 is_stmt 1            ; /integrator/shader_eval.h:543:25
	global_load_dwordx3 v[0:2], v[0:1], off
.Ltmp22970:
BB90_32:                                ; %_Z29shader_constant_emission_evalPK16KernelGlobalsGPUiP15HIP_vector_typeIfLj3EE.exit.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	197 0 25 is_stmt 0              ; /integrator/shader_eval.h:0:25
	s_or_b32 exec_lo, exec_lo, s5
	s_and_saveexec_b32 s82, vcc_lo
	s_cbranch_execz BB90_38
; %bb.33:                               ; %if.else12.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp22971:
	.loc	98 122 22 is_stmt 1             ; cycles/source/util/math_float3.h:122:22
	s_waitcnt vmcnt(0)
	v_xor_b32_e32 v0, s73, v44
	.loc	98 122 28 is_stmt 0             ; cycles/source/util/math_float3.h:122:28
	v_xor_b32_e32 v1, s73, v45
	.loc	98 122 34                       ; cycles/source/util/math_float3.h:122:34
	v_xor_b32_e32 v2, s73, v46
.Ltmp22972:
	.loc	126 163 9 is_stmt 1             ; /geom/shader_data.h:163:9
	buffer_store_dword v104, off, s[0:3], 0 offset:16
	buffer_store_dword v105, off, s[0:3], 0 offset:20
	buffer_store_dword v106, off, s[0:3], 0 offset:24
	.loc	126 164 9                       ; /geom/shader_data.h:164:9
	buffer_store_dword v104, off, s[0:3], 0 offset:28
	buffer_store_dword v105, off, s[0:3], 0 offset:32
	buffer_store_dword v106, off, s[0:3], 0 offset:36
	.loc	126 165 10                      ; /geom/shader_data.h:165:10
	buffer_store_dword v104, off, s[0:3], 0 offset:40
	buffer_store_dword v105, off, s[0:3], 0 offset:44
	buffer_store_dword v106, off, s[0:3], 0 offset:48
	.loc	126 166 9                       ; /geom/shader_data.h:166:9
	buffer_store_dword v0, off, s[0:3], 0 offset:52
	buffer_store_dword v1, off, s[0:3], 0 offset:56
	buffer_store_dword v2, off, s[0:3], 0 offset:60
	.loc	126 167 14                      ; /geom/shader_data.h:167:14
	buffer_store_dword v121, off, s[0:3], 0 offset:64
.Ltmp22973:
	.loc	126 170 17                      ; /geom/shader_data.h:170:17
	v_cmp_ne_u32_e32 vcc_lo, -1, v122
	v_cndmask_b32_e64 v0, 0, 1, vcc_lo
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	126 0 0 is_stmt 0               ; /geom/shader_data.h:0:0
	buffer_store_dword v0, off, s[0:3], 0 offset:80
.Ltmp22974:
	.loc	126 176 14 is_stmt 1            ; /geom/shader_data.h:176:14
	buffer_store_dword v108, off, s[0:3], 0 offset:92
	.loc	126 177 12                      ; /geom/shader_data.h:177:12
	buffer_store_dword v108, off, s[0:3], 0 offset:96
	.loc	126 179 12                      ; /geom/shader_data.h:179:12
	buffer_store_dword v108, off, s[0:3], 0 offset:76
	.loc	126 180 9                       ; /geom/shader_data.h:180:9
	buffer_store_dword v95, off, s[0:3], 0 offset:84
	.loc	126 181 9                       ; /geom/shader_data.h:181:9
	buffer_store_dword v95, off, s[0:3], 0 offset:88
	.loc	126 182 12                      ; /geom/shader_data.h:182:12
	buffer_store_dword v47, off, s[0:3], 0 offset:100
	.loc	126 183 18                      ; /geom/shader_data.h:183:18
	buffer_store_dword v109, off, s[0:3], 0 offset:104
	.loc	126 185 12                      ; /geom/shader_data.h:185:12
	buffer_store_dword v3, off, s[0:3], 0 offset:68
	.loc	126 186 19                      ; /geom/shader_data.h:186:19
	buffer_store_dword v95, off, s[0:3], 0 offset:72
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_35
; %bb.34:                               ; %if.then82.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp22975:
	.loc	126 231 16                      ; /geom/shader_data.h:231:16
	buffer_store_dword v122, off, s[0:3], 0 offset:96
.Ltmp22976:
BB90_35:                                ; %if.end84.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	126 0 16 is_stmt 0              ; /geom/shader_data.h:0:16
	s_or_b32 exec_lo, exec_lo, s4
	.loc	126 234 14 is_stmt 1            ; /geom/shader_data.h:234:14
	buffer_store_dword v95, off, s[0:3], 0 offset:172
	buffer_store_dword v95, off, s[0:3], 0 offset:176
	buffer_store_dword v95, off, s[0:3], 0 offset:180
	.loc	126 235 14                      ; /geom/shader_data.h:235:14
	buffer_store_dword v95, off, s[0:3], 0 offset:184
	buffer_store_dword v95, off, s[0:3], 0 offset:188
	buffer_store_dword v95, off, s[0:3], 0 offset:192
.Ltmp22977:
	.loc	126 256 10                      ; /geom/shader_data.h:256:10
	buffer_store_dword v95, off, s[0:3], 0 offset:108
	buffer_store_dword v95, off, s[0:3], 0 offset:112
	buffer_store_dword v95, off, s[0:3], 0 offset:116
	buffer_store_dword v95, off, s[0:3], 0 offset:120
	buffer_store_dword v95, off, s[0:3], 0 offset:124
	buffer_store_dword v95, off, s[0:3], 0 offset:128
	.loc	126 257 10                      ; /geom/shader_data.h:257:10
	buffer_store_dword v95, off, s[0:3], 0 offset:132
	buffer_store_dword v95, off, s[0:3], 0 offset:136
	buffer_store_dword v95, off, s[0:3], 0 offset:140
	buffer_store_dword v95, off, s[0:3], 0 offset:144
	buffer_store_dword v95, off, s[0:3], 0 offset:148
	buffer_store_dword v95, off, s[0:3], 0 offset:152
	.loc	126 258 10                      ; /geom/shader_data.h:258:10
	buffer_store_dword v95, off, s[0:3], 0 offset:156
	buffer_store_dword v95, off, s[0:3], 0 offset:160
	.loc	126 259 10                      ; /geom/shader_data.h:259:10
	buffer_store_dword v95, off, s[0:3], 0 offset:164
	buffer_store_dword v95, off, s[0:3], 0 offset:168
.Ltmp22978:
	.loc	201 79 5                        ; /light/sample.h:79:5
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _Z19shader_eval_surfaceILj290EiEvPK16KernelGlobalsGPUT0_P10ShaderDataPfj@rel32@lo+4
	s_addc_u32 s5, s5, _Z19shader_eval_surfaceILj290EiEvPK16KernelGlobalsGPUT0_P10ShaderDataPfj@rel32@hi+12
	v_mov_b32_e32 v0, v40
	v_mov_b32_e32 v1, v43
	v_mov_b32_e32 v2, v42
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0x80000
	s_swappc_b64 s[30:31], s[4:5]
.Ltmp22979:
	.loc	201 0 0 is_stmt 0               ; /light/sample.h:0:0
	buffer_load_dword v0, off, s[0:3], 0 offset:68
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 1, v0
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 0
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_37
; %bb.36:                               ; %if.then.i29.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp22980:
	.loc	197 570 33 is_stmt 1            ; /integrator/shader_eval.h:570:33
	s_clause 0x5
	buffer_load_dword v0, off, s[0:3], 0 offset:40
	buffer_load_dword v1, off, s[0:3], 0 offset:44
	buffer_load_dword v2, off, s[0:3], 0 offset:48
	buffer_load_dword v3, off, s[0:3], 0 offset:52
	buffer_load_dword v4, off, s[0:3], 0 offset:56
	buffer_load_dword v5, off, s[0:3], 0 offset:60
.Ltmp22981:
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v0, v3, v0
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v0, v4, v1
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v5, v2
.Ltmp22982:
	.loc	139 69 17 is_stmt 1             ; /closure/emissive.h:69:17
	v_cmp_lg_f32_e32 vcc_lo, 0, v0
	.loc	139 69 10 is_stmt 0             ; /closure/emissive.h:69:10
	v_cndmask_b32_e64 v2, 0, 1.0, vcc_lo
.Ltmp22983:
	.loc	197 570 48 is_stmt 1            ; /integrator/shader_eval.h:570:48
	s_clause 0x2
	buffer_load_dword v0, off, s[0:3], 0 offset:344
	buffer_load_dword v1, off, s[0:3], 0 offset:348
	buffer_load_dword v3, off, s[0:3], 0 offset:352
.Ltmp22984:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v0, v2, v0
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v1, v2, v1
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v2, v3
.Ltmp22985:
BB90_37:                                ; %_Z20shader_emissive_evalPK10ShaderData.exit.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	98 0 48                         ; cycles/source/util/math_float3.h:0:48
	s_or_b32 exec_lo, exec_lo, s4
BB90_38:                                ; %Flow692
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s82
.Ltmp22986:
	.loc	98 140 26 is_stmt 1             ; cycles/source/util/math_float3.h:140:26
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v0, v111
	.loc	98 140 35 is_stmt 0             ; cycles/source/util/math_float3.h:140:35
	v_mul_f32_e32 v1, v1, v111
	.loc	98 140 44                       ; cycles/source/util/math_float3.h:140:44
	v_mul_f32_e32 v0, v2, v111
.Ltmp22987:
	.loc	201 96 16 is_stmt 1             ; /light/sample.h:96:16
	v_cmp_ne_u32_e32 vcc_lo, -1, v122
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_40
; %bb.39:                               ; %if.then39.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	201 0 16 is_stmt 0              ; /light/sample.h:0:16
	v_mad_i64_i32 v[4:5], s5, v122, s75, s[60:61]
.Ltmp22988:
	.loc	201 98 25 is_stmt 1             ; /light/sample.h:98:25
	global_load_dwordx3 v[4:6], v[4:5], off offset:28
.Ltmp22989:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v4, v3
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v1, v5, v1
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v0, v6, v0
.Ltmp22990:
BB90_40:                                ; %_Z24light_sample_shader_evalPK16KernelGlobalsGPUiP10ShaderDataP11LightSamplef.exit.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	98 0 48                         ; cycles/source/util/math_float3.h:0:48
	s_or_b32 exec_lo, exec_lo, s4
.Ltmp22991:
	.loc	98 500 15 is_stmt 1             ; cycles/source/util/math_float3.h:500:15
	v_cmp_lg_f32_e32 vcc_lo, 0, v3
	v_cmp_lg_f32_e64 s4, 0, v1
	.loc	98 500 23 is_stmt 0             ; cycles/source/util/math_float3.h:500:23
	s_or_b32 s4, vcc_lo, s4
	.loc	98 500 45                       ; cycles/source/util/math_float3.h:500:45
	v_cmp_lg_f32_e32 vcc_lo, 0, v0
	s_or_b32 s4, s4, vcc_lo
	v_mov_b32_e32 v2, 1
	s_and_saveexec_b32 s5, s4
	s_cbranch_execz BB90_7
.Ltmp22992:
; %bb.41:                               ; %if.end45.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	200 166 23 is_stmt 1            ; /integrator/shade_background.h:166:23
	v_and_b32_e32 v2, 0x800, v123
	.loc	200 166 12 is_stmt 0            ; /integrator/shade_background.h:166:12
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_43
; %bb.42:                               ; %if.then48.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp22993:
	.loc	200 169 35 is_stmt 1            ; /integrator/shade_background.h:169:35
	global_load_dword v2, v[90:91], off
.Ltmp22994:
	.file	202 "/sample" "mis.h"
	.loc	202 51 13                       ; /sample/mis.h:51:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v2, v2
	.loc	202 51 27 is_stmt 0             ; /sample/mis.h:51:27
	v_fma_f32 v4, v120, v120, v2
	.loc	202 51 18                       ; /sample/mis.h:51:18
	v_rcp_f32_e32 v4, v4
	v_mul_f32_e32 v2, v2, v4
.Ltmp22995:
	.loc	98 140 26 is_stmt 1             ; cycles/source/util/math_float3.h:140:26
	v_mul_f32_e32 v3, v2, v3
	.loc	98 140 35 is_stmt 0             ; cycles/source/util/math_float3.h:140:35
	v_mul_f32_e32 v1, v2, v1
	.loc	98 140 44                       ; cycles/source/util/math_float3.h:140:44
	v_mul_f32_e32 v0, v2, v0
.Ltmp22996:
BB90_43:                                ; %if.end54.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	98 0 44                         ; cycles/source/util/math_float3.h:0:44
	s_or_b32 exec_lo, exec_lo, s4
	.loc	200 175 33 is_stmt 1            ; /integrator/shade_background.h:175:33
	global_load_dwordx3 v[7:9], v[76:77], off
.Ltmp22997:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v7, v3
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v4, v8, v1
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v5, v9, v0
.Ltmp22998:
	.loc	90 581 41 is_stmt 1             ; /film/accumulate.h:581:41
	global_load_ushort v6, v[78:79], off
.Ltmp22999:
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	v_and_b32_e32 v10, s77, v2
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	v_fma_f32 v3, v7, v3, v2
	v_cmp_lg_f32_e64 s4, v3, v2
	s_or_b32 s4, vcc_lo, s4
	.loc	94 320 77 is_stmt 0             ; cycles/source/util/math.h:320:77
	v_lshlrev_b32_e32 v3, 1, v2
	.loc	94 320 83                       ; cycles/source/util/math.h:320:83
	v_cmp_gt_u32_e32 vcc_lo, s78, v3
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	s_and_b32 vcc_lo, s4, vcc_lo
.Ltmp23000:
	.loc	98 563 7 is_stmt 1              ; cycles/source/util/math_float3.h:563:7
	v_cndmask_b32_e32 v12, 0, v2, vcc_lo
.Ltmp23001:
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	v_and_b32_e32 v2, s77, v4
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_fma_f32 v1, v8, v1, v4
	v_cmp_lg_f32_e64 s4, v1, v4
	s_or_b32 s4, vcc_lo, s4
	.loc	94 320 77 is_stmt 0             ; cycles/source/util/math.h:320:77
	v_lshlrev_b32_e32 v1, 1, v4
	.loc	94 320 83                       ; cycles/source/util/math.h:320:83
	v_cmp_gt_u32_e32 vcc_lo, s78, v1
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	s_and_b32 vcc_lo, s4, vcc_lo
.Ltmp23002:
	.loc	98 565 7 is_stmt 1              ; cycles/source/util/math_float3.h:565:7
	v_cndmask_b32_e32 v11, 0, v4, vcc_lo
.Ltmp23003:
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	v_and_b32_e32 v1, s77, v5
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_fma_f32 v0, v9, v0, v5
	v_cmp_lg_f32_e64 s4, v0, v5
	s_or_b32 s4, vcc_lo, s4
	.loc	94 320 77 is_stmt 0             ; cycles/source/util/math.h:320:77
	v_lshlrev_b32_e32 v0, 1, v5
	.loc	94 320 83                       ; cycles/source/util/math.h:320:83
	v_cmp_gt_u32_e32 vcc_lo, s78, v0
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	s_and_b32 vcc_lo, s4, vcc_lo
.Ltmp23004:
	.loc	98 567 7 is_stmt 1              ; cycles/source/util/math_float3.h:567:7
	v_cndmask_b32_e32 v10, 0, v5, vcc_lo
.Ltmp23005:
	.loc	90 124 25                       ; /film/accumulate.h:124:25
	s_waitcnt vmcnt(0)
	v_cmp_lt_u16_e32 vcc_lo, 1, v6
	.loc	90 124 17 is_stmt 0             ; /film/accumulate.h:124:17
	v_mov_b32_e32 v0, s59
	v_cndmask_b32_e32 v0, s58, v0, vcc_lo
.Ltmp23006:
	.loc	98 511 15 is_stmt 1             ; cycles/source/util/math_float3.h:511:15
	v_add_f32_e64 v1, |v11|, |v12|
	.loc	98 511 21 is_stmt 0             ; cycles/source/util/math_float3.h:511:21
	v_add_f32_e64 v1, v1, |v10|
.Ltmp23007:
	.loc	90 127 11 is_stmt 1             ; /film/accumulate.h:127:11
	v_cmp_gt_f32_e32 vcc_lo, v1, v0
	s_and_saveexec_b32 s4, vcc_lo
; %bb.44:                               ; %if.then.i.i41.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23008:
	.loc	90 128 17                       ; /film/accumulate.h:128:17
	v_rcp_f32_e32 v1, v1
	v_mul_f32_e32 v0, v0, v1
.Ltmp23009:
	.loc	98 140 26                       ; cycles/source/util/math_float3.h:140:26
	v_mul_f32_e32 v12, v0, v12
	.loc	98 140 35 is_stmt 0             ; cycles/source/util/math_float3.h:140:35
	v_mul_f32_e32 v11, v0, v11
	.loc	98 140 44                       ; cycles/source/util/math_float3.h:140:44
	v_mul_f32_e32 v10, v0, v10
.Ltmp23010:
; %bb.45:                               ; %_Z18kernel_accum_clampPK16KernelGlobalsGPUP15HIP_vector_typeIfLj3EEi.exit.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	98 0 44                         ; cycles/source/util/math_float3.h:0:44
	s_or_b32 exec_lo, exec_lo, s4
.Ltmp23011:
	.loc	90 141 39 is_stmt 1             ; /film/accumulate.h:141:39
	global_load_dword v0, v[74:75], off
	.loc	90 142 70                       ; /film/accumulate.h:142:70
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v1, v0, s69
	v_mul_hi_u32 v2, v0, s45
	v_add_nc_u32_e32 v1, v2, v1
	v_mul_lo_u32 v0, v0, s45
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v13, vcc_lo, s50, v0
	v_add_co_ci_u32_e32 v14, vcc_lo, s51, v1, vcc_lo
.Ltmp23012:
	.loc	90 584 30                       ; /film/accumulate.h:584:30
	global_load_dword v4, v[56:57], off
	.loc	90 585 22                       ; /film/accumulate.h:585:22
	global_load_dword v5, v[72:73], off
	s_mov_b32 s6, -1
	s_andn2_b32 vcc_lo, exec_lo, s68
	s_cbranch_vccnz BB90_62
; %bb.46:                               ; %if.end.i.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23013:
	.loc	123 84 21                       ; /integrator/shadow_catcher.h:84:21
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v0, 0x20000000, v4
	.loc	123 84 52 is_stmt 0             ; /integrator/shadow_catcher.h:84:52
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_53
.Ltmp23014:
; %bb.47:                               ; %if.then5.i.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	123 0 52                        ; /integrator/shadow_catcher.h:0:52
	s_lshl_b64 s[6:7], s[52:53], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23015:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_48:                                ; %atomicrmw.start
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_48
.Ltmp23016:
; %bb.49:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23017:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_50:                                ; %atomicrmw.start42
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_50
.Ltmp23018:
; %bb.51:                               ; %atomicrmw.end41
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23019:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_52:                                ; %atomicrmw.start48
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_52
.Ltmp23020:
BB90_53:                                ; %Flow682
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s4
.Ltmp23021:
	.loc	123 89 10 is_stmt 1             ; /integrator/shadow_catcher.h:89:10
	v_lshrrev_b32_e32 v0, 30, v4
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
	s_mov_b32 s6, -1
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_61
.Ltmp23022:
; %bb.54:                               ; %if.then8.i.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	123 0 10 is_stmt 0              ; /integrator/shadow_catcher.h:0:10
	s_lshl_b64 s[6:7], s[56:57], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23023:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_55:                                ; %atomicrmw.start54
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_55
.Ltmp23024:
; %bb.56:                               ; %atomicrmw.end53
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23025:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_57:                                ; %atomicrmw.start60
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_57
.Ltmp23026:
; %bb.58:                               ; %atomicrmw.end59
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23027:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_59:                                ; %atomicrmw.start66
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_59
.Ltmp23028:
; %bb.60:                               ; %Flow680
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
	s_xor_b32 s6, exec_lo, -1
BB90_61:                                ; %Flow689
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s4
BB90_62:                                ; %Flow688
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_and_saveexec_b32 s4, s6
	s_cbranch_execz BB90_81
; %bb.63:                               ; %if.end.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_andn2_b32 vcc_lo, exec_lo, s66
	s_cbranch_vccnz BB90_71
; %bb.64:                               ; %if.then5.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_lshl_b64 s[6:7], s[46:47], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23029:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_65:                                ; %atomicrmw.start72
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_65
.Ltmp23030:
; %bb.66:                               ; %atomicrmw.end71
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23031:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_67:                                ; %atomicrmw.start78
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_67
.Ltmp23032:
; %bb.68:                               ; %atomicrmw.end77
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23033:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_69:                                ; %atomicrmw.start84
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_69
.Ltmp23034:
; %bb.70:                               ; %Flow686
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
BB90_71:                                ; %if.end7.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_andn2_b32 vcc_lo, exec_lo, s67
	s_cbranch_vccnz BB90_81
; %bb.72:                               ; %if.end.i9.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23035:
	.loc	92 166 32 is_stmt 1             ; /sample/pattern.h:166:32
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 0xaaaaaaaa, v5
.Ltmp23036:
	.loc	16 51 12                        ; hip/amd_detail/amd_device_functions.h:51:12
	v_bcnt_u32_b32 v0, v0, 0
.Ltmp23037:
	.loc	92 162 7                        ; /sample/pattern.h:162:7
	v_cndmask_b32_e64 v0, v5, v0, s33
.Ltmp23038:
	.loc	92 0 0 is_stmt 0                ; /sample/pattern.h:0:0
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz BB90_81
.Ltmp23039:
; %bb.73:                               ; %if.then5.i14.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_lshl_b64 s[6:7], s[54:55], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23040:
	.loc	90 185 82 is_stmt 1             ; /film/accumulate.h:185:82
	v_add_f32_e32 v5, v10, v10
	.loc	90 185 59 is_stmt 0             ; /film/accumulate.h:185:59
	v_add_f32_e32 v7, v11, v11
	.loc	90 185 36                       ; /film/accumulate.h:185:36
	v_add_f32_e32 v8, v12, v12
.Ltmp23041:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_74:                                ; %atomicrmw.start90
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v8
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_74
.Ltmp23042:
; %bb.75:                               ; %atomicrmw.end89
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23043:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_76:                                ; %atomicrmw.start96
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v7
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_76
.Ltmp23044:
; %bb.77:                               ; %atomicrmw.end95
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23045:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_78:                                ; %atomicrmw.start102
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_78
.Ltmp23046:
; %bb.79:                               ; %atomicrmw.end101
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23047:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v2, v[0:1], off offset:12
	s_mov_b32 s6, 0
BB90_80:                                ; %atomicrmw.start108
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v3, v2
	global_atomic_cmpswap v3, v[0:1], v[2:3], off offset:12 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v2
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v2, v3
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_80
.Ltmp23048:
BB90_81:                                ; %Flow690
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s4
	s_andn2_b32 vcc_lo, exec_lo, s74
	s_cbranch_vccnz BB90_6
; %bb.82:                               ; %if.end.i10.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23049:
	.loc	90 353 7 is_stmt 1              ; /film/accumulate.h:353:7
	s_waitcnt vmcnt(1)
	v_and_b32_sdwa v0, v110, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_3
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
.Ltmp23050:
	.loc	90 353 7 is_stmt 0              ; /film/accumulate.h:353:7
	s_xor_b32 s4, s64, -1
	s_and_b32 s6, vcc_lo, s4
	s_and_saveexec_b32 s4, s6
	s_cbranch_execz BB90_89
; %bb.83:                               ; %if.then7.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23051:
	.loc	90 355 51 is_stmt 1             ; /film/accumulate.h:355:51
	global_load_dwordx3 v[0:2], v[62:63], off
.Ltmp23052:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v8, v0, v12
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v7, v1, v11
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v5, v2, v10
	s_lshl_b64 s[6:7], s[48:49], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23053:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_84:                                ; %atomicrmw.start114
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v8
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_84
.Ltmp23054:
; %bb.85:                               ; %atomicrmw.end113
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23055:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_86:                                ; %atomicrmw.start120
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v7
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_86
.Ltmp23056:
; %bb.87:                               ; %atomicrmw.end119
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23057:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_88:                                ; %atomicrmw.start126
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_88
.Ltmp23058:
BB90_89:                                ; %Flow678
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s4
.Ltmp23059:
	.loc	90 363 19 is_stmt 1             ; /film/accumulate.h:363:19
	v_and_b32_e32 v0, 0x6000000, v4
	.loc	90 363 8 is_stmt 0              ; /film/accumulate.h:363:8
	v_cmp_ne_u32_e32 vcc_lo, 0, v0
.Ltmp23060:
	.loc	90 0 0                          ; /film/accumulate.h:0:0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s72
	s_and_saveexec_b32 s6, vcc_lo
	s_cbranch_execz BB90_110
; %bb.90:                               ; %if.else.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_andn2_b32 vcc_lo, exec_lo, s63
	v_mov_b32_e32 v3, -1
	s_cbranch_vccnz BB90_110
; %bb.91:                               ; %if.then18.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23061:
	.loc	90 368 9 is_stmt 1              ; /film/accumulate.h:368:9
	v_lshrrev_b32_e32 v0, 25, v4
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b32 s4, vcc_lo
	s_xor_b32 s7, exec_lo, s4
	s_cbranch_execz BB90_107
; %bb.92:                               ; %if.then21.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23062:
	.loc	90 370 37                       ; /film/accumulate.h:370:37
	global_load_dwordx3 v[0:2], v[58:59], off
	.loc	90 371 36                       ; /film/accumulate.h:371:36
	s_waitcnt vmcnt(1)
	global_load_dwordx3 v[3:5], v[60:61], off
	.loc	90 374 78                       ; /film/accumulate.h:374:78
	v_cmp_eq_u16_e32 vcc_lo, 1, v6
	.loc	90 374 39 is_stmt 0             ; /film/accumulate.h:374:39
	v_mov_b32_e32 v6, s41
	v_cndmask_b32_e32 v6, s37, v6, vcc_lo
.Ltmp23063:
	.loc	90 377 30 is_stmt 1             ; /film/accumulate.h:377:30
	v_cmp_ne_u32_e64 s4, -1, v6
	s_and_saveexec_b32 s8, s4
	s_cbranch_execz BB90_99
; %bb.93:                               ; %if.then32.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23064:
	.loc	90 378 41                       ; /film/accumulate.h:378:41
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, s4, v13, v6
	v_add_co_ci_u32_e64 v7, s4, v14, v7, s4
.Ltmp23065:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v3, v12
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v16, v4, v11
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v15, v5, v10
.Ltmp23066:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v9, v[6:7], off
	s_mov_b32 s9, 0
BB90_94:                                ; %atomicrmw.start132
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v17
	global_atomic_cmpswap v8, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v8, v9
	s_or_b32 s9, s4, s9
	v_mov_b32_e32 v9, v8
	s_andn2_b32 exec_lo, exec_lo, s9
	s_cbranch_execnz BB90_94
.Ltmp23067:
; %bb.95:                               ; %atomicrmw.end131
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s9
.Ltmp23068:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v9, v[6:7], off offset:4
	s_mov_b32 s9, 0
BB90_96:                                ; %atomicrmw.start138
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v16
	global_atomic_cmpswap v8, v[6:7], v[8:9], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v8, v9
	s_or_b32 s9, s4, s9
	v_mov_b32_e32 v9, v8
	s_andn2_b32 exec_lo, exec_lo, s9
	s_cbranch_execnz BB90_96
.Ltmp23069:
; %bb.97:                               ; %atomicrmw.end137
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s9
.Ltmp23070:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v9, v[6:7], off offset:8
	s_mov_b32 s9, 0
BB90_98:                                ; %atomicrmw.start144
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v15
	global_atomic_cmpswap v8, v[6:7], v[8:9], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v8, v9
	s_or_b32 s9, s4, s9
	v_mov_b32_e32 v9, v8
	s_andn2_b32 exec_lo, exec_lo, s9
	s_cbranch_execnz BB90_98
.Ltmp23071:
BB90_99:                                ; %Flow673
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s8
	.loc	90 382 45 is_stmt 1             ; /film/accumulate.h:382:45
	v_mov_b32_e32 v6, s42
	v_cndmask_b32_e32 v6, s38, v6, vcc_lo
.Ltmp23072:
	.loc	90 386 36                       ; /film/accumulate.h:386:36
	v_cmp_ne_u32_e64 s4, -1, v6
	s_and_saveexec_b32 s8, s4
	s_cbranch_execz BB90_106
; %bb.100:                              ; %if.then47.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23073:
	.loc	98 201 26                       ; cycles/source/util/math_float3.h:201:26
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v0, v3
	.loc	98 201 37 is_stmt 0             ; cycles/source/util/math_float3.h:201:37
	v_add_f32_e32 v15, v1, v4
	.loc	98 201 48                       ; cycles/source/util/math_float3.h:201:48
	v_add_f32_e32 v5, v2, v5
.Ltmp23074:
	.loc	90 390 41 is_stmt 1             ; /film/accumulate.h:390:41
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[3:4], 2, v[6:7]
	v_add_co_u32 v3, s4, v13, v3
	v_add_co_ci_u32_e64 v4, s4, v14, v4, s4
.Ltmp23075:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	v_fma_f32 v9, -v8, v12, v12
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_fma_f32 v8, -v15, v11, v11
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_fma_f32 v7, -v5, v10, v10
.Ltmp23076:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v6, v[3:4], off
	s_mov_b32 s9, 0
BB90_101:                               ; %atomicrmw.start150
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v9
	global_atomic_cmpswap v5, v[3:4], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v5, v6
	s_or_b32 s9, s4, s9
	v_mov_b32_e32 v6, v5
	s_andn2_b32 exec_lo, exec_lo, s9
	s_cbranch_execnz BB90_101
.Ltmp23077:
; %bb.102:                              ; %atomicrmw.end149
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s9
.Ltmp23078:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v6, v[3:4], off offset:4
	s_mov_b32 s9, 0
BB90_103:                               ; %atomicrmw.start156
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v8
	global_atomic_cmpswap v5, v[3:4], v[5:6], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v5, v6
	s_or_b32 s9, s4, s9
	v_mov_b32_e32 v6, v5
	s_andn2_b32 exec_lo, exec_lo, s9
	s_cbranch_execnz BB90_103
.Ltmp23079:
; %bb.104:                              ; %atomicrmw.end155
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s9
.Ltmp23080:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v6, v[3:4], off offset:8
	s_mov_b32 s9, 0
BB90_105:                               ; %atomicrmw.start162
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v7
	global_atomic_cmpswap v5, v[3:4], v[5:6], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v5, v6
	s_or_b32 s9, s4, s9
	v_mov_b32_e32 v6, v5
	s_andn2_b32 exec_lo, exec_lo, s9
	s_cbranch_execnz BB90_105
.Ltmp23081:
BB90_106:                               ; %Flow671
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s8
	.loc	90 395 21 is_stmt 1             ; /film/accumulate.h:395:21
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v3, s40
	v_cndmask_b32_e32 v3, s36, v3, vcc_lo
.Ltmp23082:
	.loc	90 398 23                       ; /film/accumulate.h:398:23
	v_cmp_eq_u32_e32 vcc_lo, -1, v3
.Ltmp23083:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	v_mul_f32_e32 v0, v0, v12
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v1, v1, v11
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v2, v2, v10
.Ltmp23084:
	.loc	90 398 11 is_stmt 1             ; /film/accumulate.h:398:11
	v_cndmask_b32_e32 v12, v0, v12, vcc_lo
	v_cndmask_b32_e32 v11, v1, v11, vcc_lo
	v_cndmask_b32_e32 v10, v2, v10, vcc_lo
.Ltmp23085:
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr4
BB90_107:                               ; %Flow674
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	90 0 11 is_stmt 0               ; /film/accumulate.h:0:11
	s_or_saveexec_b32 s4, s7
	s_xor_b32 exec_lo, exec_lo, s4
; %bb.108:                              ; %if.else70.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23086:
	.loc	90 404 60 is_stmt 1             ; /film/accumulate.h:404:60
	v_cmp_eq_u16_e32 vcc_lo, 1, v6
	.loc	90 404 21 is_stmt 0             ; /film/accumulate.h:404:21
	v_mov_b32_e32 v0, s43
	v_cndmask_b32_e32 v0, s39, v0, vcc_lo
.Ltmp23087:
	.loc	90 402 14 is_stmt 1             ; /film/accumulate.h:402:14
	v_lshrrev_b32_e32 v1, 26, v4
	v_and_b32_e32 v1, 1, v1
	v_cmp_eq_u32_e32 vcc_lo, 1, v1
	v_cndmask_b32_e32 v3, -1, v0, vcc_lo
.Ltmp23088:
; %bb.109:                              ; %Flow675
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	90 0 14 is_stmt 0               ; /film/accumulate.h:0:14
	s_or_b32 exec_lo, exec_lo, s4
BB90_110:                               ; %if.end85.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23089:
	.loc	90 411 19 is_stmt 1             ; /film/accumulate.h:411:19
	v_cmp_ne_u32_e32 vcc_lo, -1, v3
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_5
; %bb.111:                              ; %if.then87.i.i.i.i
                                        ;   in Loop: Header=BB90_10 Depth=1
.Ltmp23090:
	.loc	90 412 37                       ; /film/accumulate.h:412:37
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[0:1], 2, v[3:4]
	v_add_co_u32 v0, vcc_lo, v13, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, v14, v1, vcc_lo
.Ltmp23091:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_112:                               ; %atomicrmw.start168
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_112
.Ltmp23092:
; %bb.113:                              ; %atomicrmw.end167
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23093:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_114:                               ; %atomicrmw.start174
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_114
.Ltmp23094:
; %bb.115:                              ; %atomicrmw.end173
                                        ;   in Loop: Header=BB90_10 Depth=1
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23095:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_116:                               ; %atomicrmw.start180
                                        ;   Parent Loop BB90_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_116
	s_branch BB90_5
.Ltmp23096:
BB90_117:                               ; %Flow702
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s84
BB90_118:                               ; %_Z24integrate_distant_lightsPK16KernelGlobalsGPUiPf.exit.i
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1296
	s_addc_u32 s5, s5, __data@rel32@hi+1304
.Ltmp23097:
	.loc	200 103 64 is_stmt 1            ; /integrator/shade_background.h:103:64
	s_load_dword s4, s[4:5], 0x0
	.loc	200 103 46 is_stmt 0            ; /integrator/shade_background.h:103:46
	s_waitcnt lgkmcnt(0)
	s_cmp_eq_u32 s4, 0
	s_cbranch_scc1 BB90_120
; %bb.119:                              ; %land.rhs.i.i
	.loc	200 104 47 is_stmt 1            ; /integrator/shade_background.h:104:47
	global_load_dword v0, v[56:57], off
	.loc	200 104 46 is_stmt 0            ; /integrator/shade_background.h:104:46
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 14, v0
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
	s_and_b32 s70, vcc_lo, exec_lo
BB90_120:                               ; %land.end.i.i
	.loc	200 0 46                        ; /integrator/shade_background.h:0:46
	s_mov_b32 s4, -1
	v_mov_b32_e32 v42, 0
	s_and_saveexec_b32 s5, s70
	s_cbranch_execz BB90_122
; %bb.121:                              ; %if.then.i14.i
.Ltmp23098:
	.loc	200 108 27 is_stmt 1            ; /integrator/shade_background.h:108:27
	s_clause 0x1
	global_load_dwordx2 v[0:1], v[76:77], off
	global_load_dword v2, v[76:77], off offset:8
.Ltmp23099:
	.loc	98 511 15                       ; cycles/source/util/math_float3.h:511:15
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v0, v1, v0
	.loc	98 511 21 is_stmt 0             ; cycles/source/util/math_float3.h:511:21
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v0, v2
.Ltmp23100:
	.loc	98 517 24 is_stmt 1             ; cycles/source/util/math_float3.h:517:24
	v_mul_f32_e32 v42, 0x3eaaaaab, v0
.Ltmp23101:
	.loc	200 111 23                      ; /integrator/shade_background.h:111:23
	s_lshr_b32 s4, s44, 3
	s_bitcmp1_b32 s4, 0
	s_cselect_b32 s4, -1, 0
	s_orn2_b32 s4, s4, exec_lo
.Ltmp23102:
BB90_122:                               ; %if.end.i15.i
	.loc	200 0 23 is_stmt 0              ; /integrator/shade_background.h:0:23
	s_or_b32 exec_lo, exec_lo, s5
	v_mov_b32_e32 v6, 0
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v4, 0
	s_and_saveexec_b32 s71, s4
	s_cbranch_execz BB90_163
; %bb.123:                              ; %cond.true.i.i
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1284
	s_addc_u32 s5, s5, __data@rel32@hi+1292
.Ltmp23103:
	.loc	200 31 40 is_stmt 1             ; /integrator/shade_background.h:31:40
	s_load_dword s5, s[4:5], 0x0
	.loc	200 32 30                       ; /integrator/shade_background.h:32:30
	global_load_dword v0, v[56:57], off
.Ltmp23104:
	.loc	200 35 14                       ; /integrator/shade_background.h:35:14
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s5, 0xfc00000
	.loc	200 35 7 is_stmt 0              ; /integrator/shade_background.h:35:7
	s_cmp_eq_u32 s4, 0
	s_mov_b32 s6, -1
	s_cbranch_scc1 BB90_133
; %bb.124:                              ; %if.then.i.i.i
.Ltmp23105:
	.loc	200 36 18 is_stmt 1             ; /integrator/shade_background.h:36:18
	s_bitcmp0_b32 s5, 27
	s_mov_b32 s6, 0
	.loc	200 36 10 is_stmt 0             ; /integrator/shade_background.h:36:10
	s_cselect_b32 s4, -1, 0
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 8, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	200 36 44                       ; /integrator/shade_background.h:36:44
	s_or_b32 s7, s4, vcc_lo
	s_and_saveexec_b32 s4, s7
	s_cbranch_execz BB90_132
; %bb.125:                              ; %lor.lhs.false.i.i.i
	.loc	200 37 18 is_stmt 1             ; /integrator/shade_background.h:37:18
	s_bitcmp0_b32 s5, 26
	s_mov_b32 s7, 0
	.loc	200 37 10 is_stmt 0             ; /integrator/shade_background.h:37:10
	s_cselect_b32 s6, -1, 0
	v_and_b32_e32 v1, 18, v0
	v_cmp_ne_u32_e32 vcc_lo, 18, v1
	s_or_b32 s8, s6, vcc_lo
	s_and_saveexec_b32 s6, s8
	s_cbranch_execz BB90_131
; %bb.126:                              ; %lor.lhs.false9.i.i.i
	.loc	200 39 18 is_stmt 1             ; /integrator/shade_background.h:39:18
	s_bitcmp0_b32 s5, 25
	s_mov_b32 s8, 0
	.loc	200 39 10 is_stmt 0             ; /integrator/shade_background.h:39:10
	s_cselect_b32 s7, -1, 0
	v_and_b32_e32 v1, 4, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	200 39 45                       ; /integrator/shade_background.h:39:45
	s_or_b32 s9, s7, vcc_lo
	s_and_saveexec_b32 s7, s9
	s_cbranch_execz BB90_130
; %bb.127:                              ; %lor.lhs.false15.i.i.i
	.loc	200 40 18 is_stmt 1             ; /integrator/shade_background.h:40:18
	s_bitcmp0_b32 s5, 24
	s_mov_b32 s8, 0
	.loc	200 40 10 is_stmt 0             ; /integrator/shade_background.h:40:10
	s_cselect_b32 s9, -1, 0
	v_and_b32_e32 v1, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	200 40 43                       ; /integrator/shade_background.h:40:43
	s_or_b32 s10, s9, vcc_lo
	s_and_saveexec_b32 s9, s10
; %bb.128:                              ; %lor.lhs.false21.i.i.i
	.loc	200 41 18 is_stmt 1             ; /integrator/shade_background.h:41:18
	s_bitcmp0_b32 s5, 23
	.loc	200 41 10 is_stmt 0             ; /integrator/shade_background.h:41:10
	s_cselect_b32 s8, -1, 0
	v_and_b32_e32 v1, 0x80, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	200 41 44                       ; /integrator/shade_background.h:41:44
	s_or_b32 s8, s8, vcc_lo
	s_and_b32 s8, s8, exec_lo
.Ltmp23106:
; %bb.129:                              ; %Flow666
	.loc	200 0 44                        ; /integrator/shade_background.h:0:44
	s_or_b32 exec_lo, exec_lo, s9
	s_and_b32 s8, s8, exec_lo
BB90_130:                               ; %Flow665
	s_or_b32 exec_lo, exec_lo, s7
	s_and_b32 s7, s8, exec_lo
BB90_131:                               ; %Flow664
	s_or_b32 exec_lo, exec_lo, s6
	s_and_b32 s6, s7, exec_lo
BB90_132:                               ; %Flow663
	s_or_b32 exec_lo, exec_lo, s4
BB90_133:                               ; %Flow662
	s_mov_b32 s7, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, 0
	s_and_saveexec_b32 s72, s6
	s_cbranch_execz BB90_162
; %bb.134:                              ; %if.end28.i.i.i
.Ltmp23107:
	.loc	197 539 29 is_stmt 1            ; /integrator/shader_eval.h:539:29
	s_and_b32 s6, s5, 0x3fffff
	s_lshl_b32 s4, s6, 5
	v_mov_b32_e32 v1, s4
	.loc	197 540 47                      ; /integrator/shader_eval.h:540:47
	global_load_dword v3, v1, s[34:35] offset:16
.Ltmp23108:
	.loc	197 542 19                      ; /integrator/shader_eval.h:542:19
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 0x8000000, v3
	.loc	197 542 7 is_stmt 0             ; /integrator/shader_eval.h:542:7
	v_cmp_eq_u32_e64 s4, 0, v1
	s_and_b32 vcc_lo, exec_lo, s4
.Ltmp23109:
	.loc	200 0 0                         ; /integrator/shade_background.h:0:0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, 0
	s_cbranch_vccnz BB90_136
; %bb.135:                              ; %if.then.i.i.i28.i
	s_lshl_b64 s[6:7], s[6:7], 5
	s_add_u32 s6, s34, s6
	s_addc_u32 s7, s35, s7
	v_mov_b32_e32 v1, 0
.Ltmp23110:
	.loc	197 543 25 is_stmt 1            ; /integrator/shader_eval.h:543:25
	global_load_dwordx3 v[4:6], v1, s[6:7]
.Ltmp23111:
BB90_136:                               ; %_Z29shader_constant_emission_evalPK16KernelGlobalsGPUiP15HIP_vector_typeIfLj3EE.exit.i.i29.i
	.loc	197 0 25 is_stmt 0              ; /integrator/shader_eval.h:0:25
	s_andn2_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz BB90_138
; %bb.137:                              ; %if.then31.i.i.i
	v_mov_b32_e32 v1, 16
.Ltmp23112:
	.loc	200 53 44 is_stmt 1             ; /integrator/shade_background.h:53:44
	v_cmp_ne_u32_e32 vcc_lo, -1, v1
	v_mov_b32_e32 v10, 0
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	s_getreg_b32 s4, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s4, s4, 16
	v_cndmask_b32_e64 v2, 0, s4, vcc_lo
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __integrator_state@rel32@lo+180
	s_addc_u32 s7, s7, __integrator_state@rel32@hi+188
	.loc	200 58 57                       ; /integrator/shade_background.h:58:57
	s_load_dwordx2 s[6:7], s[6:7], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mad_i64_i32 v[4:5], s4, v40, 12, s[6:7]
	.loc	200 58 34 is_stmt 0             ; /integrator/shade_background.h:58:34
	global_load_dwordx3 v[4:6], v[4:5], off
	.loc	200 59 34 is_stmt 1             ; /integrator/shade_background.h:59:34
	global_load_dwordx3 v[7:9], v[88:89], off
	.loc	200 60 34                       ; /integrator/shade_background.h:60:34
	global_load_dword v11, v[92:93], off
.Ltmp23113:
	.loc	126 381 13                      ; /geom/shader_data.h:381:13
	s_waitcnt vmcnt(2)
	buffer_store_dword v4, off, s[0:3], 0 offset:304
	buffer_store_dword v5, off, s[0:3], 0 offset:308
	buffer_store_dword v6, off, s[0:3], 0 offset:312
	.loc	126 384 9                       ; /geom/shader_data.h:384:9
	s_waitcnt vmcnt(1)
	buffer_store_dword v7, off, s[0:3], 0 offset:16
	buffer_store_dword v8, off, s[0:3], 0 offset:20
	buffer_store_dword v9, off, s[0:3], 0 offset:24
.Ltmp23114:
	.loc	98 122 22                       ; cycles/source/util/math_float3.h:122:22
	s_brev_b32 s4, 1
	v_xor_b32_e32 v4, s4, v7
	.loc	98 122 28 is_stmt 0             ; cycles/source/util/math_float3.h:122:28
	v_xor_b32_e32 v5, s4, v8
	.loc	98 122 34                       ; cycles/source/util/math_float3.h:122:34
	v_xor_b32_e32 v6, s4, v9
.Ltmp23115:
	.loc	126 385 9 is_stmt 1             ; /geom/shader_data.h:385:9
	buffer_store_dword v4, off, s[0:3], 0 offset:28
	buffer_store_dword v5, off, s[0:3], 0 offset:32
	buffer_store_dword v6, off, s[0:3], 0 offset:36
	.loc	126 386 10                      ; /geom/shader_data.h:386:10
	buffer_store_dword v4, off, s[0:3], 0 offset:40
	buffer_store_dword v5, off, s[0:3], 0 offset:44
	buffer_store_dword v6, off, s[0:3], 0 offset:48
	.loc	126 387 9                       ; /geom/shader_data.h:387:9
	buffer_store_dword v4, off, s[0:3], 0 offset:52
	buffer_store_dword v5, off, s[0:3], 0 offset:56
	buffer_store_dword v6, off, s[0:3], 0 offset:60
	.loc	126 388 14                      ; /geom/shader_data.h:388:14
	v_mov_b32_e32 v4, s5
	buffer_store_dword v4, off, s[0:3], 0 offset:64
	.loc	126 389 12                      ; /geom/shader_data.h:389:12
	buffer_store_dword v3, off, s[0:3], 0 offset:68
	.loc	126 390 19                      ; /geom/shader_data.h:390:19
	buffer_store_dword v10, off, s[0:3], 0 offset:72
	.loc	126 391 12                      ; /geom/shader_data.h:391:12
	s_waitcnt vmcnt(0)
	buffer_store_dword v11, off, s[0:3], 0 offset:100
	.loc	126 392 18                      ; /geom/shader_data.h:392:18
	buffer_store_dword v10, off, s[0:3], 0 offset:104
	v_mov_b32_e32 v3, -1
	.loc	126 394 14                      ; /geom/shader_data.h:394:14
	buffer_store_dword v3, off, s[0:3], 0 offset:92
	.loc	126 395 12                      ; /geom/shader_data.h:395:12
	buffer_store_dword v3, off, s[0:3], 0 offset:96
	.loc	126 396 12                      ; /geom/shader_data.h:396:12
	buffer_store_dword v3, off, s[0:3], 0 offset:76
	.loc	126 397 9                       ; /geom/shader_data.h:397:9
	buffer_store_dword v10, off, s[0:3], 0 offset:84
	.loc	126 398 9                       ; /geom/shader_data.h:398:9
	buffer_store_dword v10, off, s[0:3], 0 offset:88
	.loc	126 402 12                      ; /geom/shader_data.h:402:12
	buffer_store_dword v10, off, s[0:3], 0 offset:172
	buffer_store_dword v10, off, s[0:3], 0 offset:176
	buffer_store_dword v10, off, s[0:3], 0 offset:180
	.loc	126 403 12                      ; /geom/shader_data.h:403:12
	buffer_store_dword v10, off, s[0:3], 0 offset:184
	buffer_store_dword v10, off, s[0:3], 0 offset:188
	buffer_store_dword v10, off, s[0:3], 0 offset:192
	.loc	126 408 10                      ; /geom/shader_data.h:408:10
	buffer_store_dword v10, off, s[0:3], 0 offset:108
	buffer_store_dword v10, off, s[0:3], 0 offset:112
	buffer_store_dword v10, off, s[0:3], 0 offset:116
	buffer_store_dword v10, off, s[0:3], 0 offset:120
	buffer_store_dword v10, off, s[0:3], 0 offset:124
	buffer_store_dword v10, off, s[0:3], 0 offset:128
	v_bfrev_b32_e32 v3, 1
.Ltmp23116:
	.loc	101 46 10                       ; /util/differential.h:46:10
	buffer_store_dword v3, off, s[0:3], 0 offset:132
	buffer_store_dword v3, off, s[0:3], 0 offset:136
	buffer_store_dword v3, off, s[0:3], 0 offset:140
	.loc	101 47 10                       ; /util/differential.h:47:10
	buffer_store_dword v3, off, s[0:3], 0 offset:144
	buffer_store_dword v3, off, s[0:3], 0 offset:148
	buffer_store_dword v3, off, s[0:3], 0 offset:152
.Ltmp23117:
	.loc	126 410 10                      ; /geom/shader_data.h:410:10
	buffer_store_dword v10, off, s[0:3], 0 offset:156
	buffer_store_dword v10, off, s[0:3], 0 offset:160
	.loc	126 411 10                      ; /geom/shader_data.h:411:10
	buffer_store_dword v10, off, s[0:3], 0 offset:164
	buffer_store_dword v10, off, s[0:3], 0 offset:168
.Ltmp23118:
	.loc	200 65 58                       ; /integrator/shade_background.h:65:58
	v_or_b32_e32 v5, 0x80000, v0
	.loc	200 64 5                        ; /integrator/shade_background.h:64:5
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _Z19shader_eval_surfaceILj290EiEvPK16KernelGlobalsGPUT0_P10ShaderDataPfj@rel32@lo+4
	s_addc_u32 s5, s5, _Z19shader_eval_surfaceILj290EiEvPK16KernelGlobalsGPUT0_P10ShaderDataPfj@rel32@hi+12
	v_mov_b32_e32 v0, v40
	v_mov_b32_e32 v3, s50
	v_mov_b32_e32 v4, s51
	s_swappc_b64 s[30:31], s[4:5]
.Ltmp23119:
	.loc	197 557 11                      ; /integrator/shader_eval.h:557:11
	buffer_load_dword v0, off, s[0:3], 0 offset:68
	.loc	197 557 16 is_stmt 0            ; /integrator/shader_eval.h:557:16
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 2, v0
	.loc	197 557 7                       ; /integrator/shader_eval.h:557:7
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
.Ltmp23120:
	.loc	197 557 7                       ; /integrator/shader_eval.h:557:7
	s_clause 0x2
	buffer_load_dword v0, off, s[0:3], 0 offset:344
	buffer_load_dword v1, off, s[0:3], 0 offset:348
	buffer_load_dword v2, off, s[0:3], 0 offset:352
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v5, v1, 0, vcc_lo
	v_cndmask_b32_e64 v4, v0, 0, vcc_lo
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v6, v2, 0, vcc_lo
.Ltmp23121:
	.loc	200 73 9 is_stmt 1              ; /integrator/shade_background.h:73:9
	global_load_dword v0, v[56:57], off
BB90_138:                               ; %if.end42.i.i.i
	.loc	200 73 45 is_stmt 0             ; /integrator/shade_background.h:73:45
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 0x800, v0
	.loc	200 73 8                        ; /integrator/shade_background.h:73:8
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1360
	s_addc_u32 s5, s5, __data@rel32@hi+1368
	s_load_dword s4, s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lg_u32 s4, 0
	s_cselect_b32 s4, -1, 0
	s_and_b32 s4, vcc_lo, s4
	s_and_saveexec_b32 s12, s4
	s_cbranch_execz BB90_161
; %bb.139:                              ; %if.then49.i.i.i
.Ltmp23122:
	.loc	200 76 26 is_stmt 1             ; /integrator/shade_background.h:76:26
	global_load_dwordx3 v[7:9], v[88:89], off
	.loc	200 77 31                       ; /integrator/shade_background.h:77:31
	global_load_dword v21, v[90:91], off
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1304
	s_addc_u32 s5, s5, __data@rel32@hi+1312
.Ltmp23123:
	.file	203 "/light" "background.h"
	.loc	203 410 47                      ; /light/background.h:410:47
	s_load_dword s13, s[4:5], 0x0
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __data@rel32@lo+1316
	s_addc_u32 s7, s7, __data@rel32@hi+1324
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __data@rel32@lo+1348
	s_addc_u32 s9, s9, __data@rel32@hi+1356
.Ltmp23124:
	.loc	203 417 25                      ; /light/background.h:417:25
	s_waitcnt lgkmcnt(0)
	v_cmp_le_f32_e64 s4, s13, 0
	s_and_b32 vcc_lo, exec_lo, s4
	v_mov_b32_e32 v10, s13
	v_mov_b32_e32 v1, 0
	s_cbranch_vccnz BB90_146
; %bb.140:                              ; %if.then.i35.i.i.i
	.loc	203 0 25 is_stmt 0              ; /light/background.h:0:25
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1308
	s_addc_u32 s5, s5, __data@rel32@hi+1316
	s_load_dwordx2 s[10:11], s[4:5], 0x0
.Ltmp23125:
	.loc	203 167 21 is_stmt 1            ; /light/background.h:167:21
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s10, 1
	s_cbranch_scc1 BB90_142
.Ltmp23126:
; %bb.141:                              ; %for.body.i.i.i.i.i.preheader
	.loc	203 0 21 is_stmt 0              ; /light/background.h:0:21
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __integrator_state@rel32@lo+180
	s_addc_u32 s5, s5, __integrator_state@rel32@hi+188
	.loc	200 75 49 is_stmt 1             ; /integrator/shade_background.h:75:49
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	v_mad_i64_i32 v[0:1], s4, v40, 12, s[4:5]
	.loc	200 75 26 is_stmt 0             ; /integrator/shade_background.h:75:26
	global_load_dwordx2 v[2:3], v[0:1], off offset:4
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __integrator_state@rel32@lo+116
	s_addc_u32 s5, s5, __integrator_state@rel32@hi+124
	.loc	200 78 53 is_stmt 1             ; /integrator/shade_background.h:78:53
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_lshlrev_b64 v[10:11], 2, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v10, vcc_lo, s4, v10
	v_add_co_ci_u32_e32 v11, vcc_lo, s5, v11, vcc_lo
	.loc	200 78 29 is_stmt 0             ; /integrator/shade_background.h:78:29
	global_load_dword v10, v[10:11], off
	.loc	200 75 26 is_stmt 1             ; /integrator/shade_background.h:75:26
	global_load_dword v0, v[0:1], off
.Ltmp23127:
	.loc	98 201 26                       ; cycles/source/util/math_float3.h:201:26
	s_waitcnt vmcnt(0)
	v_fma_f32 v24, -v10, v7, v0
	.loc	98 201 37 is_stmt 0             ; cycles/source/util/math_float3.h:201:37
	v_fma_f32 v25, -v10, v8, v2
	.loc	98 201 48                       ; cycles/source/util/math_float3.h:201:48
	v_fma_f32 v26, -v10, v9, v3
	s_movk_i32 s14, 0xc0
.Ltmp23128:
	.loc	203 167 3 is_stmt 1             ; /light/background.h:167:3
	v_mov_b32_e32 v0, s60
	v_mov_b32_e32 v1, s61
	v_mad_i64_i32 v[0:1], s4, s11, s14, v[0:1]
	v_add_co_u32 v19, vcc_lo, 0x90, v0
	v_add_co_ci_u32_e32 v20, vcc_lo, 0, v1, vcc_lo
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v23, 0
	s_mov_b32 s20, 0x38d1b717
	s_mov_b32 s21, 0xf800000
	s_mov_b32 s22, 0x4f800000
	s_movk_i32 s11, 0x260
	s_mov_b32 s23, 0x37800000
	v_mov_b32_e32 v1, 0x3c5fc5da
	s_mov_b32 s24, 0x3d1c21a7
	v_mov_b32_e32 v1, 0x3d034c3c
	v_mov_b32_e32 v1, 0x3d3641b1
	v_mov_b32_e32 v1, 0x3d999bc8
	v_mov_b32_e32 v1, 0x3e2aaaac
	v_mov_b32_e32 v1, 0x40490fdb
	s_mov_b32 s25, 0x3fc90fdb
	s_branch BB90_289
.Ltmp23129:
BB90_142:
	.loc	203 0 3 is_stmt 0               ; /light/background.h:0:3
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v0, 0
BB90_143:                               ; %Flow659
	.loc	203 219 24 is_stmt 1            ; /light/background.h:219:24
	v_cmp_lt_i32_e32 vcc_lo, 0, v23
	.loc	203 219 10 is_stmt 0            ; /light/background.h:219:10
	v_mov_b32_e32 v1, 0
	s_and_saveexec_b32 s4, vcc_lo
; %bb.144:                              ; %cond.true.i.i.i.i.i
	.loc	203 219 44                      ; /light/background.h:219:44
	v_cvt_f32_i32_e32 v1, v23
	.loc	203 219 42                      ; /light/background.h:219:42
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, v22, v1
.Ltmp23130:
; %bb.145:                              ; %_Z21background_portal_pdfPK16KernelGlobalsGPU15HIP_vector_typeIfLj3EES3_iPb.exit.i.i.i.i
	.loc	203 0 42                        ; /light/background.h:0:42
	s_or_b32 exec_lo, exec_lo, s4
	.loc	203 421 9 is_stmt 1             ; /light/background.h:421:9
	v_mov_b32_e32 v2, 0
	v_cmp_ne_u16_sdwa s4, v0, v2 src0_sel:BYTE_0 src1_sel:DWORD
	v_cndmask_b32_e64 v10, 0, s13, s4
.Ltmp23131:
BB90_146:                               ; %Flow660
	.loc	203 0 9 is_stmt 0               ; /light/background.h:0:9
	s_clause 0x1
	s_load_dword s4, s[6:7], 0x0
	s_load_dword s6, s[8:9], 0x0
	.loc	203 429 38 is_stmt 1            ; /light/background.h:429:38
	s_waitcnt lgkmcnt(0)
	v_add_f32_e64 v0, s6, s4
	.loc	203 429 55 is_stmt 0            ; /light/background.h:429:55
	v_add_f32_e32 v0, v0, v10
.Ltmp23132:
	.loc	203 430 15 is_stmt 1            ; /light/background.h:430:15
	v_cmp_lg_f32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v2, 0x3da2f983
	s_and_saveexec_b32 s10, vcc_lo
	s_cbranch_execz BB90_160
.Ltmp23133:
; %bb.147:                              ; %if.end16.i.i.i.i
	.loc	203 435 18                      ; /light/background.h:435:18
	v_rcp_f32_e32 v0, v0
	.loc	203 437 18                      ; /light/background.h:437:18
	v_mul_f32_e32 v3, s4, v0
	.loc	203 436 21                      ; /light/background.h:436:21
	v_mul_f32_e32 v1, v10, v1
	.loc	203 440 26                      ; /light/background.h:440:26
	v_mul_f32_e32 v2, v1, v0
.Ltmp23134:
	.loc	203 441 22                      ; /light/background.h:441:22
	v_cmp_lg_f32_e32 vcc_lo, 0, v3
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_151
; %bb.148:                              ; %if.then22.i.i.i.i
	.loc	203 0 22 is_stmt 0              ; /light/background.h:0:22
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __data@rel32@lo+1332
	s_addc_u32 s9, s9, __data@rel32@hi+1340
.Ltmp23135:
	.loc	203 302 37 is_stmt 1            ; /light/background.h:302:37
	s_load_dwordx4 s[16:19], s[8:9], 0x0
.Ltmp23136:
	.loc	54 632 34                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:632:34
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e64 v1, s19, 0.15915494
	v_cos_f32_e32 v1, v1
.Ltmp23137:
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, s16, v7
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v10, s17, v8
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v10, s18, v9
.Ltmp23138:
	.loc	99 111 9 is_stmt 1              ; /sample/mapping.h:111:9
	v_cmp_gt_f32_e32 vcc_lo, v10, v1
.Ltmp23139:
	.loc	99 0 0 is_stmt 0                ; /sample/mapping.h:0:0
	v_mov_b32_e32 v10, 0
	s_and_saveexec_b32 s5, vcc_lo
; %bb.149:                              ; %if.then.i.i.i.i.i.i
.Ltmp23140:
	.loc	99 112 42 is_stmt 1             ; /sample/mapping.h:112:42
	v_sub_f32_e32 v1, 1.0, v1
	.loc	99 112 34 is_stmt 0             ; /sample/mapping.h:112:34
	v_rcp_f32_e32 v1, v1
	v_mul_f32_e32 v10, 0.15915494, v1
.Ltmp23141:
; %bb.150:                              ; %_Z18background_sun_pdfPK16KernelGlobalsGPU15HIP_vector_typeIfLj3EE.exit.i.i.i.i
	.loc	99 0 34                         ; /sample/mapping.h:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	203 442 9 is_stmt 1             ; /light/background.h:442:9
	v_fmac_f32_e32 v2, v10, v3
.Ltmp23142:
BB90_151:                               ; %Flow650
	.loc	203 0 9 is_stmt 0               ; /light/background.h:0:9
	s_or_b32 exec_lo, exec_lo, s4
	.loc	203 438 18 is_stmt 1            ; /light/background.h:438:18
	v_mul_f32_e32 v3, s6, v0
.Ltmp23143:
	.loc	203 444 22                      ; /light/background.h:444:22
	v_cmp_lg_f32_e32 vcc_lo, 0, v3
	s_and_saveexec_b32 s11, vcc_lo
	s_cbranch_execz BB90_159
; %bb.152:                              ; %if.then29.i.i.i.i
.Ltmp23144:
	.loc	98 500 15                       ; cycles/source/util/math_float3.h:500:15
	s_waitcnt vmcnt(1)
	v_cmp_lg_f32_e64 s4, 0, v7
	v_cmp_eq_f32_e32 vcc_lo, 0, v8
	v_cmp_lg_f32_e64 s5, 0, v8
	.loc	98 500 23 is_stmt 0             ; cycles/source/util/math_float3.h:500:23
	s_or_b32 s5, s4, s5
	.loc	98 500 45                       ; cycles/source/util/math_float3.h:500:45
	v_cmp_lg_f32_e64 s4, 0, v9
	s_or_b32 s4, s5, s4
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v0, 0
	s_and_saveexec_b32 s6, s4
	s_cbranch_execz BB90_154
.Ltmp23145:
; %bb.153:                              ; %if.end.i.i.i.i.i.i.i
	.loc	54 198 45 is_stmt 1             ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:198:45
	v_min_f32_e64 v0, |v7|, |v8|
	v_max_f32_e64 v1, |v7|, |v8|
	v_rcp_f32_e32 v1, v1
	v_mul_f32_e32 v0, v0, v1
	v_mul_f32_e32 v1, v0, v0
	s_mov_b32 s4, 0x3b2d2a58
	v_fma_f32 v10, v1, s4, 0xbc7a590c
	v_fmaak_f32 v10, v1, v10, 0x3d29fb3f
	v_fmaak_f32 v10, v1, v10, 0xbd97d4d7
	v_fmaak_f32 v10, v1, v10, 0x3dd931b2
	v_fmaak_f32 v10, v1, v10, 0xbe1160e6
	v_fmaak_f32 v10, v1, v10, 0x3e4cb8bf
	v_fmaak_f32 v10, v1, v10, 0xbeaaaa62
	v_mul_f32_e32 v1, v1, v10
	v_fmac_f32_e32 v0, v0, v1
	s_mov_b32 s7, 0x3fc90fdb
	v_sub_f32_e32 v1, s7, v0
	v_cmp_gt_f32_e64 s4, |v8|, |v7|
	v_cndmask_b32_e64 v0, v0, v1, s4
	v_mov_b32_e32 v10, 0x40490fdb
	v_sub_f32_e32 v1, v10, v0
	v_cmp_gt_f32_e64 s4, 0, v7
	v_cndmask_b32_e64 v0, v0, v1, s4
	v_cmp_gt_i32_e64 s4, 0, v7
	v_cndmask_b32_e64 v1, 0, v10, s4
	v_cndmask_b32_e32 v0, v0, v1, vcc_lo
	v_bfi_b32 v0, 0x7fffffff, v0, v8
.Ltmp23146:
	.loc	102 60 46                       ; /camera/projection.h:60:46
	v_fma_f32 v1, 0xbe22f983, v0, 0.5
.Ltmp23147:
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v0, v7, v7
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v0, v8, v8
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v0, v9, v9
.Ltmp23148:
	.loc	54 587 33 is_stmt 1             ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:587:33
	v_cmp_gt_f32_e32 vcc_lo, 0xf800000, v0
	v_cndmask_b32_e64 v7, 1.0, 0x4f800000, vcc_lo
	v_mul_f32_e32 v0, v0, v7
	v_sqrt_f32_e32 v7, v0
	v_add_nc_u32_e32 v8, -1, v7
	v_add_nc_u32_e32 v11, 1, v7
	v_cmp_class_f32_e64 s4, v0, 0x260
	v_cndmask_b32_e64 v12, 1.0, 0x37800000, vcc_lo
	v_fma_f32 v13, -v11, v7, v0
	v_cmp_lt_f32_e32 vcc_lo, 0, v13
	v_fma_f32 v13, -v8, v7, v0
	v_cmp_ge_f32_e64 s5, 0, v13
	v_cndmask_b32_e64 v7, v7, v8, s5
	v_cndmask_b32_e32 v7, v7, v11, vcc_lo
	v_mul_f32_e32 v7, v12, v7
	v_cndmask_b32_e64 v0, v7, v0, s4
.Ltmp23149:
	.loc	102 61 26                       ; /camera/projection.h:61:26
	v_rcp_f32_e32 v0, v0
	v_mul_f32_e32 v7, v9, v0
.Ltmp23150:
	.loc	54 186 33                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:186:33
	v_fma_f32 v8, |v7|, -0.5, 0.5
	v_mul_f32_e32 v11, v7, v7
	v_cmp_gt_f32_e64 vcc_lo, |v7|, 0.5
	v_cndmask_b32_e32 v8, v11, v8, vcc_lo
	s_mov_b32 s4, 0x3d1c21a7
	v_fma_f32 v11, v8, s4, 0x3c5fc5da
	v_fmaak_f32 v11, v8, v11, 0x3d034c3c
	v_fmaak_f32 v11, v8, v11, 0x3d3641b1
	v_fmaak_f32 v11, v8, v11, 0x3d999bc8
	v_fmaak_f32 v11, v8, v11, 0x3e2aaaac
	v_mul_f32_e32 v11, v8, v11
	v_sqrt_f32_e32 v8, v8
	v_fmac_f32_e32 v8, v8, v11
	v_add_f32_e32 v12, v8, v8
	v_fmac_f32_e32 v10, -2.0, v8
	v_cmp_gt_f32_e64 s4, 0, v7
	v_cndmask_b32_e64 v8, v12, v10, s4
	v_fma_f32 v0, -v9, v0, s7
	v_fma_f32 v0, -v7, v11, v0
	v_cndmask_b32_e32 v0, v0, v8, vcc_lo
.Ltmp23151:
	.loc	102 61 49                       ; /camera/projection.h:61:49
	v_fma_f32 v0, 0xbea2f983, v0, 1.0
.Ltmp23152:
BB90_154:                               ; %_Z28direction_to_equirectangular15HIP_vector_typeIfLj3EE.exit.i.i.i.i.i
	.loc	102 0 49 is_stmt 0              ; /camera/projection.h:0:49
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23153:
	.loc	54 776 34 is_stmt 1             ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:776:34
	v_mul_f32_e32 v7, 0.5, v0
	v_sin_f32_e32 v8, v7
.Ltmp23154:
	.loc	203 121 17                      ; /light/background.h:121:17
	v_cmp_lg_f32_e32 vcc_lo, 0, v8
.Ltmp23155:
	.loc	203 0 0 is_stmt 0               ; /light/background.h:0:0
	v_mov_b32_e32 v7, 0
	s_and_saveexec_b32 s13, vcc_lo
	s_cbranch_execz BB90_158
; %bb.155:                              ; %if.end.i.i.i.i49.i
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1352
	s_addc_u32 s5, s5, __data@rel32@hi+1360
	.loc	203 115 33 is_stmt 1            ; /light/background.h:115:33
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	.loc	203 117 25                      ; /light/background.h:117:25
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s4, 1
	.loc	203 125 43                      ; /light/background.h:125:43
	v_cvt_f32_i32_e32 v7, s5
	.loc	203 125 41 is_stmt 0            ; /light/background.h:125:41
	v_mul_f32_e32 v0, v7, v0
.Ltmp23156:
	.loc	94 375 15 is_stmt 1             ; cycles/source/util/math.h:375:15
	v_cvt_i32_f32_e32 v0, v0
.Ltmp23157:
	.loc	203 125 60                      ; /light/background.h:125:60
	s_add_i32 s6, s5, -1
	v_mov_b32_e32 v7, 0
.Ltmp23158:
	.loc	54 1381 10                      ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:1381:10
	v_max_i32_e32 v0, 0, v0
.Ltmp23159:
	.loc	54 1378 10                      ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:1378:10
	v_min_i32_e32 v0, s6, v0
.Ltmp23160:
	.loc	203 128 23                      ; /light/background.h:128:23
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __light_background_conditional_cdf@rel32@lo+4
	s_addc_u32 s7, s7, __light_background_conditional_cdf@rel32@hi+12
	s_load_dwordx2 s[6:7], s[6:7], 0x0
	.loc	203 128 67 is_stmt 0            ; /light/background.h:128:67
	v_mul_lo_u32 v9, v0, s8
	.loc	203 128 79                      ; /light/background.h:128:79
	v_add_nc_u32_e32 v10, s4, v9
	.loc	203 128 23                      ; /light/background.h:128:23
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 3, v[10:11]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v10, vcc_lo, s6, v10
	v_add_co_ci_u32_e32 v11, vcc_lo, s7, v11, vcc_lo
	global_load_dword v10, v[10:11], off
	.loc	203 130 23 is_stmt 1            ; /light/background.h:130:23
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __light_background_marginal_cdf@rel32@lo+4
	s_addc_u32 s9, s9, __light_background_marginal_cdf@rel32@hi+12
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	s_ashr_i32 s15, s5, 31
	s_mov_b32 s14, s5
	s_lshl_b64 s[14:15], s[14:15], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s14, s8, s14
	s_addc_u32 s15, s9, s15
	v_mov_b32_e32 v11, 0
	global_load_dword v11, v11, s[14:15]
	.loc	203 132 64                      ; /light/background.h:132:64
	v_mul_f32_e32 v8, 0x419de9e7, v8
	.loc	203 132 77 is_stmt 0            ; /light/background.h:132:77
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v10
	.loc	203 132 92                      ; /light/background.h:132:92
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v8, v8, v11
.Ltmp23161:
	.loc	203 134 13 is_stmt 1            ; /light/background.h:134:13
	v_cmp_lg_f32_e32 vcc_lo, 0, v8
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz BB90_157
.Ltmp23162:
; %bb.156:                              ; %if.end29.i.i.i.i.i
	.loc	203 124 43                      ; /light/background.h:124:43
	v_cvt_f32_i32_e32 v7, s4
	.loc	203 124 41 is_stmt 0            ; /light/background.h:124:41
	v_mul_f32_e32 v1, v1, v7
.Ltmp23163:
	.loc	94 375 15 is_stmt 1             ; cycles/source/util/math.h:375:15
	v_cvt_i32_f32_e32 v1, v1
.Ltmp23164:
	.loc	203 124 60                      ; /light/background.h:124:60
	s_add_i32 s4, s4, -1
.Ltmp23165:
	.loc	54 1381 10                      ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:1381:10
	v_max_i32_e32 v1, 0, v1
.Ltmp23166:
	.loc	54 1378 10                      ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:1378:10
	v_min_i32_e32 v1, s4, v1
.Ltmp23167:
	.loc	203 138 74                      ; /light/background.h:138:74
	v_add_nc_u32_e32 v9, v9, v1
	.loc	203 138 18 is_stmt 0            ; /light/background.h:138:18
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[9:10], 3, v[9:10]
	v_add_co_u32 v9, vcc_lo, s6, v9
	v_add_co_ci_u32_e32 v10, vcc_lo, s7, v10, vcc_lo
	.loc	203 140 18 is_stmt 1            ; /light/background.h:140:18
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 3, v[0:1]
	v_add_co_u32 v0, vcc_lo, s8, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s9, v1, vcc_lo
	.loc	203 138 18                      ; /light/background.h:138:18
	global_load_dword v7, v[9:10], off
	.loc	203 140 18                      ; /light/background.h:140:18
	global_load_dword v0, v[0:1], off
	.loc	203 142 19                      ; /light/background.h:142:19
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v7
	.loc	203 142 30 is_stmt 0            ; /light/background.h:142:30
	v_rcp_f32_e32 v1, v8
	v_mul_f32_e32 v7, v0, v1
.Ltmp23168:
BB90_157:                               ; %Flow648
	.loc	203 0 30                        ; /light/background.h:0:30
	s_or_b32 exec_lo, exec_lo, s5
BB90_158:                               ; %_Z18background_map_pdfPK16KernelGlobalsGPU15HIP_vector_typeIfLj3EE.exit.i.i.i.i
	s_or_b32 exec_lo, exec_lo, s13
	.loc	203 445 9 is_stmt 1             ; /light/background.h:445:9
	v_fmac_f32_e32 v2, v7, v3
.Ltmp23169:
BB90_159:                               ; %Flow649
	.loc	203 0 9 is_stmt 0               ; /light/background.h:0:9
	s_or_b32 exec_lo, exec_lo, s11
BB90_160:                               ; %Flow651
	s_or_b32 exec_lo, exec_lo, s10
	v_mul_f32_e32 v0, s83, v2
.Ltmp23170:
	.loc	202 51 13 is_stmt 1             ; /sample/mis.h:51:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v21, v21
	.loc	202 51 27 is_stmt 0             ; /sample/mis.h:51:27
	v_fma_f32 v0, v0, v0, v1
	.loc	202 51 18                       ; /sample/mis.h:51:18
	v_rcp_f32_e32 v0, v0
	v_mul_f32_e32 v0, v1, v0
.Ltmp23171:
	.loc	98 140 26 is_stmt 1             ; cycles/source/util/math_float3.h:140:26
	v_mul_f32_e32 v4, v0, v4
	.loc	98 140 35 is_stmt 0             ; cycles/source/util/math_float3.h:140:35
	v_mul_f32_e32 v5, v0, v5
	.loc	98 140 44                       ; cycles/source/util/math_float3.h:140:44
	v_mul_f32_e32 v6, v0, v6
.Ltmp23172:
BB90_161:                               ; %Flow661
	.loc	98 0 44                         ; cycles/source/util/math_float3.h:0:44
	s_or_b32 exec_lo, exec_lo, s12
BB90_162:                               ; %Flow667
	s_or_b32 exec_lo, exec_lo, s72
BB90_163:                               ; %cond.end.i.i
	s_or_b32 exec_lo, exec_lo, s71
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1428
	s_addc_u32 s5, s5, __data@rel32@hi+1436
.Ltmp23173:
	.loc	88 267 26 is_stmt 1             ; /integrator/path_state.h:267:26
	s_load_dword s4, s[4:5], 0x0
	.loc	88 267 8 is_stmt 0              ; /integrator/path_state.h:267:8
	s_waitcnt lgkmcnt(0)
	s_cmp_eq_u32 s4, 0
.Ltmp23174:
	.loc	200 0 0                         ; /integrator/shade_background.h:0:0
	global_load_ushort v7, v[78:79], off
	s_cbranch_scc1 BB90_167
; %bb.164:                              ; %if.end.i.i55.i
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __integrator_state@rel32@lo+44
	s_addc_u32 s7, s7, __integrator_state@rel32@hi+52
.Ltmp23175:
	.loc	88 272 46 is_stmt 1             ; /integrator/path_state.h:272:46
	s_load_dwordx4 s[8:11], s[6:7], 0x0
	s_waitcnt vmcnt(1)
	v_lshlrev_b64 v[0:1], 1, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, vcc_lo, s10, v0
	v_add_co_ci_u32_e32 v3, vcc_lo, s11, v1, vcc_lo
	.loc	88 272 22 is_stmt 0             ; /integrator/path_state.h:272:22
	global_load_ushort v2, v[2:3], off
	v_add_co_u32 v0, vcc_lo, s8, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s9, v1, vcc_lo
	.loc	88 273 23 is_stmt 1             ; /integrator/path_state.h:273:23
	global_load_ushort v0, v[0:1], off
	.loc	88 273 68 is_stmt 0             ; /integrator/path_state.h:273:68
	s_waitcnt vmcnt(0)
	v_cmp_ne_u16_e32 vcc_lo, 0, v0
	.loc	88 272 73 is_stmt 1             ; /integrator/path_state.h:272:73
	v_sub_co_ci_u32_e32 v0, vcc_lo, v7, v2, vcc_lo
	.loc	88 274 18                       ; /integrator/path_state.h:274:18
	v_cmp_le_i32_e32 vcc_lo, s4, v0
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_166
.Ltmp23176:
; %bb.165:                              ; %if.then13.i.i
	.loc	88 0 18 is_stmt 0               ; /integrator/path_state.h:0:18
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __data@rel32@lo+1436
	s_addc_u32 s7, s7, __data@rel32@hi+1444
.Ltmp23177:
	.loc	200 124 28 is_stmt 1            ; /integrator/shade_background.h:124:28
	s_load_dword s5, s[6:7], 0x0
.Ltmp23178:
	.loc	98 140 26                       ; cycles/source/util/math_float3.h:140:26
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v4, s5, v4
	.loc	98 140 35 is_stmt 0             ; cycles/source/util/math_float3.h:140:35
	v_mul_f32_e32 v5, s5, v5
	.loc	98 140 44                       ; cycles/source/util/math_float3.h:140:44
	v_mul_f32_e32 v6, s5, v6
.Ltmp23179:
BB90_166:                               ; %Flow647
	.loc	98 0 44                         ; cycles/source/util/math_float3.h:0:44
	s_or_b32 exec_lo, exec_lo, s4
BB90_167:                               ; %if.end16.i.i
	s_xor_b32 s5, s70, -1
.Ltmp23180:
	.loc	90 556 32 is_stmt 1             ; /film/accumulate.h:556:32
	s_waitcnt vmcnt(1)
	global_load_dwordx3 v[0:2], v[76:77], off
.Ltmp23181:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v0, v4
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v8, v1, v5
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v9, v2, v6
	s_brev_b32 s6, -2
.Ltmp23182:
	.loc	94 320 30 is_stmt 1             ; cycles/source/util/math.h:320:30
	v_and_b32_e32 v10, s6, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	v_fma_f32 v0, v0, v4, v3
	v_cmp_lg_f32_e64 s4, v0, v3
	s_or_b32 s4, vcc_lo, s4
	.loc	94 320 77 is_stmt 0             ; cycles/source/util/math.h:320:77
	v_lshlrev_b32_e32 v0, 1, v3
	s_mov_b32 s7, 0xff000001
	.loc	94 320 83                       ; cycles/source/util/math.h:320:83
	v_cmp_gt_u32_e32 vcc_lo, s7, v0
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	s_and_b32 vcc_lo, s4, vcc_lo
.Ltmp23183:
	.loc	98 563 7 is_stmt 1              ; cycles/source/util/math_float3.h:563:7
	v_cndmask_b32_e32 v12, 0, v3, vcc_lo
.Ltmp23184:
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	v_and_b32_e32 v0, s6, v8
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_fma_f32 v0, v1, v5, v8
	v_cmp_lg_f32_e64 s4, v0, v8
	s_or_b32 s4, vcc_lo, s4
	.loc	94 320 77 is_stmt 0             ; cycles/source/util/math.h:320:77
	v_lshlrev_b32_e32 v0, 1, v8
	.loc	94 320 83                       ; cycles/source/util/math.h:320:83
	v_cmp_gt_u32_e32 vcc_lo, s7, v0
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	s_and_b32 vcc_lo, s4, vcc_lo
.Ltmp23185:
	.loc	98 565 7 is_stmt 1              ; cycles/source/util/math_float3.h:565:7
	v_cndmask_b32_e32 v11, 0, v8, vcc_lo
.Ltmp23186:
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	v_and_b32_e32 v0, 0x7fffffff, v9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_fma_f32 v0, v2, v6, v9
	v_cmp_lg_f32_e64 s4, v0, v9
	s_or_b32 s4, vcc_lo, s4
	.loc	94 320 77 is_stmt 0             ; cycles/source/util/math.h:320:77
	v_lshlrev_b32_e32 v0, 1, v9
	.loc	94 320 83                       ; cycles/source/util/math.h:320:83
	v_cmp_gt_u32_e32 vcc_lo, s7, v0
	.loc	94 320 30                       ; cycles/source/util/math.h:320:30
	s_and_b32 vcc_lo, s4, vcc_lo
.Ltmp23187:
	.loc	98 567 7 is_stmt 1              ; cycles/source/util/math_float3.h:567:7
	v_cndmask_b32_e32 v10, 0, v9, vcc_lo
.Ltmp23188:
	.loc	90 124 25                       ; /film/accumulate.h:124:25
	v_cmp_lt_u16_e32 vcc_lo, 1, v7
	.loc	90 124 17 is_stmt 0             ; /film/accumulate.h:124:17
	v_mov_b32_e32 v0, s59
	v_cndmask_b32_e32 v0, s58, v0, vcc_lo
.Ltmp23189:
	.loc	98 511 15 is_stmt 1             ; cycles/source/util/math_float3.h:511:15
	v_add_f32_e64 v1, |v11|, |v12|
	.loc	98 511 21 is_stmt 0             ; cycles/source/util/math_float3.h:511:21
	v_add_f32_e64 v1, v1, |v10|
.Ltmp23190:
	.loc	90 127 11 is_stmt 1             ; /film/accumulate.h:127:11
	v_cmp_gt_f32_e32 vcc_lo, v1, v0
	s_and_saveexec_b32 s4, vcc_lo
; %bb.168:                              ; %if.then.i.i21.i.i
.Ltmp23191:
	.loc	90 128 17                       ; /film/accumulate.h:128:17
	v_rcp_f32_e32 v1, v1
	v_mul_f32_e32 v0, v0, v1
.Ltmp23192:
	.loc	98 140 26                       ; cycles/source/util/math_float3.h:140:26
	v_mul_f32_e32 v12, v0, v12
	.loc	98 140 35 is_stmt 0             ; cycles/source/util/math_float3.h:140:35
	v_mul_f32_e32 v11, v0, v11
	.loc	98 140 44                       ; cycles/source/util/math_float3.h:140:44
	v_mul_f32_e32 v10, v0, v10
.Ltmp23193:
; %bb.169:                              ; %_Z18kernel_accum_clampPK16KernelGlobalsGPUP15HIP_vector_typeIfLj3EEi.exit.i.i91.i
	.loc	98 0 44                         ; cycles/source/util/math_float3.h:0:44
	s_or_b32 exec_lo, exec_lo, s4
.Ltmp23194:
	.loc	90 141 39 is_stmt 1             ; /film/accumulate.h:141:39
	global_load_dword v0, v[74:75], off
	.loc	90 142 70                       ; /film/accumulate.h:142:70
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v1, v0, s69
	v_mul_hi_u32 v2, v0, s45
	v_add_nc_u32_e32 v1, v2, v1
	v_mul_lo_u32 v0, v0, s45
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v13, vcc_lo, s50, v0
	v_add_co_ci_u32_e32 v14, vcc_lo, s51, v1, vcc_lo
.Ltmp23195:
	.loc	90 560 30                       ; /film/accumulate.h:560:30
	global_load_dword v4, v[56:57], off
	s_and_saveexec_b32 s4, s5
	s_xor_b32 s4, exec_lo, s4
	s_cbranch_execnz BB90_172
; %bb.170:                              ; %Flow645
	.loc	90 0 30 is_stmt 0               ; /film/accumulate.h:0:30
	s_or_saveexec_b32 s4, s4
	s_xor_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz BB90_215
BB90_171:                               ; %Flow646
	s_or_b32 exec_lo, exec_lo, s4
.Ltmp23196:
	.loc	90 343 8 is_stmt 1              ; /film/accumulate.h:343:8
	s_cmp_eq_u32 s44, 0
	s_cbranch_scc0 BB90_223
	s_branch BB90_259
.Ltmp23197:
BB90_172:                               ; %if.else.i.i.i
	.loc	90 566 24                       ; /film/accumulate.h:566:24
	global_load_dword v5, v[72:73], off
	s_mov_b32 s6, -1
	s_andn2_b32 vcc_lo, exec_lo, s68
	s_cbranch_vccnz BB90_193
; %bb.173:                              ; %if.end.i.i.i27.i.i
.Ltmp23198:
	.loc	90 242 7                        ; /film/accumulate.h:242:7
	s_waitcnt vmcnt(1)
	v_cmp_lt_i32_e32 vcc_lo, -1, v4
	s_mov_b32 s6, 0
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz BB90_192
.Ltmp23199:
; %bb.174:                              ; %if.end7.i.i.i.i.i
	.loc	123 84 21                       ; /integrator/shadow_catcher.h:84:21
	v_and_b32_e32 v0, 0x20000000, v4
	s_mov_b32 s7, 0
	.loc	123 84 52 is_stmt 0             ; /integrator/shadow_catcher.h:84:52
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_saveexec_b32 s6, vcc_lo
	s_cbranch_execz BB90_183
.Ltmp23200:
; %bb.175:                              ; %if.then8.i.i.i.i101.i
	.loc	123 0 52                        ; /integrator/shadow_catcher.h:0:52
	s_lshl_b64 s[8:9], s[52:53], 2
	v_add_co_u32 v0, vcc_lo, v13, s8
	v_add_co_ci_u32_e32 v1, vcc_lo, s9, v14, vcc_lo
.Ltmp23201:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
BB90_176:                               ; %atomicrmw.start198
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s7, vcc_lo, s7
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz BB90_176
.Ltmp23202:
; %bb.177:                              ; %atomicrmw.end197
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s7
.Ltmp23203:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s7, 0
BB90_178:                               ; %atomicrmw.start204
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s7, vcc_lo, s7
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz BB90_178
.Ltmp23204:
; %bb.179:                              ; %atomicrmw.end203
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s7
.Ltmp23205:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s7, 0
BB90_180:                               ; %atomicrmw.start210
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s7, vcc_lo, s7
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz BB90_180
.Ltmp23206:
; %bb.181:                              ; %atomicrmw.end209
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s7
.Ltmp23207:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:12
	s_mov_b32 s7, 0
BB90_182:                               ; %atomicrmw.start216
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v42
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:12 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s7, vcc_lo, s7
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz BB90_182
.Ltmp23208:
BB90_183:                               ; %Flow631
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23209:
	.loc	123 89 10 is_stmt 1             ; /integrator/shadow_catcher.h:89:10
	v_lshrrev_b32_e32 v0, 30, v4
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
	s_mov_b32 s7, -1
	s_and_saveexec_b32 s6, vcc_lo
	s_cbranch_execz BB90_191
.Ltmp23210:
; %bb.184:                              ; %if.then12.i.i.i.i.i
	.loc	123 0 10 is_stmt 0              ; /integrator/shadow_catcher.h:0:10
	s_lshl_b64 s[8:9], s[56:57], 2
	v_add_co_u32 v0, vcc_lo, v13, s8
	v_add_co_ci_u32_e32 v1, vcc_lo, s9, v14, vcc_lo
.Ltmp23211:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s7, 0
BB90_185:                               ; %atomicrmw.start222
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s7, vcc_lo, s7
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz BB90_185
.Ltmp23212:
; %bb.186:                              ; %atomicrmw.end221
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s7
.Ltmp23213:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s7, 0
BB90_187:                               ; %atomicrmw.start228
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s7, vcc_lo, s7
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz BB90_187
.Ltmp23214:
; %bb.188:                              ; %atomicrmw.end227
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s7
.Ltmp23215:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s7, 0
BB90_189:                               ; %atomicrmw.start234
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s7, vcc_lo, s7
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz BB90_189
.Ltmp23216:
; %bb.190:                              ; %Flow629
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s7
	s_xor_b32 s7, exec_lo, -1
BB90_191:                               ; %Flow639
	s_or_b32 exec_lo, exec_lo, s6
	s_and_b32 s6, s7, exec_lo
BB90_192:                               ; %Flow638
	s_or_b32 exec_lo, exec_lo, s5
BB90_193:                               ; %Flow637
	s_and_saveexec_b32 s5, s6
	s_cbranch_execz BB90_214
; %bb.194:                              ; %if.end.i18.i.i.i
	s_andn2_b32 vcc_lo, exec_lo, s66
	s_cbranch_vccnz BB90_204
; %bb.195:                              ; %if.then5.i.i.i106.i
	s_lshl_b64 s[6:7], s[46:47], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23217:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_196:                               ; %atomicrmw.start240
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_196
.Ltmp23218:
; %bb.197:                              ; %atomicrmw.end239
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23219:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_198:                               ; %atomicrmw.start246
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_198
.Ltmp23220:
; %bb.199:                              ; %atomicrmw.end245
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23221:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_200:                               ; %atomicrmw.start252
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_200
.Ltmp23222:
; %bb.201:                              ; %atomicrmw.end251
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23223:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:12
	s_mov_b32 s6, 0
BB90_202:                               ; %atomicrmw.start258
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v42
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:12 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_202
.Ltmp23224:
; %bb.203:                              ; %Flow635
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
BB90_204:                               ; %if.end8.i.i.i.i
	s_andn2_b32 vcc_lo, exec_lo, s67
	s_cbranch_vccnz BB90_214
; %bb.205:                              ; %if.end.i6.i.i.i.i
.Ltmp23225:
	.loc	92 166 32 is_stmt 1             ; /sample/pattern.h:166:32
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 0xaaaaaaaa, v5
.Ltmp23226:
	.loc	16 51 12                        ; hip/amd_detail/amd_device_functions.h:51:12
	v_bcnt_u32_b32 v0, v0, 0
.Ltmp23227:
	.loc	92 162 7                        ; /sample/pattern.h:162:7
	v_cndmask_b32_e64 v0, v5, v0, s33
.Ltmp23228:
	.loc	92 0 0 is_stmt 0                ; /sample/pattern.h:0:0
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz BB90_214
.Ltmp23229:
; %bb.206:                              ; %if.then5.i.i.i.i111.i
	s_lshl_b64 s[6:7], s[54:55], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23230:
	.loc	90 185 82 is_stmt 1             ; /film/accumulate.h:185:82
	v_add_f32_e32 v5, v10, v10
	.loc	90 185 59 is_stmt 0             ; /film/accumulate.h:185:59
	v_add_f32_e32 v6, v11, v11
	.loc	90 185 36                       ; /film/accumulate.h:185:36
	v_add_f32_e32 v8, v12, v12
.Ltmp23231:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_207:                               ; %atomicrmw.start264
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v8
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_207
.Ltmp23232:
; %bb.208:                              ; %atomicrmw.end263
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23233:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_209:                               ; %atomicrmw.start270
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_209
.Ltmp23234:
; %bb.210:                              ; %atomicrmw.end269
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23235:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_211:                               ; %atomicrmw.start276
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_211
.Ltmp23236:
; %bb.212:                              ; %atomicrmw.end275
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23237:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v2, v[0:1], off offset:12
	s_mov_b32 s6, 0
BB90_213:                               ; %atomicrmw.start282
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v3, v2
	global_atomic_cmpswap v3, v[0:1], v[2:3], off offset:12 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v2
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v2, v3
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_213
.Ltmp23238:
BB90_214:                               ; %Flow640
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s5
                                        ; implicit-def: $vgpr42
	s_or_saveexec_b32 s4, s4
	s_xor_b32 exec_lo, exec_lo, s4
	s_cbranch_execz BB90_171
BB90_215:                               ; %if.then.i25.i.i
	s_andn2_b32 vcc_lo, exec_lo, s66
	s_cbranch_vccnz BB90_219
; %bb.216:                              ; %if.then.i10.i.i.i
	s_lshl_b64 s[6:7], s[46:47], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23239:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:12
	s_mov_b32 s5, 0
BB90_217:                               ; %atomicrmw.start186
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v42
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:12 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s5, vcc_lo, s5
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s5
	s_cbranch_execnz BB90_217
.Ltmp23240:
; %bb.218:                              ; %Flow643
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s5
BB90_219:                               ; %if.end.i.i.i95.i
	s_mov_b32 s5, 0
.Ltmp23241:
	.loc	90 273 8 is_stmt 1              ; /film/accumulate.h:273:8
	s_cmp_lg_u32 s65, 0
	s_cselect_b32 s6, -1, 0
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 0x20000000, v4
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
.Ltmp23242:
	.loc	90 273 7 is_stmt 0              ; /film/accumulate.h:273:7
	s_and_b32 s7, s6, vcc_lo
	s_and_saveexec_b32 s6, s7
	s_cbranch_execz BB90_222
; %bb.220:                              ; %if.then1.i.i.i.i.i
	.loc	90 0 7                          ; /film/accumulate.h:0:7
	s_lshl_b64 s[8:9], s[52:53], 2
	v_add_co_u32 v0, vcc_lo, v13, s8
	v_add_co_ci_u32_e32 v1, vcc_lo, s9, v14, vcc_lo
.Ltmp23243:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:12
BB90_221:                               ; %atomicrmw.start192
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v42
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:12 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s5, vcc_lo, s5
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s5
	s_cbranch_execnz BB90_221
.Ltmp23244:
BB90_222:                               ; %Flow642
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
	s_or_b32 exec_lo, exec_lo, s4
.Ltmp23245:
	.loc	90 343 8 is_stmt 1              ; /film/accumulate.h:343:8
	s_cmp_eq_u32 s44, 0
	s_cbranch_scc1 BB90_259
.Ltmp23246:
BB90_223:                               ; %if.end.i29.i.i.i
	.loc	90 0 8 is_stmt 0                ; /film/accumulate.h:0:8
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __data@rel32@lo+1084
	s_addc_u32 s5, s5, __data@rel32@hi+1092
	.loc	90 571 52 is_stmt 1             ; /film/accumulate.h:571:52
	s_load_dword s4, s[4:5], 0x0
.Ltmp23247:
	.loc	90 353 7                        ; /film/accumulate.h:353:7
	v_mov_b32_e32 v0, 1
	s_waitcnt vmcnt(0)
	v_and_b32_sdwa v0, v0, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_3
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
.Ltmp23248:
	.loc	90 353 7 is_stmt 0              ; /film/accumulate.h:353:7
	s_xor_b32 s5, s64, -1
	s_and_b32 s6, vcc_lo, s5
	s_and_saveexec_b32 s5, s6
	s_cbranch_execz BB90_230
; %bb.224:                              ; %if.then7.i.i.i123.i
.Ltmp23249:
	.loc	90 355 51 is_stmt 1             ; /film/accumulate.h:355:51
	global_load_dwordx3 v[0:2], v[62:63], off
.Ltmp23250:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v8, v0, v12
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v6, v1, v11
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v5, v2, v10
	s_lshl_b64 s[6:7], s[48:49], 2
	v_add_co_u32 v0, vcc_lo, v13, s6
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v14, vcc_lo
.Ltmp23251:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s6, 0
BB90_225:                               ; %atomicrmw.start288
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v8
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_225
.Ltmp23252:
; %bb.226:                              ; %atomicrmw.end287
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23253:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s6, 0
BB90_227:                               ; %atomicrmw.start294
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_227
.Ltmp23254:
; %bb.228:                              ; %atomicrmw.end293
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s6
.Ltmp23255:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s6, 0
BB90_229:                               ; %atomicrmw.start300
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s6, vcc_lo, s6
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz BB90_229
.Ltmp23256:
BB90_230:                               ; %Flow627
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s5
.Ltmp23257:
	.loc	90 363 19 is_stmt 1             ; /film/accumulate.h:363:19
	v_and_b32_e32 v0, 0x6000000, v4
	.loc	90 363 8 is_stmt 0              ; /film/accumulate.h:363:8
	v_cmp_ne_u32_e32 vcc_lo, 0, v0
.Ltmp23258:
	.loc	90 0 0                          ; /film/accumulate.h:0:0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s4
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz BB90_251
; %bb.231:                              ; %if.else.i.i.i128.i
	s_andn2_b32 vcc_lo, exec_lo, s63
	v_mov_b32_e32 v3, -1
	s_cbranch_vccnz BB90_251
; %bb.232:                              ; %if.then18.i.i.i131.i
.Ltmp23259:
	.loc	90 368 9 is_stmt 1              ; /film/accumulate.h:368:9
	v_lshrrev_b32_e32 v0, 25, v4
	v_and_b32_e32 v0, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
                                        ; implicit-def: $vgpr3
	s_and_saveexec_b32 s4, vcc_lo
	s_xor_b32 s6, exec_lo, s4
	s_cbranch_execz BB90_248
; %bb.233:                              ; %if.then21.i.i.i149.i
.Ltmp23260:
	.loc	90 370 37                       ; /film/accumulate.h:370:37
	global_load_dwordx3 v[0:2], v[58:59], off
	.loc	90 371 36                       ; /film/accumulate.h:371:36
	global_load_dwordx3 v[3:5], v[60:61], off
	.loc	90 374 78                       ; /film/accumulate.h:374:78
	v_cmp_eq_u16_e32 vcc_lo, 1, v7
	.loc	90 374 39 is_stmt 0             ; /film/accumulate.h:374:39
	v_mov_b32_e32 v6, s41
	v_cndmask_b32_e32 v6, s37, v6, vcc_lo
.Ltmp23261:
	.loc	90 377 30 is_stmt 1             ; /film/accumulate.h:377:30
	v_cmp_ne_u32_e64 s4, -1, v6
	s_and_saveexec_b32 s7, s4
	s_cbranch_execz BB90_240
; %bb.234:                              ; %if.then32.i.i.i155.i
.Ltmp23262:
	.loc	90 378 41                       ; /film/accumulate.h:378:41
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, s4, v13, v6
	v_add_co_ci_u32_e64 v7, s4, v14, v7, s4
.Ltmp23263:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v3, v12
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v16, v4, v11
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v15, v5, v10
.Ltmp23264:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v9, v[6:7], off
	s_mov_b32 s8, 0
BB90_235:                               ; %atomicrmw.start306
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v17
	global_atomic_cmpswap v8, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v8, v9
	s_or_b32 s8, s4, s8
	v_mov_b32_e32 v9, v8
	s_andn2_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz BB90_235
.Ltmp23265:
; %bb.236:                              ; %atomicrmw.end305
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s8
.Ltmp23266:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v9, v[6:7], off offset:4
	s_mov_b32 s8, 0
BB90_237:                               ; %atomicrmw.start312
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v16
	global_atomic_cmpswap v8, v[6:7], v[8:9], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v8, v9
	s_or_b32 s8, s4, s8
	v_mov_b32_e32 v9, v8
	s_andn2_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz BB90_237
.Ltmp23267:
; %bb.238:                              ; %atomicrmw.end311
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s8
.Ltmp23268:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v9, v[6:7], off offset:8
	s_mov_b32 s8, 0
BB90_239:                               ; %atomicrmw.start318
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v15
	global_atomic_cmpswap v8, v[6:7], v[8:9], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v8, v9
	s_or_b32 s8, s4, s8
	v_mov_b32_e32 v9, v8
	s_andn2_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz BB90_239
.Ltmp23269:
BB90_240:                               ; %Flow622
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s7
	.loc	90 382 45 is_stmt 1             ; /film/accumulate.h:382:45
	v_mov_b32_e32 v6, s42
	v_cndmask_b32_e32 v6, s38, v6, vcc_lo
.Ltmp23270:
	.loc	90 386 36                       ; /film/accumulate.h:386:36
	v_cmp_ne_u32_e64 s4, -1, v6
	s_and_saveexec_b32 s7, s4
	s_cbranch_execz BB90_247
; %bb.241:                              ; %if.then47.i.i.i171.i
.Ltmp23271:
	.loc	98 201 26                       ; cycles/source/util/math_float3.h:201:26
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v0, v3
	.loc	98 201 37 is_stmt 0             ; cycles/source/util/math_float3.h:201:37
	v_add_f32_e32 v15, v1, v4
	.loc	98 201 48                       ; cycles/source/util/math_float3.h:201:48
	v_add_f32_e32 v5, v2, v5
.Ltmp23272:
	.loc	90 390 41 is_stmt 1             ; /film/accumulate.h:390:41
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[3:4], 2, v[6:7]
	v_add_co_u32 v3, s4, v13, v3
	v_add_co_ci_u32_e64 v4, s4, v14, v4, s4
.Ltmp23273:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	v_fma_f32 v9, -v8, v12, v12
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_fma_f32 v8, -v15, v11, v11
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_fma_f32 v7, -v5, v10, v10
.Ltmp23274:
	.loc	91 189 10 is_stmt 1             ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v6, v[3:4], off
	s_mov_b32 s8, 0
BB90_242:                               ; %atomicrmw.start324
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v9
	global_atomic_cmpswap v5, v[3:4], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v5, v6
	s_or_b32 s8, s4, s8
	v_mov_b32_e32 v6, v5
	s_andn2_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz BB90_242
.Ltmp23275:
; %bb.243:                              ; %atomicrmw.end323
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s8
.Ltmp23276:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v6, v[3:4], off offset:4
	s_mov_b32 s8, 0
BB90_244:                               ; %atomicrmw.start330
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v8
	global_atomic_cmpswap v5, v[3:4], v[5:6], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v5, v6
	s_or_b32 s8, s4, s8
	v_mov_b32_e32 v6, v5
	s_andn2_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz BB90_244
.Ltmp23277:
; %bb.245:                              ; %atomicrmw.end329
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s8
.Ltmp23278:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v6, v[3:4], off offset:8
	s_mov_b32 s8, 0
BB90_246:                               ; %atomicrmw.start336
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v7
	global_atomic_cmpswap v5, v[3:4], v[5:6], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s4, v5, v6
	s_or_b32 s8, s4, s8
	v_mov_b32_e32 v6, v5
	s_andn2_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz BB90_246
.Ltmp23279:
BB90_247:                               ; %Flow620
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s7
	.loc	90 395 21 is_stmt 1             ; /film/accumulate.h:395:21
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v3, s40
	v_cndmask_b32_e32 v3, s36, v3, vcc_lo
.Ltmp23280:
	.loc	90 398 23                       ; /film/accumulate.h:398:23
	v_cmp_eq_u32_e32 vcc_lo, -1, v3
.Ltmp23281:
	.loc	98 131 26                       ; cycles/source/util/math_float3.h:131:26
	v_mul_f32_e32 v0, v0, v12
	.loc	98 131 37 is_stmt 0             ; cycles/source/util/math_float3.h:131:37
	v_mul_f32_e32 v1, v1, v11
	.loc	98 131 48                       ; cycles/source/util/math_float3.h:131:48
	v_mul_f32_e32 v2, v2, v10
.Ltmp23282:
	.loc	90 398 11 is_stmt 1             ; /film/accumulate.h:398:11
	v_cndmask_b32_e32 v12, v0, v12, vcc_lo
	v_cndmask_b32_e32 v11, v1, v11, vcc_lo
	v_cndmask_b32_e32 v10, v2, v10, vcc_lo
.Ltmp23283:
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr4
BB90_248:                               ; %Flow623
	.loc	90 0 11 is_stmt 0               ; /film/accumulate.h:0:11
	s_or_saveexec_b32 s4, s6
	s_xor_b32 exec_lo, exec_lo, s4
; %bb.249:                              ; %if.else70.i.i.i184.i
.Ltmp23284:
	.loc	90 404 60 is_stmt 1             ; /film/accumulate.h:404:60
	v_cmp_eq_u16_e32 vcc_lo, 1, v7
	.loc	90 404 21 is_stmt 0             ; /film/accumulate.h:404:21
	v_mov_b32_e32 v0, s43
	v_cndmask_b32_e32 v0, s39, v0, vcc_lo
.Ltmp23285:
	.loc	90 402 14 is_stmt 1             ; /film/accumulate.h:402:14
	v_lshrrev_b32_e32 v1, 26, v4
	v_and_b32_e32 v1, 1, v1
	v_cmp_eq_u32_e32 vcc_lo, 1, v1
	v_cndmask_b32_e32 v3, -1, v0, vcc_lo
.Ltmp23286:
; %bb.250:                              ; %Flow624
	.loc	90 0 14 is_stmt 0               ; /film/accumulate.h:0:14
	s_or_b32 exec_lo, exec_lo, s4
BB90_251:                               ; %if.end85.i.i.i197.i
	s_or_b32 exec_lo, exec_lo, s5
.Ltmp23287:
	.loc	90 411 19 is_stmt 1             ; /film/accumulate.h:411:19
	v_cmp_ne_u32_e32 vcc_lo, -1, v3
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_258
; %bb.252:                              ; %if.then87.i.i.i200.i
.Ltmp23288:
	.loc	90 412 37                       ; /film/accumulate.h:412:37
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[0:1], 2, v[3:4]
	v_add_co_u32 v0, vcc_lo, v13, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, v14, v1, vcc_lo
.Ltmp23289:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off
	s_mov_b32 s5, 0
BB90_253:                               ; %atomicrmw.start342
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s5, vcc_lo, s5
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s5
	s_cbranch_execnz BB90_253
.Ltmp23290:
; %bb.254:                              ; %atomicrmw.end341
	.loc	91 0 10 is_stmt 0               ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s5
.Ltmp23291:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:4
	s_mov_b32 s5, 0
BB90_255:                               ; %atomicrmw.start348
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:4 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s5, vcc_lo, s5
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s5
	s_cbranch_execnz BB90_255
.Ltmp23292:
; %bb.256:                              ; %atomicrmw.end347
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s5
.Ltmp23293:
	.loc	91 189 10                       ; hip/amd_detail/amd_hip_atomic.h:189:10
	global_load_dword v3, v[0:1], off offset:8
	s_mov_b32 s5, 0
BB90_257:                               ; %atomicrmw.start354
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap v2, v[0:1], v[2:3], off offset:8 glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	s_or_b32 s5, vcc_lo, s5
	v_mov_b32_e32 v3, v2
	s_andn2_b32 exec_lo, exec_lo, s5
	s_cbranch_execnz BB90_257
.Ltmp23294:
BB90_258:                               ; %Flow618
	.loc	91 0 10                         ; hip/amd_detail/amd_hip_atomic.h:0:10
	s_or_b32 exec_lo, exec_lo, s4
BB90_259:                               ; %_Z20integrate_backgroundPK16KernelGlobalsGPUiPf.exit.i
.Ltmp23295:
	.loc	200 192 7 is_stmt 1             ; /integrator/shade_background.h:192:7
	global_load_dword v0, v[56:57], off
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e32 vcc_lo, 0, v0
	s_and_saveexec_b32 s4, vcc_lo
	s_xor_b32 s5, exec_lo, s4
	s_cbranch_execz BB90_271
; %bb.260:                              ; %if.then.i
.Ltmp23296:
	.loc	200 195 41                      ; /integrator/shade_background.h:195:41
	v_and_b32_e32 v0, 0x7fffffff, v0
	global_store_dword v[56:57], v0, off
.Ltmp23297:
	.loc	103 118 34                      ; /integrator/state_util.h:118:34
	s_bitcmp0_b32 s62, 18
	.loc	103 118 10 is_stmt 0            ; /integrator/state_util.h:118:10
	s_cselect_b32 s4, -1, 0
	s_and_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz BB90_264
; %bb.261:                              ; %cond.true.i.i.i
	.loc	103 0 10                        ; /integrator/state_util.h:0:10
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __integrator_state@rel32@lo+316
	s_addc_u32 s7, s7, __integrator_state@rel32@hi+324
	.loc	103 119 49 is_stmt 1            ; /integrator/state_util.h:119:49
	s_load_dwordx2 s[6:7], s[6:7], 0x0
	v_lshlrev_b64 v[0:1], 2, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, vcc_lo, s6, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s7, v1, vcc_lo
	.loc	103 119 14 is_stmt 0            ; /integrator/state_util.h:119:14
	global_load_dword v0, v[0:1], off
	s_mov_b32 s4, -1
	.loc	103 119 63                      ; /integrator/state_util.h:119:63
	s_waitcnt vmcnt(0)
	v_cmp_ne_u32_e32 vcc_lo, -1, v0
	s_and_saveexec_b32 s6, vcc_lo
	s_cbranch_execz BB90_263
.Ltmp23298:
; %bb.262:                              ; %if.then.i.i
	.loc	103 0 63                        ; /integrator/state_util.h:0:63
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __integrator_state@rel32@lo+1700
	s_addc_u32 s9, s9, __integrator_state@rel32@hi+1708
.Ltmp23299:
	.loc	120 181 52 is_stmt 1            ; /integrator/intersect_closest.h:181:52
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, -1
.Ltmp23300:
	.loc	91 235 10                       ; hip/amd_detail/amd_hip_atomic.h:235:10
	s_waitcnt lgkmcnt(0)
	global_atomic_add v0, v1, s[8:9] offset:24
	v_mov_b32_e32 v1, 1
.Ltmp23301:
	.loc	91 153 10                       ; hip/amd_detail/amd_hip_atomic.h:153:10
	global_atomic_add v0, v1, s[8:9] offset:20
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __integrator_state@rel32@lo+76
	s_addc_u32 s9, s9, __integrator_state@rel32@hi+84
.Ltmp23302:
	.loc	120 181 284                     ; /integrator/intersect_closest.h:181:284
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	v_lshlrev_b64 v[0:1], 1, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, vcc_lo, s8, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s9, v1, vcc_lo
	v_mov_b32_e32 v2, 5
	.loc	120 181 305 is_stmt 0           ; /integrator/intersect_closest.h:181:305
	global_store_short v[0:1], v2, off
	s_xor_b32 s4, exec_lo, -1
.Ltmp23303:
BB90_263:                               ; %Flow613
	.loc	120 0 305                       ; /integrator/intersect_closest.h:0:305
	s_or_b32 exec_lo, exec_lo, s6
BB90_264:                               ; %Flow612
	s_and_saveexec_b32 s6, s4
	s_cbranch_execz BB90_270
; %bb.265:                              ; %if.end.i.i
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __integrator_state@rel32@lo+252
	s_addc_u32 s9, s9, __integrator_state@rel32@hi+260
.Ltmp23304:
	.loc	103 91 42 is_stmt 1             ; /integrator/state_util.h:91:42
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	v_lshlrev_b64 v[0:1], 2, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, vcc_lo, s8, v0
	v_add_co_ci_u32_e32 v3, vcc_lo, s9, v1, vcc_lo
	.loc	103 91 17 is_stmt 0             ; /integrator/state_util.h:91:17
	global_load_dword v2, v[2:3], off
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __integrator_state@rel32@lo+268
	s_addc_u32 s9, s9, __integrator_state@rel32@hi+276
	.loc	103 93 42 is_stmt 1             ; /integrator/state_util.h:93:42
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, vcc_lo, s8, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s9, v1, vcc_lo
	.loc	103 93 17 is_stmt 0             ; /integrator/state_util.h:93:17
	global_load_dword v3, v[0:1], off
.Ltmp23305:
	.loc	111 112 7 is_stmt 1             ; /bvh/util.h:112:7
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 1, v3
	v_cmp_eq_u32_e32 vcc_lo, 1, v0
	s_mov_b32 s4, 0
                                        ; implicit-def: $vgpr0_vgpr1
	s_and_saveexec_b32 s7, vcc_lo
	s_xor_b32 s7, exec_lo, s7
	s_cbranch_execnz BB90_274
; %bb.266:                              ; %Flow
	.loc	111 0 7 is_stmt 0               ; /bvh/util.h:0:7
	s_or_saveexec_b32 s7, s7
	s_xor_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz BB90_275
BB90_267:                               ; %Flow608
	s_or_b32 exec_lo, exec_lo, s7
	v_mov_b32_e32 v2, 0
	s_and_saveexec_b32 s7, s4
	s_cbranch_execz BB90_269
BB90_268:                               ; %_Z39intersection_get_shader_from_isect_primPK16KernelGlobalsGPUii.exit.sink.split.i.i.i.i
	global_load_dword v0, v[0:1], off
.Ltmp23306:
	.loc	111 126 17 is_stmt 1            ; /bvh/util.h:126:17
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 0x3fffff, v0
.Ltmp23307:
BB90_269:                               ; %_Z60integrator_intersect_next_kernel_after_shadow_catcher_volumeILj6EEvPK16KernelGlobalsGPUi.exit.i.i
	.loc	111 0 17 is_stmt 0              ; /bvh/util.h:0:17
	s_or_b32 exec_lo, exec_lo, s7
	v_lshlrev_b32_e32 v0, 5, v2
	.loc	120 160 41 is_stmt 1            ; /integrator/intersect_closest.h:160:41
	global_load_dword v0, v0, s[34:35] offset:16
	.loc	120 161 43                      ; /integrator/intersect_closest.h:161:43
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 2.0, v0
	.loc	120 161 36 is_stmt 0            ; /integrator/intersect_closest.h:161:36
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __integrator_state@rel32@lo+1700
	s_addc_u32 s9, s9, __integrator_state@rel32@hi+1708
.Ltmp23308:
	.loc	120 0 0                         ; /integrator/intersect_closest.h:0:0
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, -1
	s_waitcnt lgkmcnt(0)
	global_atomic_add v0, v1, s[8:9] offset:24
.Ltmp23309:
	.loc	120 163 7 is_stmt 1             ; /integrator/intersect_closest.h:163:7
	v_cndmask_b32_e64 v0, 36, 32, vcc_lo
	v_cndmask_b32_e64 v3, 9, 8, vcc_lo
.Ltmp23310:
	.loc	120 0 0 is_stmt 0               ; /integrator/intersect_closest.h:0:0
	v_mov_b32_e32 v1, 0
	v_add_co_u32 v0, s4, s8, v0
	v_add_co_ci_u32_e64 v1, s4, s9, v1, s4
	v_mov_b32_e32 v4, 1
	global_atomic_add v[0:1], v4, off
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __integrator_state@rel32@lo+76
	s_addc_u32 s9, s9, __integrator_state@rel32@hi+84
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	v_lshlrev_b64 v[0:1], 1, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s4, s8, v0
	v_add_co_ci_u32_e64 v1, s4, s9, v1, s4
	global_store_short v[0:1], v3, off
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __integrator_state@rel32@lo+172
	s_addc_u32 s9, s9, __integrator_state@rel32@hi+180
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	v_lshlrev_b64 v[0:1], 2, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s4, s8, v0
	v_add_co_ci_u32_e64 v1, s4, s9, v1, s4
	global_store_dword v[0:1], v2, off
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __integrator_state@rel32@lo+1772
	s_addc_u32 s9, s9, __integrator_state@rel32@hi+1780
	s_load_dwordx4 s[8:11], s[8:9], 0x0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s9
	v_cndmask_b32_e32 v1, s11, v0, vcc_lo
	v_mov_b32_e32 v0, s8
	v_cndmask_b32_e32 v0, s10, v0, vcc_lo
	v_lshlrev_b32_e32 v2, 2, v2
	v_add_co_u32 v0, vcc_lo, v0, v2
	v_add_co_ci_u32_e32 v1, vcc_lo, 0, v1, vcc_lo
	global_atomic_add v[0:1], v4, off
.Ltmp23311:
BB90_270:                               ; %Flow614
	s_or_b32 exec_lo, exec_lo, s6
                                        ; implicit-def: $vgpr40_vgpr41
BB90_271:                               ; %Flow615
	s_or_saveexec_b32 s4, s5
	s_xor_b32 exec_lo, exec_lo, s4
	s_cbranch_execz BB90_273
; %bb.272:                              ; %if.end.i
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __integrator_state@rel32@lo+1700
	s_addc_u32 s5, s5, __integrator_state@rel32@hi+1708
	.loc	200 202 50 is_stmt 1            ; /integrator/shade_background.h:202:50
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v0, -1
.Ltmp23312:
	.loc	91 235 10                       ; hip/amd_detail/amd_hip_atomic.h:235:10
	s_waitcnt lgkmcnt(0)
	global_atomic_add v2, v0, s[4:5] offset:24
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __integrator_state@rel32@lo+76
	s_addc_u32 s5, s5, __integrator_state@rel32@hi+84
.Ltmp23313:
	.loc	200 202 165                     ; /integrator/shade_background.h:202:165
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_lshlrev_b64 v[0:1], 1, v[40:41]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, vcc_lo, s4, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s5, v1, vcc_lo
	.loc	200 202 186 is_stmt 0           ; /integrator/shade_background.h:202:186
	global_store_short v[0:1], v2, off
.Ltmp23314:
BB90_273:                               ; %if.end
	.loc	86 202 1                        ; /gpu/kernel.h:202:1
	s_endpgm
BB90_274:                               ; %if.then.i.i.i.i.i
.Ltmp23315:
	.loc	111 113 14 is_stmt 1            ; /bvh/util.h:113:14
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, __tri_shader@rel32@lo+4
	s_addc_u32 s9, s9, __tri_shader@rel32@hi+12
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[0:1], 2, v[2:3]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, vcc_lo, s8, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s9, v1, vcc_lo
	s_mov_b32 s4, exec_lo
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
	s_or_saveexec_b32 s7, s7
	s_xor_b32 exec_lo, exec_lo, s7
	s_cbranch_execz BB90_267
.Ltmp23316:
BB90_275:                               ; %if.else.i.i.i.i.i
	.loc	111 116 12                      ; /bvh/util.h:116:12
	v_lshrrev_b32_e32 v4, 3, v3
	v_and_b32_e32 v4, 1, v4
	v_cmp_eq_u32_e32 vcc_lo, 1, v4
	s_mov_b32 s8, s4
	s_and_saveexec_b32 s9, vcc_lo
	s_xor_b32 s9, exec_lo, s9
	s_cbranch_execz BB90_277
; %bb.276:                              ; %if.then3.i.i.i.i.i
.Ltmp23317:
	.loc	111 117 14                      ; /bvh/util.h:117:14
	s_getpc_b64 s[10:11]
	s_add_u32 s10, s10, __points_shader@rel32@lo+4
	s_addc_u32 s11, s11, __points_shader@rel32@hi+12
	s_load_dwordx2 s[10:11], s[10:11], 0x0
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[0:1], 2, v[2:3]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, vcc_lo, s10, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s11, v1, vcc_lo
	s_or_b32 s8, s4, exec_lo
.Ltmp23318:
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
BB90_277:                               ; %Flow609
	.loc	111 0 14 is_stmt 0              ; /bvh/util.h:0:14
	s_or_saveexec_b32 s9, s9
	s_xor_b32 exec_lo, exec_lo, s9
	s_cbranch_execz BB90_281
; %bb.278:                              ; %if.else6.i.i.i.i.i
.Ltmp23319:
	.loc	111 121 23 is_stmt 1            ; /bvh/util.h:121:23
	v_and_b32_e32 v3, 6, v3
	.loc	111 121 12 is_stmt 0            ; /bvh/util.h:121:12
	v_cmp_ne_u32_e32 vcc_lo, 0, v3
	s_mov_b32 s11, s8
	s_and_saveexec_b32 s10, vcc_lo
	s_cbranch_execz BB90_280
; %bb.279:                              ; %if.then9.i.i.i.i.i
.Ltmp23320:
	.loc	111 122 14 is_stmt 1            ; /bvh/util.h:122:14
	v_ashrrev_i32_e32 v3, 31, v2
	s_getpc_b64 s[12:13]
	s_add_u32 s12, s12, __curves@rel32@lo+4
	s_addc_u32 s13, s13, __curves@rel32@hi+12
	s_load_dwordx2 s[12:13], s[12:13], 0x0
	v_lshlrev_b64 v[0:1], 4, v[2:3]
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, vcc_lo, s12, v0
	v_add_co_ci_u32_e32 v1, vcc_lo, s13, v1, vcc_lo
	s_or_b32 s11, s8, exec_lo
.Ltmp23321:
BB90_280:                               ; %Flow611
	.loc	111 0 14 is_stmt 0              ; /bvh/util.h:0:14
	s_or_b32 exec_lo, exec_lo, s10
	s_andn2_b32 s8, s8, exec_lo
	s_and_b32 s10, s11, exec_lo
	s_or_b32 s8, s8, s10
BB90_281:                               ; %Flow610
	s_or_b32 exec_lo, exec_lo, s9
	s_andn2_b32 s4, s4, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_or_b32 s4, s4, s8
	s_or_b32 exec_lo, exec_lo, s7
	v_mov_b32_e32 v2, 0
	s_and_saveexec_b32 s7, s4
	s_cbranch_execnz BB90_268
	s_branch BB90_269
BB90_282:                               ; %_Z14lamp_light_pdfPK16KernelGlobalsGPU15HIP_vector_typeIfLj3EES3_f.exit.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
	s_or_b32 exec_lo, exec_lo, s4
.Ltmp23322:
	.loc	203 207 49 is_stmt 1            ; /light/background.h:207:49
	v_mul_f32_e64 v0, v1, |v3|
.Ltmp23323:
BB90_283:                               ; %Flow653
                                        ;   in Loop: Header=BB90_289 Depth=1
	.loc	203 0 0 is_stmt 0               ; /light/background.h:0:0
	v_add_f32_e32 v22, v0, v22
.Ltmp23324:
BB90_284:                               ; %Flow654
                                        ;   in Loop: Header=BB90_289 Depth=1
	s_or_b32 exec_lo, exec_lo, s19
BB90_285:                               ; %Flow655
                                        ;   in Loop: Header=BB90_289 Depth=1
	s_or_b32 exec_lo, exec_lo, s18
BB90_286:                               ; %Flow656
                                        ;   in Loop: Header=BB90_289 Depth=1
	s_or_b32 exec_lo, exec_lo, s17
BB90_287:                               ; %Flow657
                                        ;   in Loop: Header=BB90_289 Depth=1
	s_or_b32 exec_lo, exec_lo, s16
	v_add_nc_u32_e32 v23, 1, v23
	v_mov_b32_e32 v0, 1
BB90_288:                               ; %for.inc.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
	s_or_b32 exec_lo, exec_lo, s15
	.loc	203 167 21 is_stmt 1            ; /light/background.h:167:21
	s_add_i32 s10, s10, -1
	v_add_co_u32 v19, vcc_lo, v19, s14
	v_add_co_ci_u32_e32 v20, vcc_lo, 0, v20, vcc_lo
	s_cmp_eq_u32 s10, 0
	s_cbranch_scc1 BB90_143
BB90_289:                               ; %for.body.i.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
.Ltmp23325:
	.loc	203 151 27                      ; /light/background.h:151:27
	s_clause 0x1
	global_load_dwordx3 v[13:15], v[19:20], off offset:-140
	global_load_dwordx3 v[10:12], v[19:20], off offset:32
.Ltmp23326:
	.loc	98 201 26                       ; cycles/source/util/math_float3.h:201:26
	s_waitcnt vmcnt(1)
	v_sub_f32_e32 v29, v24, v13
	.loc	98 201 37 is_stmt 0             ; cycles/source/util/math_float3.h:201:37
	v_sub_f32_e32 v28, v25, v14
	.loc	98 201 48                       ; cycles/source/util/math_float3.h:201:48
	v_sub_f32_e32 v27, v26, v15
.Ltmp23327:
	.loc	98 286 14 is_stmt 1             ; cycles/source/util/math_float3.h:286:14
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v10, v29
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v1, v11, v28
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v1, v12, v27
.Ltmp23328:
	.loc	203 155 32 is_stmt 1            ; /light/background.h:155:32
	v_cmp_lt_f32_e32 vcc_lo, s20, v1
	s_and_saveexec_b32 s15, vcc_lo
	s_cbranch_execz BB90_288
.Ltmp23329:
; %bb.290:                              ; %if.then13.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v0, v10, v13
	v_mul_f32_e32 v1, v10, v24
	v_fmac_f32_e32 v1, v11, v25
	v_fmac_f32_e32 v1, v12, v26
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v0, v11, v14
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v0, v12, v15
.Ltmp23330:
	.loc	113 200 13 is_stmt 1            ; cycles/source/util/math_intersect.h:200:13
	v_sub_f32_e32 v0, v0, v1
.Ltmp23331:
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v1, v10, v7
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v1, v11, v8
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v1, v12, v9
.Ltmp23332:
	.loc	113 200 57 is_stmt 1            ; cycles/source/util/math_intersect.h:200:57
	v_rcp_f32_e32 v1, v1
	v_mul_f32_e32 v30, v0, v1
.Ltmp23333:
	.loc	113 201 9                       ; cycles/source/util/math_intersect.h:201:9
	v_cmp_le_f32_e32 vcc_lo, s20, v30
	v_cmp_ge_f32_e64 s4, 0x7f7fffff, v30
	s_and_b32 s4, vcc_lo, s4
	s_and_saveexec_b32 s16, s4
	s_cbranch_execz BB90_287
.Ltmp23334:
; %bb.291:                              ; %if.end.i.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
	.loc	203 184 9                       ; /light/background.h:184:9
	s_clause 0x1
	global_load_dwordx3 v[16:18], v[19:20], off offset:16
	global_load_dwordx4 v[0:3], v[19:20], off
.Ltmp23335:
	.loc	98 201 26                       ; cycles/source/util/math_float3.h:201:26
	v_fmac_f32_e32 v29, v30, v7
	.loc	98 201 37 is_stmt 0             ; cycles/source/util/math_float3.h:201:37
	v_fmac_f32_e32 v28, v30, v8
	.loc	98 201 48                       ; cycles/source/util/math_float3.h:201:48
	v_fmac_f32_e32 v27, v30, v9
.Ltmp23336:
	.loc	98 286 14 is_stmt 1             ; cycles/source/util/math_float3.h:286:14
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v0, v29
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v31, v1, v28
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v31, v2, v27
.Ltmp23337:
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v30, v0, v0
	.loc	98 286 20                       ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v30, v1, v1
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v30, v2, v2
.Ltmp23338:
	.loc	113 206 40 is_stmt 1            ; cycles/source/util/math_intersect.h:206:40
	v_rcp_f32_e32 v32, v30
	v_mul_f32_e32 v31, v31, v32
.Ltmp23339:
	.loc	113 207 9                       ; cycles/source/util/math_intersect.h:207:9
	v_cmp_le_f32_e32 vcc_lo, -0.5, v31
	v_cmp_ge_f32_e64 s4, 0.5, v31
	s_and_b32 s4, vcc_lo, s4
	s_and_saveexec_b32 s17, s4
	s_cbranch_execz BB90_286
.Ltmp23340:
; %bb.292:                              ; %if.end43.i.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v29, v16, v29
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v29, v17, v28
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v29, v18, v27
.Ltmp23341:
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v27, v16, v16
	.loc	98 286 20                       ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v27, v17, v17
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v27, v18, v18
.Ltmp23342:
	.loc	113 210 40 is_stmt 1            ; cycles/source/util/math_intersect.h:210:40
	v_rcp_f32_e32 v28, v27
	v_mul_f32_e32 v28, v29, v28
.Ltmp23343:
	.loc	113 211 9                       ; cycles/source/util/math_intersect.h:211:9
	v_cmp_le_f32_e32 vcc_lo, -0.5, v28
	v_cmp_ge_f32_e64 s4, 0.5, v28
	s_and_b32 s4, vcc_lo, s4
	s_and_saveexec_b32 s18, s4
	s_cbranch_execz BB90_285
.Ltmp23344:
; %bb.293:                              ; %if.end51.i.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
	.loc	203 187 43                      ; /light/background.h:187:43
	v_cmp_le_f32_e32 vcc_lo, 0, v3
	v_mul_f32_e32 v29, v31, v31
	v_fmac_f32_e32 v29, v28, v28
	v_cmp_ge_f32_e64 s4, 0x3e800000, v29
.Ltmp23345:
	.loc	113 214 15                      ; cycles/source/util/math_intersect.h:214:15
	s_or_b32 s4, vcc_lo, s4
	s_and_saveexec_b32 s19, s4
	s_cbranch_execz BB90_284
.Ltmp23346:
; %bb.294:                              ; %if.end45.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
	.loc	113 0 15 is_stmt 0              ; cycles/source/util/math_intersect.h:0:15
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	s_cbranch_vccz BB90_296
; %bb.295:                              ; %if.else.i.i.i.i44.i
                                        ;   in Loop: Header=BB90_289 Depth=1
.Ltmp23347:
	.loc	98 201 26 is_stmt 1             ; cycles/source/util/math_float3.h:201:26
	v_add_f32_e32 v28, v16, v0
	.loc	98 201 37 is_stmt 0             ; cycles/source/util/math_float3.h:201:37
	v_add_f32_e32 v29, v17, v1
	.loc	98 201 48                       ; cycles/source/util/math_float3.h:201:48
	v_add_f32_e32 v31, v18, v2
.Ltmp23348:
	.loc	54 587 33 is_stmt 1             ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:587:33
	v_cmp_gt_f32_e32 vcc_lo, s21, v30
	v_cndmask_b32_e64 v32, 1.0, s22, vcc_lo
	v_mul_f32_e32 v30, v30, v32
	v_sqrt_f32_e32 v32, v30
	v_add_nc_u32_e32 v33, -1, v32
	v_add_nc_u32_e32 v34, 1, v32
	v_cmp_class_f32_e64 s4, v30, s11
	v_cndmask_b32_e64 v35, 1.0, s23, vcc_lo
	v_fma_f32 v36, -v34, v32, v30
	v_cmp_lt_f32_e32 vcc_lo, 0, v36
	v_fma_f32 v36, -v33, v32, v30
	v_cmp_ge_f32_e64 s5, 0, v36
	v_cndmask_b32_e64 v32, v32, v33, s5
	v_cndmask_b32_e32 v32, v32, v34, vcc_lo
	v_mul_f32_e32 v32, v35, v32
	v_cndmask_b32_e64 v30, v32, v30, s4
.Ltmp23349:
	.loc	98 457 18                       ; cycles/source/util/math_float3.h:457:18
	v_rcp_f32_e32 v32, v30
.Ltmp23350:
	.loc	98 140 26                       ; cycles/source/util/math_float3.h:140:26
	v_mul_f32_e32 v0, v32, v0
	.loc	98 140 35 is_stmt 0             ; cycles/source/util/math_float3.h:140:35
	v_mul_f32_e32 v1, v32, v1
	.loc	98 140 44                       ; cycles/source/util/math_float3.h:140:44
	v_mul_f32_e32 v2, v32, v2
.Ltmp23351:
	.loc	54 587 33 is_stmt 1             ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:587:33
	v_cmp_gt_f32_e32 vcc_lo, s21, v27
	v_cndmask_b32_e64 v32, 1.0, s22, vcc_lo
	v_mul_f32_e32 v27, v27, v32
	v_sqrt_f32_e32 v32, v27
	v_add_nc_u32_e32 v33, -1, v32
	v_add_nc_u32_e32 v34, 1, v32
	v_cmp_class_f32_e64 s4, v27, s11
	v_cndmask_b32_e64 v35, 1.0, s23, vcc_lo
	v_fma_f32 v36, -v34, v32, v27
	v_cmp_lt_f32_e32 vcc_lo, 0, v36
	v_fma_f32 v36, -v33, v32, v27
	v_cmp_ge_f32_e64 s5, 0, v36
	v_cndmask_b32_e64 v32, v32, v33, s5
	v_cndmask_b32_e32 v32, v32, v34, vcc_lo
	v_mul_f32_e32 v32, v35, v32
	v_cndmask_b32_e64 v27, v32, v27, s4
.Ltmp23352:
	.loc	98 457 18                       ; cycles/source/util/math_float3.h:457:18
	v_rcp_f32_e32 v32, v27
.Ltmp23353:
	.loc	98 140 26                       ; cycles/source/util/math_float3.h:140:26
	v_mul_f32_e32 v16, v32, v16
	.loc	98 140 35 is_stmt 0             ; cycles/source/util/math_float3.h:140:35
	v_mul_f32_e32 v17, v32, v17
	.loc	98 140 44                       ; cycles/source/util/math_float3.h:140:44
	v_mul_f32_e32 v18, v32, v18
.Ltmp23354:
	.loc	98 301 42 is_stmt 1             ; cycles/source/util/math_float3.h:301:42
	v_mul_f32_e32 v32, v17, v2
	.loc	98 301 36 is_stmt 0             ; cycles/source/util/math_float3.h:301:36
	v_fma_f32 v32, v18, v1, -v32
	.loc	98 301 65                       ; cycles/source/util/math_float3.h:301:65
	v_mul_f32_e32 v33, v18, v0
	.loc	98 301 59                       ; cycles/source/util/math_float3.h:301:59
	v_fma_f32 v33, v16, v2, -v33
	.loc	98 301 88                       ; cycles/source/util/math_float3.h:301:88
	v_mul_f32_e32 v34, v16, v1
	.loc	98 301 82                       ; cycles/source/util/math_float3.h:301:82
	v_fma_f32 v34, v17, v0, -v34
.Ltmp23355:
	.loc	98 201 26 is_stmt 1             ; cycles/source/util/math_float3.h:201:26
	v_sub_f32_e32 v35, v13, v24
	v_fmac_f32_e32 v35, -0.5, v28
	.loc	98 201 37 is_stmt 0             ; cycles/source/util/math_float3.h:201:37
	v_sub_f32_e32 v28, v14, v25
	v_fmac_f32_e32 v28, -0.5, v29
	.loc	98 201 48                       ; cycles/source/util/math_float3.h:201:48
	v_sub_f32_e32 v29, v15, v26
	v_fmac_f32_e32 v29, -0.5, v31
.Ltmp23356:
	.loc	98 286 14 is_stmt 1             ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v31, v32, v35
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v31, v33, v28
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v31, v34, v29
.Ltmp23357:
	.file	204 "/light" "common.h"
	.loc	204 56 10 is_stmt 1             ; /light/common.h:56:10
	v_cmp_lt_f32_e32 vcc_lo, 0, v31
.Ltmp23358:
	.loc	204 56 7 is_stmt 0              ; /light/common.h:56:7
	v_cndmask_b32_e64 v31, v31, -v31, vcc_lo
.Ltmp23359:
	.loc	98 286 14 is_stmt 1             ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v0, v0, v35
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v0, v1, v28
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v0, v2, v29
.Ltmp23360:
	.loc	98 286 14                       ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v1, v16, v35
	.loc	98 286 20                       ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v1, v17, v28
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v1, v18, v29
.Ltmp23361:
	.loc	204 62 17 is_stmt 1             ; /light/common.h:62:17
	v_add_f32_e32 v2, v0, v30
	.loc	204 63 17                       ; /light/common.h:63:17
	v_add_f32_e32 v16, v1, v27
.Ltmp23362:
	.loc	97 131 26                       ; cycles/source/util/math_float4.h:131:26
	v_mul_f32_e64 v1, v1, -v30
	.loc	97 131 37 is_stmt 0             ; cycles/source/util/math_float4.h:131:37
	v_mul_f32_e32 v2, v2, v27
	.loc	97 131 48                       ; cycles/source/util/math_float4.h:131:48
	v_mul_f32_e32 v16, v16, v30
	.loc	97 131 59                       ; cycles/source/util/math_float4.h:131:59
	v_mul_f32_e64 v0, v0, -v27
.Ltmp23363:
	.loc	204 67 21 is_stmt 1             ; /light/common.h:67:21
	v_mul_f32_e32 v17, v31, v31
.Ltmp23364:
	.loc	97 131 26                       ; cycles/source/util/math_float4.h:131:26
	v_mul_f32_e32 v18, v30, v30
	v_mul_f32_e32 v18, v18, v17
	.loc	97 131 37 is_stmt 0             ; cycles/source/util/math_float4.h:131:37
	v_mul_f32_e32 v27, v27, v27
	v_mul_f32_e32 v17, v27, v17
.Ltmp23365:
	.loc	97 173 26 is_stmt 1             ; cycles/source/util/math_float4.h:173:26
	v_fma_f32 v27, v1, v1, v18
	.loc	97 173 37 is_stmt 0             ; cycles/source/util/math_float4.h:173:37
	v_fma_f32 v28, v2, v2, v17
	.loc	97 173 48                       ; cycles/source/util/math_float4.h:173:48
	v_fmac_f32_e32 v18, v16, v16
	.loc	97 173 59                       ; cycles/source/util/math_float4.h:173:59
	v_fmac_f32_e32 v17, v0, v0
.Ltmp23366:
	.loc	54 587 33 is_stmt 1             ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:587:33
	v_cmp_gt_f32_e32 vcc_lo, s21, v27
	v_cndmask_b32_e64 v29, 1.0, s22, vcc_lo
	v_mul_f32_e32 v27, v27, v29
	v_sqrt_f32_e32 v29, v27
	v_add_nc_u32_e32 v30, -1, v29
	v_add_nc_u32_e32 v31, 1, v29
	v_cmp_class_f32_e64 s4, v27, s11
	v_cndmask_b32_e64 v32, 1.0, s23, vcc_lo
	v_fma_f32 v33, -v31, v29, v27
	v_cmp_lt_f32_e32 vcc_lo, 0, v33
	v_fma_f32 v33, -v30, v29, v27
	v_cmp_ge_f32_e64 s5, 0, v33
	v_cndmask_b32_e64 v29, v29, v30, s5
	v_cndmask_b32_e32 v29, v29, v31, vcc_lo
	v_mul_f32_e32 v29, v32, v29
	v_cndmask_b32_e64 v27, v29, v27, s4
.Ltmp23367:
	.loc	54 587 33 is_stmt 0             ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:587:33
	v_cmp_gt_f32_e32 vcc_lo, s21, v28
	v_cndmask_b32_e64 v29, 1.0, s22, vcc_lo
	v_mul_f32_e32 v28, v28, v29
	v_sqrt_f32_e32 v29, v28
	v_add_nc_u32_e32 v30, -1, v29
	v_add_nc_u32_e32 v31, 1, v29
	v_cmp_class_f32_e64 s4, v28, s11
	v_cndmask_b32_e64 v32, 1.0, s23, vcc_lo
	v_fma_f32 v33, -v31, v29, v28
	v_cmp_lt_f32_e32 vcc_lo, 0, v33
	v_fma_f32 v33, -v30, v29, v28
	v_cmp_ge_f32_e64 s5, 0, v33
	v_cndmask_b32_e64 v29, v29, v30, s5
	v_cndmask_b32_e32 v29, v29, v31, vcc_lo
	v_mul_f32_e32 v29, v32, v29
	v_cndmask_b32_e64 v28, v29, v28, s4
.Ltmp23368:
	.loc	54 587 33                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:587:33
	v_cmp_gt_f32_e32 vcc_lo, s21, v18
	v_cndmask_b32_e64 v29, 1.0, s22, vcc_lo
	v_mul_f32_e32 v18, v18, v29
	v_sqrt_f32_e32 v29, v18
	v_add_nc_u32_e32 v30, -1, v29
	v_add_nc_u32_e32 v31, 1, v29
	v_cmp_class_f32_e64 s4, v18, s11
	v_cndmask_b32_e64 v32, 1.0, s23, vcc_lo
	v_fma_f32 v33, -v31, v29, v18
	v_cmp_lt_f32_e32 vcc_lo, 0, v33
	v_fma_f32 v33, -v30, v29, v18
	v_cmp_ge_f32_e64 s5, 0, v33
	v_cndmask_b32_e64 v29, v29, v30, s5
	v_cndmask_b32_e32 v29, v29, v31, vcc_lo
	v_mul_f32_e32 v29, v32, v29
	v_cndmask_b32_e64 v18, v29, v18, s4
.Ltmp23369:
	.loc	54 587 33                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:587:33
	v_cmp_gt_f32_e32 vcc_lo, s21, v17
	v_cndmask_b32_e64 v29, 1.0, s22, vcc_lo
	v_mul_f32_e32 v17, v17, v29
	v_sqrt_f32_e32 v29, v17
	v_add_nc_u32_e32 v30, -1, v29
	v_add_nc_u32_e32 v31, 1, v29
	v_cmp_class_f32_e64 s4, v17, s11
	v_cndmask_b32_e64 v32, 1.0, s23, vcc_lo
	v_fma_f32 v33, -v31, v29, v17
	v_cmp_lt_f32_e32 vcc_lo, 0, v33
	v_fma_f32 v33, -v30, v29, v17
	v_cmp_ge_f32_e64 s5, 0, v33
	v_cndmask_b32_e64 v29, v29, v30, s5
	v_cndmask_b32_e32 v29, v29, v31, vcc_lo
	v_mul_f32_e32 v29, v32, v29
	v_cndmask_b32_e64 v17, v29, v17, s4
.Ltmp23370:
	.loc	97 159 26 is_stmt 1             ; cycles/source/util/math_float4.h:159:26
	v_rcp_f32_e32 v27, v27
	v_mul_f32_e32 v1, v1, v27
	.loc	97 159 37 is_stmt 0             ; cycles/source/util/math_float4.h:159:37
	v_rcp_f32_e32 v27, v28
	v_mul_f32_e32 v2, v2, v27
	.loc	97 159 48                       ; cycles/source/util/math_float4.h:159:48
	v_rcp_f32_e32 v18, v18
	v_mul_f32_e32 v16, v16, v18
	.loc	97 159 59                       ; cycles/source/util/math_float4.h:159:59
	v_rcp_f32_e32 v17, v17
	v_mul_f32_e32 v0, v0, v17
.Ltmp23371:
	.loc	204 68 31 is_stmt 1             ; /light/common.h:68:31
	v_mul_f32_e64 v17, v2, -v1
.Ltmp23372:
	.loc	54 278 44                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:278:44
	v_med3_f32 v17, v17, -1.0, 1.0
.Ltmp23373:
	.loc	54 186 33                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:186:33
	v_fma_f32 v18, |v17|, -0.5, 0.5
	v_mul_f32_e32 v27, v17, v17
	v_cmp_gt_f32_e64 vcc_lo, |v17|, 0.5
	v_cndmask_b32_e32 v18, v27, v18, vcc_lo
	v_fmaak_f32 v27, s24, v18, 0x3c5fc5da
	v_fmaak_f32 v27, v18, v27, 0x3d034c3c
	v_fmaak_f32 v27, v18, v27, 0x3d3641b1
	v_fmaak_f32 v27, v18, v27, 0x3d999bc8
	v_fmaak_f32 v27, v18, v27, 0x3e2aaaac
	v_mul_f32_e32 v27, v18, v27
	v_sqrt_f32_e32 v18, v18
	v_fmac_f32_e32 v18, v18, v27
	v_add_f32_e32 v28, v18, v18
	v_fmaak_f32 v18, -2.0, v18, 0x40490fdb
	v_cmp_gt_f32_e64 s4, 0, v17
	v_cndmask_b32_e64 v18, v28, v18, s4
	v_fmac_f32_e32 v17, v17, v27
	v_sub_f32_e32 v17, s25, v17
	v_cndmask_b32_e32 v17, v17, v18, vcc_lo
.Ltmp23374:
	.loc	204 69 31                       ; /light/common.h:69:31
	v_mul_f32_e64 v2, v16, -v2
.Ltmp23375:
	.loc	54 278 44                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:278:44
	v_med3_f32 v2, v2, -1.0, 1.0
.Ltmp23376:
	.loc	54 186 33                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:186:33
	v_fma_f32 v18, |v2|, -0.5, 0.5
	v_mul_f32_e32 v27, v2, v2
	v_cmp_gt_f32_e64 vcc_lo, |v2|, 0.5
	v_cndmask_b32_e32 v18, v27, v18, vcc_lo
	v_fmaak_f32 v27, s24, v18, 0x3c5fc5da
	v_fmaak_f32 v27, v18, v27, 0x3d034c3c
	v_fmaak_f32 v27, v18, v27, 0x3d3641b1
	v_fmaak_f32 v27, v18, v27, 0x3d999bc8
	v_fmaak_f32 v27, v18, v27, 0x3e2aaaac
	v_mul_f32_e32 v27, v18, v27
	v_sqrt_f32_e32 v18, v18
	v_fmac_f32_e32 v18, v18, v27
	v_add_f32_e32 v28, v18, v18
	v_fmaak_f32 v18, -2.0, v18, 0x40490fdb
	v_cmp_gt_f32_e64 s4, 0, v2
	v_cndmask_b32_e64 v18, v28, v18, s4
	v_fmac_f32_e32 v2, v2, v27
	v_sub_f32_e32 v2, s25, v2
	v_cndmask_b32_e32 v2, v2, v18, vcc_lo
.Ltmp23377:
	.loc	204 70 31                       ; /light/common.h:70:31
	v_mul_f32_e64 v16, v0, -v16
.Ltmp23378:
	.loc	54 278 44                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:278:44
	v_med3_f32 v16, v16, -1.0, 1.0
.Ltmp23379:
	.loc	54 186 33                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:186:33
	v_fma_f32 v18, |v16|, -0.5, 0.5
	v_mul_f32_e32 v27, v16, v16
	v_cmp_gt_f32_e64 vcc_lo, |v16|, 0.5
	v_cndmask_b32_e32 v18, v27, v18, vcc_lo
	v_fmaak_f32 v27, s24, v18, 0x3c5fc5da
	v_fmaak_f32 v27, v18, v27, 0x3d034c3c
	v_fmaak_f32 v27, v18, v27, 0x3d3641b1
	v_fmaak_f32 v27, v18, v27, 0x3d999bc8
	v_fmaak_f32 v27, v18, v27, 0x3e2aaaac
	v_mul_f32_e32 v27, v18, v27
	v_sqrt_f32_e32 v18, v18
	v_fmac_f32_e32 v18, v18, v27
	v_add_f32_e32 v28, v18, v18
	v_fmaak_f32 v18, -2.0, v18, 0x40490fdb
	v_cmp_gt_f32_e64 s4, 0, v16
	v_cndmask_b32_e64 v18, v28, v18, s4
	v_fmac_f32_e32 v16, v16, v27
	v_sub_f32_e32 v16, s25, v16
	v_cndmask_b32_e32 v16, v16, v18, vcc_lo
.Ltmp23380:
	.loc	204 71 31                       ; /light/common.h:71:31
	v_mul_f32_e64 v0, v1, -v0
.Ltmp23381:
	.loc	54 278 44                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:278:44
	v_med3_f32 v0, v0, -1.0, 1.0
.Ltmp23382:
	.loc	54 186 33                       ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:186:33
	v_fma_f32 v1, |v0|, -0.5, 0.5
	v_mul_f32_e32 v18, v0, v0
	v_cmp_gt_f32_e64 vcc_lo, |v0|, 0.5
	v_cndmask_b32_e32 v1, v18, v1, vcc_lo
	v_fmaak_f32 v18, s24, v1, 0x3c5fc5da
	v_fmaak_f32 v18, v1, v18, 0x3d034c3c
	v_fmaak_f32 v18, v1, v18, 0x3d3641b1
	v_fmaak_f32 v18, v1, v18, 0x3d999bc8
	v_fmaak_f32 v18, v1, v18, 0x3e2aaaac
	v_mul_f32_e32 v18, v1, v18
	v_sqrt_f32_e32 v1, v1
	v_fmac_f32_e32 v1, v1, v18
	v_add_f32_e32 v27, v1, v1
	v_fmaak_f32 v1, -2.0, v1, 0x40490fdb
	v_cmp_gt_f32_e64 s4, 0, v0
	v_cndmask_b32_e64 v1, v27, v1, s4
	v_fmac_f32_e32 v0, v0, v18
	v_sub_f32_e32 v0, s25, v0
	v_cndmask_b32_e32 v0, v0, v1, vcc_lo
.Ltmp23383:
	.loc	204 76 40                       ; /light/common.h:76:40
	v_add_f32_e32 v1, 0xc0c90fdb, v2
	.loc	204 78 21                       ; /light/common.h:78:21
	v_add_f32_e32 v1, v1, v17
	.loc	204 78 16 is_stmt 0             ; /light/common.h:78:16
	v_add_f32_e32 v1, v1, v16
	.loc	204 78 21                       ; /light/common.h:78:21
	v_add_f32_e32 v0, v1, v0
.Ltmp23384:
	.loc	204 104 9 is_stmt 1             ; /light/common.h:104:9
	v_cmp_lg_f32_e32 vcc_lo, 0, v0
.Ltmp23385:
	.loc	204 104 7 is_stmt 0             ; /light/common.h:104:7
	v_rcp_f32_e32 v0, v0
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	s_mov_b32 s4, 0
	s_branch BB90_297
.Ltmp23386:
BB90_296:                               ;   in Loop: Header=BB90_289 Depth=1
	.loc	204 0 7                         ; /light/common.h:0:7
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr0
BB90_297:                               ; %Flow652
                                        ;   in Loop: Header=BB90_289 Depth=1
	s_andn2_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz BB90_283
; %bb.298:                              ; %if.then47.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
.Ltmp23387:
	.loc	98 201 26 is_stmt 1             ; cycles/source/util/math_float3.h:201:26
	v_sub_f32_e32 v1, v13, v24
	.loc	98 201 37 is_stmt 0             ; cycles/source/util/math_float3.h:201:37
	v_sub_f32_e32 v2, v14, v25
	.loc	98 201 48                       ; cycles/source/util/math_float3.h:201:48
	v_sub_f32_e32 v13, v15, v26
.Ltmp23388:
	.loc	98 286 14 is_stmt 1             ; cycles/source/util/math_float3.h:286:14
	v_mul_f32_e32 v0, v1, v1
	.loc	98 286 20 is_stmt 0             ; cycles/source/util/math_float3.h:286:20
	v_fmac_f32_e32 v0, v2, v2
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fmac_f32_e32 v0, v13, v13
.Ltmp23389:
	.loc	54 587 33 is_stmt 1             ; /opt/rocm-5.1.0-9568/llvm/lib/clang/14.0.0/include/__clang_hip_math.h:587:33
	v_cmp_gt_f32_e32 vcc_lo, s21, v0
	v_cndmask_b32_e64 v14, 1.0, s22, vcc_lo
	v_mul_f32_e32 v0, v0, v14
	v_sqrt_f32_e32 v14, v0
	v_add_nc_u32_e32 v15, -1, v14
	v_add_nc_u32_e32 v16, 1, v14
	v_cmp_class_f32_e64 s4, v0, s11
	v_cndmask_b32_e64 v17, 1.0, s23, vcc_lo
	v_fma_f32 v18, -v16, v14, v0
	v_cmp_lt_f32_e32 vcc_lo, 0, v18
	v_fma_f32 v18, -v15, v14, v0
	v_cmp_ge_f32_e64 s5, 0, v18
	v_cndmask_b32_e64 v14, v14, v15, s5
	v_cndmask_b32_e32 v14, v14, v16, vcc_lo
	v_mul_f32_e32 v14, v17, v14
	v_cndmask_b32_e64 v0, v14, v0, s4
	v_mul_f32_e32 v1, v10, v1
	v_fmac_f32_e32 v1, v11, v2
.Ltmp23390:
	.loc	98 286 32                       ; cycles/source/util/math_float3.h:286:32
	v_fma_f32 v1, -v12, v13, -v1
	v_rcp_f32_e32 v2, v0
	v_mul_f32_e32 v2, v1, v2
.Ltmp23391:
	.loc	204 221 14                      ; /light/common.h:221:14
	v_cmp_lt_f32_e32 vcc_lo, 0, v2
.Ltmp23392:
	.loc	204 0 0 is_stmt 0               ; /light/common.h:0:0
	v_mov_b32_e32 v1, 0
	s_and_saveexec_b32 s4, vcc_lo
	s_cbranch_execz BB90_282
; %bb.299:                              ; %if.end.i36.i.i.i.i.i
                                        ;   in Loop: Header=BB90_289 Depth=1
	.loc	204 224 12 is_stmt 1            ; /light/common.h:224:12
	v_mul_f32_e32 v0, v0, v0
	.loc	204 224 16 is_stmt 0            ; /light/common.h:224:16
	v_rcp_f32_e32 v1, v2
	v_mul_f32_e32 v1, v0, v1
	s_branch BB90_282
.Ltmp23393:
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel kernel_gpu_integrator_shade_background
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1616
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 1
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_system_sgpr_private_segment_wavefront_offset 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 124
		.amdhsa_next_free_sgpr 106
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end90:
	.size	kernel_gpu_integrator_shade_background, .Lfunc_end90-kernel_gpu_integrator_shade_background
	.cfi_endproc
                                        ; -- End function
