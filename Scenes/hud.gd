extends CanvasLayer

@export var healthComponent:Node2D
@export var lifesUI:Label

func _process(delta: float) -> void:
	lifesUI.text = str("Vidas: " + str(healthComponent.maxHealth))
	print(healthComponent.maxHealth)
	pass
