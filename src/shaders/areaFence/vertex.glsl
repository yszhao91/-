export default "#define GLSLIFY 1\nvarying vec3 vPosition;\nvarying vec3 vModelPosition;\nvarying vec2 vUv;\n\nvoid main()\n{\n    vec4 modelPosition = modelMatrix * vec4(position, 1.0);\n    gl_Position = projectionMatrix * viewMatrix * modelPosition;\n\n    vPosition = position.xyz;\n    vModelPosition = modelPosition.xyz;\n    vUv = uv;\n}\n";