#ifndef PU_LABEL_INCLUDED
#define PU_LABEL_INCLUDED

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
	float2 texcoord : TEXCOORD0;
};

sampler2D _MainTex;
uniform float4 _MainTex_ST;
uniform fixed4 _Color;

v2f vert (appdata v)
{
	v2f o;
	o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
	o.color = v.color*_Color;
	o.texcoord = v.texcoord;
	return o;
}

half4 frag(v2f i) : COLOR
{
	fixed4 col = i.color;
	col.a *= tex2D(_MainTex, i.texcoord).a;
	return col;
}

#endif