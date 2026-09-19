shader_type canvas_item;

uniform float noise_amount : hint_range(0.0, 0.1) = 0.0;
uniform float brightness_value : hint_range(0.0, 2.0) = 1.0;
uniform float blur_amount : hint_range(0.0, 0.2) = 0.0;

float random(vec2 uv) {
	return fract(sin(dot(uv, vec2(12.9898, 78.233))) * 43758.5453123);
}

void fragment() {
	vec4 color = vec4(0.0);
	int samples = 8;
	for (int i = 0; i < samples ; i++) {
		float offset = float(i) / float(samples) - 0.5;
		color += texture(TEXTURE, UV + vec2(offset * blur_amount, 0.0));
	
	}
	color = color / float(samples);
	color = vec4(color.rgb * brightness_value, color.a);
	
	float noise = random(UV) * noise_amount;
	color.rgb += vec3(noise - noise_amount / 2.0);
	
	COLOR = color;
}
