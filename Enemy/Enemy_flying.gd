extends KinematicBody2D

var player = null
onready var ray = $RayCast2D
export var speed = 0
export var looking_speed = 100
export var damage = 10

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.do_damage(damage)
