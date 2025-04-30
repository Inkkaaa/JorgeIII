extends AnimatedSprite2D

const speed = 60

var direction = 1

@onready var ray_cast_e: RayCast2D = $RayCast_E
@onready var ray_cast_d: RayCast2D = $RayCast_D
@onready var animated_sprite: AnimatedSprite2D = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_d.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_e.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * speed * delta
