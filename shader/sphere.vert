#version 330

uniform mat4 modelview_projection_uni;

in vec3 vertex_attr;
in vec3 uv_attr;

out vec3 uv_var;
out vec3 position_var;

void main(void)
{
	uv_var = uv_attr;
	position_var = vertex_attr;
	gl_Position = modelview_projection_uni * vec4(vertex_attr, 1.0);
}