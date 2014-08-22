#ifndef PU_ALPHAMOVIE_INCLUDED
#define PU_ALPHAMOVIE_INCLUDED

struct appdata
{
	float4 vertex : POSITION;
	float4 color : COLOR;
	float2 texcoord : TEXCOORD0;
};
struct v2f
{
	float4 pos : SV_POSITION;
	fixed4 color : COLOR;
	float2 texcoord1 : TEXCOORD0;
	float2 texcoord2 : TEXCOORD1;
};

sampler2D _MainTex;
uniform float4 _MainTex_ST;
uniform fixed4 _Color;
uniform float _Alpha;

v2f vert (appdata v)
{
	v2f o;
	o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
	o.color = v.color*_Color*float4(1,1,1,_Alpha);
	o.texcoord1 = float2(v.texcoord.x*0.5, v.texcoord.y);
	o.texcoord2 = float2(v.texcoord.x*0.5+0.5, v.texcoord.y);
	return o;
}

half4 frag(v2f i) : COLOR
{
	half4 color = tex2D(_MainTex, i.texcoord1) * i.color;
	color.a = tex2D(_MainTex, i.texcoord2).r;
	return color;
}

#endif