extends StaticBody2D

@onready var travelDistance = 100
@onready var intialHeight = position.y
@onready var targetHeight = position.y - travelDistance
@onready var up = true
@onready var elevatorSpeed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.y > targetHeight and up:
		position.y -= elevatorSpeed * delta
	elif !up and position.y < intialHeight:
		position.y += elevatorSpeed * delta
	else:
		up = !up
		
	pass
