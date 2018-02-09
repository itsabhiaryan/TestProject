extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	
	
	for i in range(4):
		var mySprite = preload("res://Area2D.tscn").instance()
		#print(get_child_count())
		add_child(mySprite)
		
		#print(mySprite.get("col"))
		mySprite.position.x=i*80+40
		#print(get_child_count())
		mySprite.set("col",i)
		print(mySprite.get("col"))
		
#		var effect = mySprite.get_node("Tween")
#		effect.interpolate_property(mySprite, "position", mySprite.position, mySprite.position+Vector2(100,0), 1, Tween.TRANS_LINEAR, Tween.EASE_IN)
#		effect.start()
		
		print("loop")
		
	var particle=Particles2D.new()
	particle.position=Vector2(100,100)
	add_child(particle)	
	
	print("hi")
	#get_node("audio").play()
	 

	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
