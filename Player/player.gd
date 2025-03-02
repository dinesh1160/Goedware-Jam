extends CharacterBody2D

const SPEED: float = 45

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()
	
	
func get_input() -> void:
	var input_direction = Input.get_vector("Left","Right","Up","Down"); #Vector for input vector
	velocity = input_direction * SPEED
	
