extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -700.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction == 1:
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("walk")
		
	elif direction == -1:
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("walk")
	else:
		$AnimatedSprite2D.stop()	
		
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
#extends CharacterBody2D
#
#
#const SPEED = 500.0
#const JUMP_VELOCITY = -775.0
#
## Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
#
#var animation_player
#var start_pos
#func _ready():
	#animation_player = get_node("AnimationPlayer")
	#start_pos = position
#
#func _physics_process(delta):
	## Add the gravity.
	#if not is_on_floor():
		#velocity.y += gravity * delta
#
	## Handle jump.
	#
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#
	#if direction == 1:
		#$AnimatedSprite2D.flip_h = false
	#if direction == -1:
		#$AnimatedSprite2D.flip_h = true
		#
	#if direction:
		#velocity.x = direction * SPEED
		#
		##if is_on_floor():
			##animation_player.play("walk")
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		##if is_on_floor():
			##animation_player.play("idle")
#
	#if Input.is_action_just_pressed("jump") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
		##animation_player.play("jump")
	#move_and_slide()
