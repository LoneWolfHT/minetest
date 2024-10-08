uniform lowp vec4 materialColor;

varying lowp vec4 varColor;

varying highp vec3 eyeVec;

void main(void)
{
	gl_Position = mWorldViewProj * inVertexPosition;

#ifdef GL_ES
	vec4 color = inVertexColor.bgra;
#else
	vec4 color = inVertexColor;
#endif

	color *= materialColor;
	varColor = color;

	eyeVec = -(mWorldView * inVertexPosition).xyz;
}
