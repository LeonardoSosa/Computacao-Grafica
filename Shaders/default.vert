#version 330 core

layout (location = 0) in vec3 aPos;		// Positions/Coordinates
layout (location = 1) in vec3 aColor;	// Colors
layout (location = 2) in vec2 aTex;		// Texture Coordinates
layout (location = 3) in vec3 aNormal;	// Normals (not necessarily normalized)

out vec3 color;
out vec2 texCoord;
out vec3 Normal;
out vec3 crntPos;

uniform mat4 camMatrix;
uniform mat4 model;


void main()
{
	crntPos = vec3(model * vec4(aPos, 1.0f));
	gl_Position = camMatrix * vec4(crntPos, 1.0);

	color = aColor;
	texCoord = aTex;
	Normal = aNormal;
}