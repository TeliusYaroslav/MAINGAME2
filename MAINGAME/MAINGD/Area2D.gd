#extends Area2D
#var count_coins = 0
#var label
#var level : Node2D
#
#
#func _ready():
	#label = get_node("../coins")
	#level = get_node('..')
	#for i in level.get_child_count():
		#if level.get_child(i).is_in_group("Coins"):
			#count_coins += 1 
	#
#
#func _on_body_entered(body):
	#if body.name == "GG":
		#var now_coins = int(label.get_text())
		#print(count_coins)
		#queue_free()
		#now_coins += 1# Replace with function body.
