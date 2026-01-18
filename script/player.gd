extends CharacterBody2D

var max_speed = 100
var last_direction := Vector2(1,0)

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * max_speed
	move_and_slide()
	
	if direction.length() > 0:
		last_direction = direction
		
	func play_walk_animation(direction):
		if direction.x > 0:
			$AnimatedSprite2D.play("walk_right")
		elif direction.x < 0:
			$AnimatedSprite2D.play("walk_left")
		elif direction.y > 0:
			$AnimatedSprite2D.play("walk_down")
		elif direction.y < 0:
			$AnimatedSprite2D.play("walk_up")
