GDPC                `
                                                                         T   res://.godot/exported/133200997/export-1fbcc6ebd6e718d2c988cf34e64f4b81-paddle.scn  �            3,��6�.̒H��ln�e    P   res://.godot/exported/133200997/export-2ddd04d543d5858e7f20c9299a8b5096-main.scn�      r      /��{��
�+tE�    P   res://.godot/exported/133200997/export-36adcf9c7dcf04e51b15eac376477cde-edge.scn@      �      �l�2�
��ξ��SN>    P   res://.godot/exported/133200997/export-394aeccd7d7daf05a5efc5be101e4ae2-ball.scn�      �      ���`��e0��vi|    P   res://.godot/exported/133200997/export-4f62ab20f4ccf50badf9090e15390996-UI.scn  �             ����":�z�3�� �<    P   res://.godot/exported/133200997/export-f86cde06fc12a7e1edf600d83efc443a-Wall.scn &      n      22x�z��%ݼlv�٦    ,   res://.godot/global_script_class_cache.cfg  �9      �       ^�ZO�-�7�d��    D   res://.godot/imported/ball.png-1953c7d658a9d52aab6b71a2f962f6ac.ctex        ^       ��� 4�g�,ۖ��    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexp)      �      �Yz=������������    P   res://.godot/imported/paddle_or_wall.png-33df4c10bb76c4db7db72940ec46835d.ctex  0      ^       ������a�Y����Y:    T   res://.godot/imported/pingPongDottedLine.png-1f24986852adc3267d906d4a0d1c53f6.ctex  `      z       W��\�0�ނ����b       res://.godot/uid_cache.bin  p>      m      �Hji�LQ���T:"       res://Assets/ball.png.import`       �       q.�[���8
|L���    (   res://Assets/paddle_or_wall.png.import  �      �       �>Ӧ �i��!)r    ,   res://Assets/pingPongDottedLine.png.import  �      �       �}�bz�P��zο@        res://Scenes/Paddles/Paddle.gd  �            i�R������X=Z    $   res://Scenes/Paddles/enemy_paddle.gd�      �       ́��ϙ��?W�]    (   res://Scenes/Paddles/paddle.tscn.remap   7      c       "��xvE0��kѶ��}       res://Scenes/UI.gd        �      �~����z��L�e�       res://Scenes/UI.tscn.remap  �8      _       s=0�"�"�X�~�f{�       res://Scenes/Wall.tscn.remap@9      a       !{�+oSz"�y�*7"       res://Scenes/ball.gd�	            ��}l��	��?6�y.��       res://Scenes/ball.tscn.remap�7      a       �;�G�G?�i�<���       res://Scenes/edge.gd�      �       C�B�M���Ⱥ�M`�/       res://Scenes/edge.tscn.remap 8      a       ���>�)��q�� �       res://Scenes/main.gd�      �      U���p���k��~�       res://Scenes/main.tscn.remapp8      a       F�����X�����       res://icon.svg  �:      �      C��=U���^Qu��U3       res://icon.svg.import   P6      �       ����N=GE�r2j��       res://project.binary�?      �      ��6����ʷv���    GST2              ����                          &   RIFF   WEBPVP8L   /� ���������  8�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://caltgsvcjcmyh"
path="res://.godot/imported/ball.png-1953c7d658a9d52aab6b71a2f962f6ac.ctex"
metadata={
"vram_texture": false
}
 �(�W{�,G�镋GST2             ����                         &   RIFF   WEBPVP8L   /�? ���������  +�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dsdgkfveye78v"
path="res://.godot/imported/paddle_or_wall.png-33df4c10bb76c4db7db72940ec46835d.ctex"
metadata={
"vram_texture": false
}
 ��GST2              ����                          B   RIFF:   WEBPVP8L.   /�0��?��pE�$)���!��czG�h��*/ ��U�t����P[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://uged5e8m1mlj"
path="res://.godot/imported/pingPongDottedLine.png-1f24986852adc3267d906d4a0d1c53f6.ctex"
metadata={
"vram_texture": false
}
 extends RigidBody2D

@export var paddle_speed = 40000
@export var ball: Ball


func _physics_process(delta):
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * paddle_speed * delta
j;extends RigidBody2D


@export var speed = 500

func _physics_process(delta):
	var movement = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		movement = Vector2.UP
	elif Input.is_action_pressed("move_down"):
		movement = Vector2.DOWN
		
	linear_velocity = movement * speed
r���	�!RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Scenes/Paddles/Paddle.gd ��������
   Texture2D     res://Assets/paddle_or_wall.png ��^y;��t      local://RectangleShape2D_ss4du �         local://PackedScene_vlgnm �         RectangleShape2D       
      B  �C         PackedScene          	         names "   	      Paddle    gravity_scale    lock_rotation    script    RigidBody2D 	   Sprite2D    texture    CollisionShape2D    shape    	   variants                                                       node_count             nodes        ��������       ����                                        ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC�U1%V�4u��	m/Dextends CharacterBody2D

class_name Ball

@export var initial_ball_speed = 20
# speed +2%
@export var speed_multiplier = 1.02

var ball_speed = initial_ball_speed

func _ready():
	start_ball()
	
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * ball_speed * delta)
	
	if(collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier
		
	
func start_ball():
	randomize()
	velocity.x = [-1, 1][randi() % 2] * initial_ball_speed
	velocity.y = [-.8, .8][randi() % 2] * initial_ball_speed
��i����=�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Scenes/ball.gd ��������
   Texture2D    res://Assets/ball.png ���7�Z�B      local://RectangleShape2D_46q75 �         local://PackedScene_mcf1c �         RectangleShape2D       
      B   B         PackedScene          	         names "         Ball    script    CharacterBody2D 	   Sprite2D    texture    CollisionShape2D    shape    	   variants                                          node_count             nodes        ��������       ����                            ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC�)wCextends Area2D

signal point_scored

func _on_body_entered(body):
	pass # Replace with function body.
	if body is Ball:
		point_scored.emit() 
%RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Scenes/edge.gd ��������      local://RectangleShape2D_lfh23 W         local://PackedScene_saglx x         RectangleShape2D             PackedScene          	         names "         Edge    scale    script    Area2D    CollisionShape2D    shape    _on_body_entered    body_entered    	   variants       
   33�?  �B                          node_count             nodes        ��������       ����                                  ����                   conn_count             conns                                       node_paths              editable_instances              version             RSRC|S�I��extends Node2D

var player_points = 0
var enemy_points = 0

@onready var enemy_paddle = $Enemy_paddle
@onready var player_paddle = $Paddle
@onready var ball = $Ball as Ball
@onready var ui = $UI as UI

func _on_enemy_scored():
	enemy_points += 1
	ui.update_enemy_points(enemy_points)
	reset_game_state()
#	print_debug(enemy_points)


func _on_player_scored():
	player_points += 1
	ui.update_player_points(player_points)
	reset_game_state()
#	print_debug(player_points)
	
	
func reset_game_state():
	enemy_paddle.global_position.y = 0
	player_paddle.global_position.y = 0
	ball.global_position = Vector2.ZERO
	ball.velocity = Vector2.ZERO
	player_paddle.linear_velocity = Vector2.ZERO
	ball.start_ball()
�RSRC                    PackedScene            ��������                                                  ..    Ball    resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Scenes/main.gd ��������   PackedScene    res://Scenes/Wall.tscn {��8wfb   PackedScene !   res://Scenes/Paddles/paddle.tscn ��i�̳Jd   Script %   res://Scenes/Paddles/enemy_paddle.gd ��������   PackedScene    res://Scenes/ball.tscn �.��C]V   PackedScene    res://Scenes/edge.tscn G�m��*{
   Texture2D $   res://Assets/pingPongDottedLine.png _��^�   PackedScene    res://Scenes/UI.tscn -`��Z_      local://PackedScene_0wts0 �         PackedScene          	         names "         main    script    Node2D    Walls    Node 	   Top_wall 	   position 	   rotation    scale    Bottom_wall 	   Camera2D    zoom    Paddle    Enemy_paddle    paddle_speed    ball    Ball 	   LeftEdge 
   RightEdge    Line2D    texture_repeat    points    width    texture    texture_mode    UI    _on_enemy_scored    point_scored    _on_player_scored    	   variants                          
      A  �   ��?
     �?  A
      A  D
   ���>���>         
     z�    
     zD                @�                                 
    �z�  �A
    �{D  ��      
         �%                    �D      B                              node_count             nodes     ~   ��������       ����                            ����               ���                                      ���	                                       
   
   ����                     ���                           ���            	      
           @               ���                      ���                           ���                                 ����                                                   ���                    conn_count             conns                                	                              node_paths              editable_instances              version             RSRC���+6*�!Gy�k"extends CanvasLayer

class_name UI

@onready var player_points_label = $%PlayerPoints
@onready var enemy_points_label = $%EnemyPoints

# Called when the node enters the scene tree for the first time.
func _ready():
	player_points_label.text = "%d" % 0
	enemy_points_label.text = "%d" % 0


func update_enemy_points(points: int):
	enemy_points_label.text = "%d" % points
	
	
func update_player_points(points: int):
	player_points_label.text = "%d" % points
�3/e����RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Scenes/UI.gd ��������      local://PackedScene_ewpf6 
         PackedScene          	         names "         UI    script    CanvasLayer    MarginContainer    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical %   theme_override_constants/margin_left &   theme_override_constants/margin_right    PlayerPoints    unique_name_in_owner    layout_mode    size_flags_vertical $   theme_override_font_sizes/font_size    text    Label    EnemyPoints    size_flags_horizontal    	   variants    
                        �?                             @         0             node_count             nodes     B   ��������       ����                            ����                                 	      
                       ����                                                  ����                  	                               conn_count              conns               node_paths              editable_instances              version             RSRC�x�Dg�^RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D     res://Assets/paddle_or_wall.png ��^y;��t      local://RectangleShape2D_s4j0n e         local://PackedScene_bwnsl �         RectangleShape2D       
      B  �C         PackedScene          	         names "         StaticBody2D 	   Sprite2D    texture    CollisionShape2D    shape    	   variants                                 node_count             nodes        ��������        ����                      ����                            ����                   conn_count              conns               node_paths              editable_instances              version             RSRCyGST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[   (�[�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c5bqi7okm3d4x"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 0����	W�����[remap]

path="res://.godot/exported/133200997/export-1fbcc6ebd6e718d2c988cf34e64f4b81-paddle.scn"
��Hz�l|r_�[remap]

path="res://.godot/exported/133200997/export-394aeccd7d7daf05a5efc5be101e4ae2-ball.scn"
�7yKrO^G��*T[remap]

path="res://.godot/exported/133200997/export-36adcf9c7dcf04e51b15eac376477cde-edge.scn"
Å��.G���f���[remap]

path="res://.godot/exported/133200997/export-2ddd04d543d5858e7f20c9299a8b5096-main.scn"
Z(�K�v�k������g[remap]

path="res://.godot/exported/133200997/export-4f62ab20f4ccf50badf9090e15390996-UI.scn"
m[remap]

path="res://.godot/exported/133200997/export-f86cde06fc12a7e1edf600d83efc443a-Wall.scn"
ߎ�&�\+�!�'list=Array[Dictionary]([{
"base": &"CharacterBody2D",
"class": &"Ball",
"icon": "",
"language": &"GDScript",
"path": "res://Scenes/ball.gd"
}, {
"base": &"CanvasLayer",
"class": &"UI",
"icon": "",
"language": &"GDScript",
"path": "res://Scenes/UI.gd"
}])
<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
���"V��
   ���7�Z�B   res://Assets/ball.png��^y;��t   res://Assets/paddle_or_wall.png_��^�#   res://Assets/pingPongDottedLine.png��i�̳Jd    res://Scenes/Paddles/paddle.tscn�.��C]V   res://Scenes/ball.tscnG�m��*{   res://Scenes/edge.tscn��?*�5   res://Scenes/main.tscn-`��Z_   res://Scenes/UI.tscn{��8wfb   res://Scenes/Wall.tscn�By5�_   res://icon.svg��ECFG      application/config/name         pong   application/run/main_scene          res://Scenes/main.tscn     application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg     input/move_up0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_down0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      2   rendering/environment/defaults/default_clear_color                    �?�ӭ