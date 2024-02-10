extends StaticBody2D

func _on_area_2d_body_entered(body):
	if Global.ButtonPressed == false:
		Global.ButtonPressed = true
		print("OH MY GOD DEEPER DADDY DEEPER")
	print(Global.ButtonPressed)
