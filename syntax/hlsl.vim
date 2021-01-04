" Vim syntax file the High Level Shader Language
" Language:     HLSL (DirectX 11)
" Author:       Marc Costa <beyond.marc@gmail.com>
" Date:         December 29, 2012
" File Types:   .hlsl, .hlslc, .hlslh, .hlsl
" Version:      0.1
" Notes:        Adapted from hlsl.vim - Kevin Bjorke <kbjorke@nvidia.com>

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" Annotations
syn match           hlslAnnotation          /<.*;>/

" Attributes
syn match           hlslAttribute           /^\s*\[maxvertexcount(\d\+)\]/
syn match           hlslAttribute           /^\s*\[domain("\(tri\|quad\|isoline\)")\]/
syn match           hlslAttribute           /^\s*\[earlydepthstencil\]/
syn match           hlslAttribute           /^\s*\[instance(\d\+)\]/
syn match           hlslAttribute           /^\s*\[maxtessfactor(\d\+)\]/
syn match           hlslAttribute           /^\s*\[numthreads(\s*\w\+\s*,\s*\w\+\s*,\s*\w\+\s*)\]/
syn match           hlslAttribute           /^\s*\[outputcontrolpoints(\d\+)\]/
syn match           hlslAttribute           /^\s*\[outputtopology("\(point\|line\|triangle_cw\|triangle_ccw\|triangle\)")\]/
syn match           hlslAttribute           /^\s*\[partitioning("\(integer\|fractional_even\|fractional_odd\|pow2\)")\]/
syn match           hlslAttribute           /^\s*\[patchconstantfunc("[\d\w_]\+")\]/
syn match           hlslAttribute           /^\s*\[WaveSize(\s*\w\+\s*)\]/

syn match           hlslAttribute           /^\s*\[fastopt\]/
syn match           hlslAttribute           /^\s*\[loop\]/
syn match           hlslAttribute           /^\s*\[unroll\]/
syn match           hlslAttribute           /^\s*\[allow_uav_condition\]/
syn match           hlslAttribute           /^\s*\[branch\]/
syn match           hlslAttribute           /^\s*\[flatten\]/
syn match           hlslAttribute           /^\s*\[forcecase\]/
syn match           hlslAttribute           /^\s*\[call\]/

" Intrinsic functions
syn keyword         hlslFunc                abs acos acosh asin asinh atan atanh cos cosh exp exp2 floor log log10 log2 round rsqrt sin sincos sinh sqrt tan tanh trunc
syn keyword         hlslFunc                AllMemoryBarrier AllMemoryBarrierWithGroupSync DeviceMemoryBarrier DeviceMemoryBarrierWithGroupSync GroupMemoryBarrier GroupMemoryBarrierWithGroupSync
syn keyword         hlslFunc                abort clip errorf printf
syn keyword         hlslFunc                all any countbits faceforward firstbithigh firstbitlow isfinite isinf isnan max min noise pow reversebits sign
syn keyword         hlslFunc                asdouble asfloat asint asuint D3DCOLORtoUBYTE4 f16tof32 f32tof16
syn keyword         hlslFunc                ceil clamp degrees fma fmod frac frexp ldexp lerp mad modf radiants saturate smoothstep step
syn keyword         hlslFunc                cross determinant distance dot dst length lit msad4 mul normalize rcp reflect refract transpose
syn keyword         hlslFunc                ddx ddx_coarse ddx_fine ddy ddy_coarse ddy_fine fwidth
syn keyword         hlslFunc                EvaluateAttributeAtCentroid EvaluateAttributeAtSample EvaluateAttributeSnapped
syn keyword         hlslFunc                GetRenderTargetSampleCount GetRenderTargetSamplePosition
syn keyword         hlslFunc                InterlockedAdd InterlockedAnd InterlockedCompareExchange InterlockedCompareStore InterlockedExchange InterlockedMax InterlockedMin InterlockedOr InterlockedXor
syn keyword         hlslFunc                Process2DQuadTessFactorsAvg Process2DQuadTessFactorsMax Process2DQuadTessFactorsMin ProcessIsolineTessFactors
syn keyword         hlslFunc                ProcessQuadTessFactorsAvg ProcessQuadTessFactorsMax ProcessQuadTessFactorsMin ProcessTriTessFactorsAvg ProcessTriTessFactorsMax ProcessTriTessFactorsMin
syn keyword         hlslFunc                tex1D tex1Dbias tex1Dgrad tex1Dlod tex1Dproj
syn keyword         hlslFunc                tex2D tex2Dbias tex2Dgrad tex2Dlod tex2Dproj
syn keyword         hlslFunc                tex3D tex3Dbias tex3Dgrad tex3Dlod tex3Dproj
syn keyword         hlslFunc                texCUBE texCUBEbias texCUBEgrad texCUBElod texCUBEproj
syn keyword         hlslFunc                WaveIsFirstLane WaveGetLaneCount WaveGetLaneIndex
syn keyword         hlslFunc                WaveActiveAnyTrue WaveActiveAllTrue WaveActiveBallot
syn keyword         hlslFunc                WaveReadLaneFirst WaveReadLaneAt
syn keyword         hlslFunc                WaveActiveAllEqual WaveActiveAllEqualBool WaveActiveCountBits
syn keyword         hlslFunc                WaveActiveSum WaveActiveProduct WaveActiveBitAnd WaveActiveBitOr WaveActiveBitXor WaveActiveMin WaveActiveMax
syn keyword         hlslFunc                WavePrefixCountBits WavePrefixProduct WavePrefixSum
syn keyword         hlslFunc                QuadReadAcrossX QuadReadAcrossY QuadReadAcrossDiagonal QuadReadLaneAt
syn keyword         hlslFunc                WaveMatch WaveMultiPrefixSum WaveMultiPrefixProduct WaveMultiPrefixCountBits WaveMultiPrefixAnd WaveMultiPrefixOr WaveMultiPrefixXor
syn keyword         hlslFunc                NonUniformResourceIndex
syn keyword         hlslFunc                DispatchMesh SetMeshOutputCounts
syn keyword         hlslFunc                dot4add_u8packed dot4add_i8packed dot2add

