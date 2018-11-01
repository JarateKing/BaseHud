:: always add / create class cfg's in cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\scout.cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\soldier.cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\pyro.cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\demoman.cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\heavyweapons.cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\engineer.cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\medic.cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\sniper.cfg
type dev\ref\add_to_class.cfg >> ..\..\cfg\spy.cfg

:: mastercomfig compatibility, since they are overridden
if exist ..\..\cfg\scout_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\scout_c.cfg )
if exist ..\..\cfg\soldier_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\soldier_c.cfg )
if exist ..\..\cfg\pyro_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\pyro_c.cfg )
if exist ..\..\cfg\demoman_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\demoman_c.cfg )
if exist ..\..\cfg\heavyweapons_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\heavyweapons_c.cfg )
if exist ..\..\cfg\engineer_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\engineer_c.cfg )
if exist ..\..\cfg\medic_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\medic_c.cfg )
if exist ..\..\cfg\sniper_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\sniper_c.cfg )
if exist ..\..\cfg\spy_c.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\spy_c.cfg )

for /d %%i in (..\*) do (
	if exist %%i\cfg\scout.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\scout.cfg )
	if exist %%i\cfg\soldier.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\soldier.cfg )
	if exist %%i\cfg\pyro.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\pyro.cfg )
	if exist %%i\cfg\demoman.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\demoman.cfg )
	if exist %%i\cfg\heavyweapons.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\heavyweapons.cfg )
	if exist %%i\cfg\engineer.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\engineer.cfg )
	if exist %%i\cfg\medic.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\medic.cfg )
	if exist %%i\cfg\sniper.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\sniper.cfg )
	if exist %%i\cfg\spy.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\spy.cfg )
)