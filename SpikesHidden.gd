extends Area

func _on_Spikes_body_entered(body):
    if body.has_method("take_damage"):
        body.take_damage()

var velocity = Vector3()
var jump_speed = 12
var can_move = true

func take_damage():
    velocity *= -1
    velocity.y = jump_speed
    can_move = false
    yield(get_tree().create_timer(1), "timeout")
    can_move = true
