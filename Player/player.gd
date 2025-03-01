extends CharacterBody2D

const SPEED: float = 10

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()
	
	
func get_input() -> void:
	var input_direction = Input.get_vector("Left","Right","Up","Down");
	velocity = input_direction * SPEED
	
