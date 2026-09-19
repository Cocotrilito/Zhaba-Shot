shader_type canvas_item;

uniform float blur_amount : hint_range(0.0, 0.2) = 0.0;

void fragment() {
	vec4 color = vec4(0.0);
	int samples = 8;
	for (int i = 0; i < samples ; i++) {
		float offset = float(i) / float(samples) - 0.5;
		color += texture(TEXTURE, UV + vec2(offset * blur_amount, 0.0));
	
	}
	COLOR = color / float(samples);
}
