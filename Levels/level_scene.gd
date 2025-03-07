extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var follow_area: Area2D = $Path2D/FollowPath/FollowArea


var on_timer:bool = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	On_Countdown()
	
	
func On_Countdown() -> void:
	if on_timer:
		player.global_position = follow_area.global_position
		
func _on_level_start_timer_timeout() -> void:
	on_timer = false
	print("Start");


func _on_follow_area_body_exited(body: Node2D) -> void: #follow Area logic
	if body == player:
		print("die");
		player.queue_free()
		get_tree().call_group("Ant", "show_exclamation") #turns the exclamation off after the player is dead
		
func _on_warning_area_body_exited(body: Node2D) -> void: #Warning Area Logic
	if body == player:
		get_tree().call_group("Ant", "show_exclamation") #connects to the function in ant and toggles exclamation mark

func _on_warning_area_body_entered(body: Node2D) -> void:
	if body == player:
		get_tree().call_group("Ant", "show_exclamation")
