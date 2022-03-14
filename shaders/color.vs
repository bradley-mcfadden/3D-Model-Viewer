#version 330 core

layout (location = 0) in vec3 aPos; // position variable w attribute position 0
layout (location = 1) in vec3 aNorm; // normal vector

uniform mat4 viewMatrix;
uniform vec3 ourColor; // specify a color output to the fragment shader

// Lighting
uniform vec3 lightPos;
uniform vec3 ambientLight, specularLight, diffuseLight;
uniform int shininess;

out vec3 ptColor;
out vec3 ptNorm;

void main()
{
    gl_Position = viewMatrix * vec4(aPos, 1.0); // convert aPos to homogoneous coordinates
    ptNorm = vec3(aNorm);
    int shininess = 1;

    vec3 ambient = ambientLight;

    int numColors = 8;
    vec3 lightNorm = round(normalize(lightPos.xyz - aPos.xyz) * numColors) / numColors;
    float d = max(dot(lightNorm, ptNorm), 0);
    vec3 diffuse = round(diffuseLight * d * numColors) / numColors;

    vec3 halfway = normalize(lightNorm - normalize(aPos));
    float s = max(-pow(max(dot(ptNorm, halfway), 0.0), shininess), 0.0);
    vec3 specular = round(s * specularLight * numColors) / numColors;

    ptColor = (ambient.xyz + diffuse.xyz + specular.xyz) * ourColor;
}