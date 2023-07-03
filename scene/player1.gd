extends KinematicBody2D    # 继承KinematicBody2D节点

export var speed = 260    # 设定角色移动速度

var motion = Vector2()      # 用于保存角色移动的向量
onready var sprite = $Sprite



func _ready():
	pass                   # 当节点第一次加载时执行的函数

func _physics_process(delta):
	motion.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	motion.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	motion = motion.normalized()   # 将motion向量进行归一化，以保证角色在斜向移动时速度不会更快
	
	if motion.length() == 0:
		sprite.play("idle")
	else:
		sprite.play("walk")
		$Sprite.flip_h = motion.x<0
	
	motion *= speed          # 根据角色速度来缩放motion向量
	motion = move_and_slide(motion)  # 使用move_and_slide()函数来将角色移动