syn keyword         hlslFunc                RestartStrip
syn keyword         hlslFunc                CalculateLevelOfDetail CalculateLevelOfDetailUnclamped Gather GetDimensions GetSamplePosition Load Sample SampleBias SampleCmp SampleCmpLevelZero SampleGrad SampleLevel
syn keyword         hlslFunc                WriteSamplerFeedback WriteSamplerFeedbackBias WriteSamplerFeedbackGrad WriteSamplerFeedbackLevel
syn keyword         hlslFunc                Append Consume DecrementCounter IncrementCounter
syn keyword         hlslFunc                Load2 Load3 Load4 Store Store2 Store3 Store4
syn keyword         hlslFunc                GatherRed GatherGreen GatherBlue GatherAlpha GatherCmp GatherCmpRed GatherCmpGreen GatherCmpBlue GatherCmpAlpha
syn match           hlslFunc                /\.mips\[\d\+\]\[\d\+\]/
syn match           hlslFunc                /\.sample\[\d\+\]\[\d\+\]/

" Ray intrinsics
syn keyword         hlslFunc                AcceptHitAndEndSearch CallShader IgnoreHit ReportHit TraceRay
syn keyword         hlslFunc                DispatchRaysIndex DispatchRaysDimensions
syn keyword         hlslFunc                WorldRayOrigin WorldRayDirection RayTMin RayTCurrent RayFlags
syn keyword         hlslFunc                InstanceIndex InstanceID GeometryIndex PrimitiveIndex ObjectRayOrigin ObjectRayDirection ObjectToWorld3x4 ObjectToWorld4x3 WorldToObject3x4 WorldToObject4x3
syn keyword         hlslFunc                HitKind

