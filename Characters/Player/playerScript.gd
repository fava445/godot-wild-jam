extends CharacterBody2D
const MIN_SPEED = -30
const MAX_SPEED = 30
const SPEED_LOSS = -5
const SPEED_GAIN = 20
var SpeedY = 0
var SpeedX = 0
var move = Vector2d.ZERO
func _process(delta):
	playerMovement()




func playerMovement():
	move = Vector2d.ZERO
	if Input.is_action_pressed("Down") and not Input.is_action_pressed("Up"):
		move.y = 2
	if Input.is_action_pressed("Up") and not Input.is_action_pressed("Down"):
		move.y = -2
	if Input.is_action_pressed("Left") and not Input.is_action_pressed("Right"):
		move.x = -2
	if Input.is_action_pressed("Right") and not not Input.is_action_pressed("Left"):	
		move.x = 2
	move_and_slide(move)
