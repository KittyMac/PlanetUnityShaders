Shader "PlanetUnity/DepthMask/Set" {
    SubShader {
        Tags {"Queue"="Transparent" }
        Lighting Off
        ZTest Always
        ZWrite On
        ColorMask 0
		Offset 0, -100
        Pass {}
    }
}
