extends AnimatedSprite2D

@onready var exclamation_mark: Sprite2D = $"Exclamation-mark"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Ant")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func show_exclamation() -> void:
	exclamation_mark.visible = !exclamation_mark.visible
	
