extends StaticBody2D

func _on_area_2d_body_entered(body):

	Global.ButtonPressed = true
	print("OH MY GOD DEEPER DADDY DEEPER")
	print(Global.ButtonPressed)



func _on_area_2d_body_exited(body):
	Global.ButtonPressed = false
	print("OH MY GOD DADDY THATS WAY TO DEEP")
	print(Global.ButtonPressed)