" RayQuery intrinsics
syn keyword         hlslFunc                TraceRayInline Proceed Abort CommittedStatus
syn keyword         hlslFunc                CandidateType CandidateProceduralPrimitiveNonOpaque CandidateTriangleRayT CandidateInstanceIndex CandidateInstanceID CandidateInstanceContributionToHitGroupIndex CandidateGeometryIndex
syn keyword         hlslFunc                CandidatePrimitiveIndex CandidateObjectRayOrigin CandidateObjectRayDirection CandidateObjectToWorld3x4 CandidateObjectToWorld4x3 CandidateWorldToObject3x4 CandidateWorldToObject4x3
syn keyword         hlslFunc                CommitNonOpaqueTriangleHit CommitProceduralPrimitiveHit CommittedStatus CommittedRayT CommittedInstanceIndex CommittedInstanceID CommittedInstanceContributionToHitGroupIndex
syn keyword         hlslFunc                CommittedGeometryIndex CommittedPrimitiveIndex CommittedObjectRayOrigin CommittedObjectRayDirection CommittedObjectToWorld3x4 CommittedObjectToWorld4x3 CommittedWorldToObject3x4
syn keyword         hlslFunc                CommittedWorldToObject4x3 CandidateTriangleBarycentrics CandidateTriangleFrontFace CommittedTriangleBarycentrics CommittedTriangleFrontFace

" Layout Qualifiers
syn keyword         hlslLayoutQual          const row_major column_major
syn keyword         hlslLayoutQual          point line triangle lineadj triangleadj
syn keyword         hlslLayoutQual          InputPatch OutputPatch
syn match           hlslLayoutQual          /PointStream<\s*\w\+\s*>/
syn match           hlslLayoutQual          /LineStream<\s*\w\+\s*>/
syn match           hlslLayoutQual          /TriangleStream<\s*\w\+\s*>/

" User defined Semantics
syn match           hlslSemantic            /:\s*[A-Z]\w*/
syn match           hlslSemantic            /:\s*packoffset(c\d\+\(\.[xyzw]\)\=)/ " packoffset
syn match           hlslSemantic            /:\s*register(\(r\|x\|v\|t\|s\|cb\|icb\|b\|c\|u\)\d\+)/ " register

" System-Value Semantics
" Vertex Shader
syn match           hlslSemantic            /SV_ClipDistance\d\+/
syn match           hlslSemantic            /SV_CullDistance\d\+/
syn keyword         hlslSemantic            SV_Position SV_InstanceID SV_PrimitiveID SV_VertexID
" Tessellation pipeline
syn keyword         hlslSemantic            SV_DomainLocation SV_InsideTessFactor SV_OutputControlPointID SV_TessFactor
" Geometry Shader
syn keyword         hlslSemantic            SV_GSInstanceID SV_RenderTargetArrayIndex
" Pixel Shader - MSAA
syn keyword         hlslSemantic            SV_Coverage SV_Depth SV_IsFrontFace SV_SampleIndex
syn match           hlslSemantic            /SV_Target[0-7]/
syn keyword         hlslSemantic            SV_ShadingRate SV_ViewID
syn match           hlslSemantic            /SV_Barycentrics[0-1]/
" Compute Shader
syn keyword         hlslSemantic            SV_DispatchThreadID SV_GroupID SV_GroupIndex SV_GroupThreadID
" Mesh shading pipeline
syn keyword         hlslSemantic            SV_CullPrimitive

" HLSL structures
syn keyword         hlslStructure           cbuffer

" Shader profiles
" Cg profiles
syn keyword         hlslProfile             arbfp1 arbvp1 fp20 vp20 fp30 vp30 ps_1_1 ps_1_2 ps_1_3
" Shader Model 1
syn keyword         hlslProfile             vs_1_1
" Shader Model 2
syn keyword         hlslProfile             ps_2_0 ps_2_x vs_2_0 vs_2_x
" Shader Model 3
syn keyword         hlslProfile             ps_3_0 vs_3_0
" Shader Model 4
syn keyword         hlslProfile             gs_4_0 ps_4_0 vs_4_0 gs_4_1 ps_4_1 vs_4_1
" Shader Model 5
syn keyword         hlslProfile             cs_4_0 cs_4_1 cs_5_0 ds_5_0 gs_5_0 hs_5_0 ps_5_0 vs_5_0
" Shader Model 6
syn keyword         hlslProfile             cs_6_0 ds_6_0 gs_6_0 hs_6_0 ps_6_0 vs_6_0 lib_6_0

" Swizzling
syn match           hlslSwizzle             /\.[xyzw]\{1,4\}\>/
syn match           hlslSwizzle             /\.[rgba]\{1,4\}\>/
syn match           hlslSwizzle             /\.\(_m[0-3]\{2}\)\{1,4\}/
syn match           hlslSwizzle             /\.\(_[1-4]\{2}\)\{1,4\}/

" Other Statements
syn keyword         hlslStatement           discard

