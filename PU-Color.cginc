#ifndef PU_COLOR_INCLUDED
#define PU_COLOR_INCLUDED

fixed4 _Color;
float _Alpha;
struct appdata
{
	float4 vertex : POSITION;
	float4 color : COLOR;
};
struct v2f
{
	float4 pos : SV_POSITION;
	fixed4 color : COLOR;
};
v2f vert (appdata v)
{
	v2f o;
	o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
	o.color = _Color * float4(1,1,1,_Alpha);
	return o;
}
half4 frag(v2f i) : COLOR
{
	return i.color;
}

#endif