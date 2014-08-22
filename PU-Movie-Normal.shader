Shader "PlanetUnity/Movie/Normal"
{
	Properties
	{
		_Color ("Main Color", Color) = (1, 1, 1, 1)
		_Alpha ("Fade Alpha", Float) = 1
		_MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
	}
	SubShader
	{
		Tags {
			"Queue"="Transparent"
			"IgnoreProjector"="True"
			"RenderType"="Transparent"
			"ForceNoShadowCasting"="True"
			"PreviewType"="Plane"
		}
		Cull Off
		ZTest Off
		ZWrite Off
    	Blend SrcAlpha OneMinusSrcAlpha
		Fog { Mode Off }

		Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "PU-Movie.cginc"
			ENDCG
		}
	}
}
