extends Node2D

@export var character:CharacterBody2D
@export var life:bool
@export var maxHealth:int
@export var disapear:bool
@export var attackComponent : AttackComponent


func _process(delta: float) -> void:
	HasLife()
	print(maxHealth)

func HasLife():
	if life == true:
		if maxHealth == 0:
			CharacterDie()
	else:
		pass

func CharacterDie():
	if disapear == true and character != null:
		character.queue_free()
	else:
		pass

func Damage(attack):
	if attackComponent != null:
		attack = attackComponent.attackDamage
		maxHealth = maxHealth - attack