" Storage class
syn match           hlslStorageClass        /\<in\(\s+pipeline\)\?\>/
syn match           hlslStorageClass        /\<out\(\s\+indices\|\s\+vertices\|\s\+primitives\)\?\>/
syn keyword         hlslStorageClass        inout
syn keyword         hlslStorageClass        extern nointerpolation precise shared groupshared static uniform volatile
syn keyword         hlslStorageClass        snorm unorm
syn keyword         hlslStorageClass        linear centroid nointerpolation noperspective sample
syn keyword         hlslStorageClass        globallycoherent

" Types
" Buffer types
syn keyword         hlslType                ConstantBuffer Buffer ByteAddressBuffer ConsumeStructuredBuffer StructuredBuffer
syn keyword         hlslType                AppendStructuredBuffer RWBuffer RWByteAddressBuffer RWStructuredBuffer
syn keyword         hlslType                RasterizerOrderedBuffer RasterizerOrderedByteAddressBuffer RasterizerOrderedStructuredBuffer

" Scalar types
syn keyword         hlslType                bool int uint dword half float double
syn keyword         hlslType                min16float min10float min16int min12int min16uint

" Vector types
syn match           hlslType                /vector<\s*\w\+,\s*[1-4]\s*>/
syn keyword         hlslType                bool1 bool2 bool3 bool4
syn keyword         hlslType                int1 int2 int3 int4
syn keyword         hlslType                uint1 uint2 uint3 uint4
syn keyword         hlslType                dword1 dword2 dword3 dword4
syn keyword         hlslType                half1 half2 half3 half4
syn keyword         hlslType                float1 float2 float3 float4
syn keyword         hlslType                double1 double2 double3 double4
syn keyword         hlslType                min16float1 min16float2 min16float3 min16float4
syn keyword         hlslType                min10float1 min10float2 min10float3 min10float4
syn keyword         hlslType                min16int1 min16int2 min16int3 min16int4
syn keyword         hlslType                min12int1 min12int2 min12int3 min12int4
syn keyword         hlslType                min16uint1 min16uint2 min16uint3 min16uint4

" Matrix types
syn match           hlslType                /matrix<\s*\w\+\s*,\s*[1-4]\s*,\s*[1-4]\s*>/
syn keyword         hlslType                bool1x1 bool2x1 bool3x1 bool4x1 bool1x2 bool2x2 bool3x2 bool4x2 bool1x3 bool2x3 bool3x3 bool4x3 bool1x4 bool2x4 bool3x4 bool4x4
syn keyword         hlslType                int1x1 int2x1 int3x1 int4x1 int1x2 int2x2 int3x2 int4x2 int1x3 int2x3 int3x3 int4x3 int1x4 int2x4 int3x4 int4x4
syn keyword         hlslType                uint1x1 uint2x1 uint3x1 uint4x1 uint1x2 uint2x2 uint3x2 uint4x2 uint1x3 uint2x3 uint3x3 uint4x3 uint1x4 uint2x4 uint3x4 uint4x4
syn keyword         hlslType                dword1x1 dword2x1 dword3x1 dword4x1 dword1x2 dword2x2 dword3x2 dword4x2 dword1x3 dword2x3 dword3x3 dword4x3 dword1x4 dword2x4 dword3x4 dword4x4
syn keyword         hlslType                half1x1 half2x1 half3x1 half4x1 half1x2 half2x2 half3x2 half4x2 half1x3 half2x3 half3x3 half4x3 half1x4 half2x4 half3x4 half4x4
syn keyword         hlslType                float1x1 float2x1 float3x1 float4x1 float1x2 float2x2 float3x2 float4x2 float1x3 float2x3 float3x3 float4x3 float1x4 float2x4 float3x4 float4x4
syn keyword         hlslType                double1x1 double2x1 double3x1 double4x1 double1x2 double2x2 double3x2 double4x2 double1x3 double2x3 double3x3 double4x3 double1x4 double2x4 double3x4 double4x4
syn keyword         hlslType                min16float1x1 min16float2x1 min16float3x1 min16float4x1 min16float1x2 min16float2x2 min16float3x2 min16float4x2 min16float1x3 min16float2x3 min16float3x3 min16float4x3 min16float1x4 min16float2x4 min16float3x4 min16float4x4
syn keyword         hlslType                min10float1x1 min10float2x1 min10float3x1 min10float4x1 min10float1x2 min10float2x2 min10float3x2 min10float4x2 min10float1x3 min10float2x3 min10float3x3 min10float4x3 min10float1x4 min10float2x4 min10float3x4 min10float4x4
syn keyword         hlslType                min16int1x1 min16int2x1 min16int3x1 min16int4x1 min16int1x2 min16int2x2 min16int3x2 min16int4x2 min16int1x3 min16int2x3 min16int3x3 min16int4x3 min16int1x4 min16int2x4 min16int3x4 min16int4x4
syn keyword         hlslType                min12int1x1 min12int2x1 min12int3x1 min12int4x1 min12int1x2 min12int2x2 min12int3x2 min12int4x2 min12int1x3 min12int2x3 min12int3x3 min12int4x3 min12int1x4 min12int2x4 min12int3x4 min12int4x4
syn keyword         hlslType                min16uint1x1 min16uint2x1 min16uint3x1 min16uint4x1 min16uint1x2 min16uint2x2 min16uint3x2 min16uint4x2 min16uint1x3 min16uint2x3 min16uint3x3 min16uint4x3 min16uint1x4 min16uint2x4 min16uint3x4 min16uint4x4

