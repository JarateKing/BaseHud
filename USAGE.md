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
