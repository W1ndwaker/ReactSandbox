#version 330

layout(location = 0) in vec3 position;

uniform mat4 modelMatrix;
uniform mat4 cameraMatrix;
uniform mat4 projectionMatrix;

void main() {
    gl_Position = projectionMatrix * cameraMatrix * modelMatrix * vec4(position, 1);
}