" Sampler types
syn keyword         hlslType                SamplerState SamplerComparisonState
syn keyword         hlslType                sampler sampler1D sampler2D sampler3D samplerCUBE sampler_state

" Texture types
syn keyword         hlslType                Texture1D Texture1DArray Texture2D Texture2DArray Texture2DMS Texture2DMSArray Texture3D TextureCube TextureCubeArray
syn keyword         hlslType                RWTexture1D RWTexture2D RWTexture2DArray RWTexture3D RWTextureCubeArray
syn keyword         hlslType                FeedbackTexture2D FeedbackTexture2DArray
syn keyword         hlslType                RasterizerOrderedTexture1D RasterizerOrderedTexture1DArray RasterizerOrderedTexture2D RasterizerOrderedTexture2DArray RasterizerOrderedTexture3D
syn keyword         hlslTypeDeprec          texture texture1D texture2D texture3D

" Raytracing types
syn keyword         hlslType                RaytracingAccelerationStructure RayDesc RayQuery BuiltInTriangleIntersectionAttributes

" State Groups args
syn case ignore " This section case insensitive

" Blend state group
syn keyword         hlslStateGroupArg       AlphaToCoverageEnable BlendEnable SrcBlend DestBlend BlendOp SrcBlendAlpha DestBlendAlpha BlendOpAlpha RenderTargetWriteMask
syn keyword         hlslStateGroupVal       ZERO ONE SRC_COLOR INV_SRC_COLOR SRC_ALPHA INV_SRC_ALPHA DEST_ALPHA INV_DEST_ALPHA DEST_COLOR INV_DEST_COLOR SRC_ALPHA_SAT BLEND_FACTOR INV_BLEND_FACTOR SRC1_COLOR INV_SRC1_COLOR SRC1_ALPHA INV_SRC1_ALPHA
syn keyword         hlslStateGroupVal       ADD SUBSTRACT REV_SUBSTRACT MIN MAX

" Rasterizer state group
syn keyword         hlslStateGroupArg       FillMode CullMode FrontCounterClockwise DepthBias DepthBiasClamp SlopeScaledDepthBias ZClipEnable DepthClipEnable ScissorEnable MultisampleEnable AntialiasedLineEnable
syn keyword         hlslStateGroupVal       SOLID WIREFRAME
syn keyword         hlslStateGroupVal       NONE FRONT BACK

