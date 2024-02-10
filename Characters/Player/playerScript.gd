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
	self.position.y += SpeedY
	self.position.x += SpeedX
	if Input.is_action_pressed("Down") and SpeedY <= MAX_SPEED:
		SpeedY += SPEED_GAIN
	if Input.is_action_pressed("Up") and SpeedY >= MIN_SPEED:
		SpeedY -= SPEED_GAIN
	if Input.is_action_pressed("Right") and SpeedX <= MAX_SPEED:
		SpeedX += SPEED_GAIN
	if Input.is_action_pressed("Left") and SpeedX <= MAX_SPEED:
		SpeedX -= SPEED_GAIN
	if SpeedX <= MIN_SPEED or SpeedY <= MIN_SPEED :
		SpeedX = -30
		SpeedY = -30
	if SpeedX >= MAX_SPEED or SpeedY >= MAX_SPEED:
		SpeedX = 30
		SpeedY = 30
	if not SpeedY == 0:
		if SpeedY > 0:
			SpeedY += SPEED_LOSS
		if SpeedY < 0:
			SpeedY -= SPEED_LOSS
	if not SpeedX == 0:
		if SpeedX > 0:
			SpeedX += SPEED_LOSS
		if SpeedX < 0:
			SpeedX -= SPEED_LOSS
