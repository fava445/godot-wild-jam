extends StaticBody2D
func _process(delta):
	if Global.ButtonPressed == true:
		$CollisionShape2D.disabled = true
		$AnimatedSprite2D.play("open")
	if Global.ButtonPressed == false:
		$CollisionShape2D.disabled = false
		$AnimatedSprite2D.play("closed")
