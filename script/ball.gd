extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _input(event):
	#if event is InputEventMouseButton:
		#print("Touch")
	#elif event is InputEventMouseMotion:
			#print("Drag")
	pass		
			
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		if(event.is_pressed()):
			print("Clicked")			

