extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var col=0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.is_pressed() :
		print("%s  %d"%["Clicked",col])
		var tween=Tween.new()
		add_child(tween)
		print("Inside")
		tween.interpolate_property(self,"position",position,position+Vector2(0,100),1,Tween.TRANS_LINEAR,Tween.EASE_IN)	
		tween.interpolate_property(self, "modulate", Color(1, 1, 1, 1), Color(1, 1, 1, 0), 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN)
		tween.start()
		get_node("audio").play()
	pass
	#if event is InputEventMouseMotion:
	#	position=event.global_position
		#set_global_pos(event.global_position)	