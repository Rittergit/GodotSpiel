extends KinematicBody2D

const UP = Vector2(0,-1)
var motion = Vector2()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	motion.y += 10
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	else: 
		motion.x = 0
	move_and_slide(motion, UP)
	
	if is_on_floor():
		motion.y = 0
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -400
	pass

