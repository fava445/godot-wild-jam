extends CharacterBody2D
const MIN_SPEED = -30
const MAX_SPEED = 30
const SPEED_LOSS = -5
const SPEED_GAIN = 20
var SpeedY = 0
var SpeedX = 0
func _process(delta):
	playerMovement()



func playerMovement():
	if Input.is_action_pressed("Down"):
		self.position.y += 2
	if Input.is_action_pressed("Up"):
		self.position.y -= 2
	if Input.is_action_pressed("Left"):
		if not Input.is_action_pressed("Right"):
			self.position.x -= 2
	if Input.is_action_pressed("Right"):
		if not Input.is_action_pressed("Left"):	
			self.position.x += 2
	move_and_slide()
