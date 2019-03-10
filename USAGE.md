# Usage

This describes the intended structure and ways to use certain features inside the base hud.

## Hud Files

Hud files (those found in resource/ui/) should exist similar to mainmenuoverride.res provided. It appears as:

```
#base "base/mainmenuoverride.res"

"Resource/UI/MainMenuOverride.res"
{
}
```

For compatibility with auto-update scripts, the file itself should be nearly empty, and refer to base/mainmenuoverride.res for all the default variables. This also cleans up the file itself. Changes should not be made to base/mainmenuoverride.res, and any changes from default should only be what's necessary, like so:

```
#base "base/mainmenuoverride.res"

"Resource/UI/MainMenuOverride.res"
{
	"FooterLine"
	{
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}
}
```

## Removing Playbutton Dimmer

The screen dimmer that appears when the play button is pressed can be disabled by:

1. Going into `cfg/hud_always.cfg` and uncommenting `hud_remove_dimmer`
2. Going into `resource/ui/mainmenuoverride.res` and uncommenting `#base "custom/remove_dimmer.res"`

## Edited cp_icons

The vtf files for the cp_icons can be found inside `materials/vgui/replay/thumbnails/cp_icons` and can be edited freely. These will automatically get preloaded, and will work in sv_pure.

## Crosshair Hitmarkers

Crosshairs can be added in the `resource/ui/custom/crosshair.res` file.

The crosshair can be recolored (or achieve any other animated effect) when you do damage to another player by editing the `AnimateHitmarker` animation inside `scripts/anim_custom.txt`. This automatically includes a fix for fps drops when doing rapid damage (such as with a flamethrower).

## Animation Locks

Certain hard-to-edit things can be edited with animation locks. The setup for this can be found inside `scripts/anim_locking.txt` and an example `RemoveChatBG` anim lock is provided.

To enable this:
1. Use `set_cfg.bat` or `setup_cfg.sh` and tell your users to run them too.
2. If you want to remove the chat bg, uncomment `RunEvent RemoveChatBG 0.0` inside `scripts/anim_locking.txt`.
3. If you want to do a different anim lock, add it as a new animation inside `scripts/anim_locking.txt` and make the `AnimLock` event run it at time 0.0.
