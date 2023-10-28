extends Node
class_name DialogicBackground

## This is the base class for dialogic backgrounds. 
## Extend it and override it's methods when you create a custom background.
## You can take a look at the default background to get an idea of how it's working.


## Load the new background in here. 
## The time argument is given for when [_should_do_background_update] returns true 
## (then you have to do a transition in here)
func _update_background(argument:String, time:float) -> void:
	pass


## If a background event with this scene is encountered while this background is used,
##   this decides whether to create a new instance and call fade_out or just call [_update_background] # on this scene. Default is false
func _should_do_background_update(argument:String) -> bool:
	return false


## Called by dialogic when first created. 
## If you return false (by default) it will attempt to animate the "modulate" property. 
func _fade_in(time:float) -> bool:
	return false


## Called by dialogic before removing (done by dialogic). 
## If you return false (by default) it will attempt to animate the "modulate" property. 
func _fade_out(time:float) -> bool:
	return false


## Returns the texture of the background viewport, which contains what is currently drawn in the background
func _get_background_texture() -> ViewportTexture:
	# fail when this method gets called and does not have a proper override.
	push_error("\"_get_background_texture()\" was not implemented in the child class of DialogicBackground")
	assert(false,"\"_get_background_texture()\" was not implemented in the child class of DialogicBackground")
	return null