" Sampler state group
syn keyword         hlslStateGroupArg       Filter AddressU AddressV AddressW MipLODBias MaxAnisotropy ComparisonFunc BorderColor MinLOD MaxLOD ComparisonFilter
syn keyword         hlslStateGroupVal       MIN_MAG_MIP_POINT MIN_MAG_POINT_MIP_LINEAR MIN_POINT_MAG_LINEAR_MIP_POINT MIN_POINT_MAG_MIP_LINEAR MIN_LINEAR_MAG_MIP_POINT MIN_LINEAR_MAG_POINT_MIP_LINEAR MIN_MAG_LINEAR_MIP_POINT MIN_MAG_MIP_LINEAR ANISOTROPIC
syn keyword         hlslStateGroupVal       COMPARISON_MIN_MAG_MIP_POINT COMPARISON_MIN_MAG_POINT_MIP_LINEAR COMPARISON_MIN_POINT_MAG_LINEAR_MIP_POINT COMPARISON_MIN_POINT_MAG_MIP_LINEAR COMPARISON_MIN_LINEAR_MAG_MIP_POINT
syn keyword         hlslStateGroupVal       COMPARISON_MIN_LINEAR_MAG_POINT_MIP_LINEAR COMPARISON_MIN_MAG_LINEAR_MIP_POINT COMPARISON_MIN_MAG_MIP_LINEAR COMPARISON_ANISOTROPIC
syn keyword         hlslStateGroupVal       COMPARISON_NEVER COMPARISON_LESS COMPARISON_EQUAL COMPARISON_LESS_EQUAL COMPARISON_GREATER COMPARISON_NOT_EQUAL COMPARISON_GREATER_EQUAL COMPARISON_ALWAYS
syn keyword         hlslStateGroupVal       WRAP MIRROR CLAMP BORDER MIRROR_ONCE
syn keyword         hlslStateGroupVal       SAMPLER_FEEDBACK_MIN_MIP SAMPLER_FEEDBACK_MIP_REGION_USED

" Ray flags
syn keyword         hlslStateGroupVal       RAY_FLAG_NONE RAY_FLAG_FORCE_OPAQUE RAY_FLAG_FORCE_NON_OPAQUE RAY_FLAG_ACCEPT_FIRST_HIT_AND_END_SEARCH RAY_FLAG_SKIP_CLOSEST_HIT_SHADER
syn keyword         hlslStateGroupVal       RAY_FLAG_CULL_BACK_FACING_TRIANGLES RAY_FLAG_CULL_FRONT_FACING_TRIANGLES RAY_FLAG_CULL_OPAQUE RAY_FLAG_CULL_NON_OPAQUE
syn keyword         hlslStateGroupVal       RAY_FLAG_SKIP_TRIANGLES RAY_FLAG_SKIP_PROCEDURAL_PRIMITIVES

" HitKind enum
syn keyword         hlslStateGroupVal       HIT_KIND_TRIANGLE_FRONT_FACE HIT_KIND_TRIANGLE_BACK_FACE

" RayQuery enums
syn keyword         hlslStateGroupVal       COMMITTED_NOTHING COMMITTED_TRIANGLE_HIT COMMITTED_PROCEDURAL_PRIMITIVE_HIT
syn keyword         hlslStateGroupVal       CANDIDATE_NON_OPAQUE_TRIANGLE CANDIDATE_PROCEDURAL_PRIMITIVE

" Heap objects
syn keyword         hlslStateGroupVal       ResourceDescriptorHeap SamplerDescriptorHeap

syn case match " Case sensitive from now on

" Effect files declarations and functions
" Effect groups, techniques passes
syn keyword         hlslEffectGroup         fxgroup technique11 pass
" Effect functions
syn keyword         hlslEffectFunc          SetBlendState SetDepthStencilState SetRasterizerState SetVertexShader SetHullShader SetDomainShader SetGeometryShader SetPixelShader SetComputeShader CompileShader ConstructGSWithSO SetRenderTargets

" Default highlighting
if version >= 508 || !exists("did_hlsl_syntax_inits")
  if version < 508
    let did_hlsl_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink hlslProfile        hlslStatement
  HiLink hlslStateGroupArg  hlslStatement
  HiLink hlslStateGroupVal  Number
  HiLink hlslStatement      Statement
  HiLink hlslType           Type
  HiLink hlslTypeDeprec     WarningMsg
  HiLink hlslStorageClass   StorageClass
  HiLink hlslSemantic       PreProc
  HiLink hlslFunc           hlslStatement
  HiLink hlslLayoutQual     hlslFunc
  HiLink hlslAnnotation     PreProc
  HiLink hlslStructure      Structure
  HiLink hlslSwizzle        SpecialChar
  HiLink hlslAttribute      Statement

  HiLink hlslEffectGroup    Type
  HiLink hlslEffectFunc     Statement
  delcommand HiLink
endif

let b:current_syntax = "hlsl"
