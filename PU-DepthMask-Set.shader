Shader "PlanetUnity/DepthMask/Set" {
    SubShader {
        Tags {"Queue"="Transparent" }
        Lighting Off
        ZTest NotEqual
        ZWrite On
        ColorMask 0
		Offset -10, -10
        Pass {}
    }
}
