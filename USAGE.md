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

## Scheme Editing

Instead of directly editing clientscheme.res, different files exist in the `resource/scheme` folder to edit specific parts. They are:

- borders.res - this defines borders used by clientscheme.res
- colors.res - this defines colors used by clientscheme.res
- fonts.res - this defines font declarations and font file references used by clientscheme.res

## Font Editing

Font files themselves are found in `resource/fonts`. Two simple fonts are provided -- a completely blank font, and a common block font.

`resource/scheme/fonts.res` is what's used for loading these fonts, and creating their font declarations.

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

## Localization editing

Localization edits should be done in `resource/chat_english.txt`. These can be new strings, or strings copied over from tf_english.txt and edited.

When all edits that are needed are done, `chat_update_all_to_english.bat` or `chat_update_all_to_english.sh` should be run so that the same applies to all other languages.

## Closecaptions

`resource/closecaption_compile.bat` is provided to allow for customized captions. To do this, edit `resource/closecaption_english.txt` and run the compiler. If there are no errors, this will change closecaption_english.dat.

There is also a dedicated `resource/closecaption_` folder that contains multiple optional closecaptions. To add a new one to this:

1. Copy over your `closecaption_english.txt` and `closecaption_english.dat` into the `closecaption_` folder and rename it appropriately.
2. Edit `cfg/hud/captions.cfg` to include an alias for your new closecaptions file.
3. If you want this to be the default, run that alias inside `cfg/hud_firstrun.cfg`.

For further reference:
* https://steamcommunity.com/sharedfiles/filedetails/?id=167785751
* https://www.reddit.com/r/tf2scripthelp/wiki/captions

## Cfg's

Inside the cfg folder there are three cfg files:
1. `hud_always.cfg` - this will be run whenever the game is started
2. `hud_classswitch.cfg` - if the player has set up their cfg's, this will be run whenever the player switches classes
3. `hud_firstrun.cfg` - this will be run the first time the game is started with this hud, and never since

There is also the `valve.rc` file. This is run on startup and performs some setup for `hud_firstrun.cfg`, but should not be edited (`hud_always.cfg` serves this purpose).

To avoid conflicts with other huds also using this as a base, you may want to change the "save file" that keeps track of whether `hud_firstrun.cfg` has ran or not. By default this will be `cfg/hud_has_run.txt` in the root cfg folder (not inside any custom folder). To do this:
1. change `con_logfile "cfg/hud_has_run.txt"` inside `hud_firstrun.cfg`.
2. change `exec hud_has_run.txt` inside `valve.rc` to the same filename.
