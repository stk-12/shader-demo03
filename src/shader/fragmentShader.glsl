varying vec2 vUv;

uniform float uTime;

void main() {
  vec2 uv = vUv;
  // vec3 color = vec3(uv.x, uv.y, 0.5);
  // vec3 color = vec3(uv.x + sin(uTime * 0.5) * 0.1, uv.y + cos(uTime * 2.0) * 0.1, 0.7);
  vec3 color = vec3(uv.x + sin(uTime * 1.5) / (uv.y - 0.5), uv.y + cos(uTime * 1.5) / (uv.x - 0.5), 0.6);

  // gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
  gl_FragColor = vec4(color, 1.0);
}