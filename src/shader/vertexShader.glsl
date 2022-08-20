varying vec2 vUv;

uniform float uTime;

void main() {
  vUv = uv;
  vec3 pos = position;

  // pos.y = ( pos.y * 0.2 ) + sin( pos.x * 2.0 ) * 0.2;

  // gl_Position = vec4(position, 1.0);
  gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
}