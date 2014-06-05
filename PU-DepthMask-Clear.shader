Shader "PlanetUnity/DepthMask/Clear" {
    SubShader {
        Tags {"Queue"="Transparent" }
        Lighting Off
        ZTest Always
        ZWrite On
        ColorMask 0
		Offset 0, 100
        Pass {}
    }
}
