extends PathFollow2D


@export var speed: float = 40.0  # Speed of movement
@export var offset_delay: float = 30.0  # Delay between objects

var target_progress = 0.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	target_progress += speed * delta  # Move forward
	progress = target_progress  # Set the current object's position

	# If multiple objects exist, adjust their offsets
	for i in range(get_parent().get_child_count()):
		var follower = get_parent().get_child(i)
		if follower is PathFollow2D:
			follower.progress = target_progress - (i * offset_delay)
			#print("Follower ", i, " progress: ", follower.progress)
