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

:: matercomfig compatibility futureproofing
if exist ..\..\cfg\user\scout.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\scout.cfg )
if exist ..\..\cfg\user\soldier.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\soldier.cfg )
if exist ..\..\cfg\user\pyro.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\pyro.cfg )
if exist ..\..\cfg\user\demoman.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\demoman.cfg )
if exist ..\..\cfg\user\heavyweapons.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\heavyweapons.cfg )
if exist ..\..\cfg\user\engineer.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\engineer.cfg )
if exist ..\..\cfg\user\medic.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\medic.cfg )
if exist ..\..\cfg\user\sniper.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\sniper.cfg )
if exist ..\..\cfg\user\spy.cfg ( type dev\ref\add_to_class.cfg >> ..\..\cfg\user\spy.cfg )

:: check all custom folders as well
for /d %%i in (..\*) do (
	:: standard class cfg's
	if exist %%i\cfg\scout.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\scout.cfg )
	if exist %%i\cfg\soldier.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\soldier.cfg )
	if exist %%i\cfg\pyro.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\pyro.cfg )
	if exist %%i\cfg\demoman.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\demoman.cfg )
	if exist %%i\cfg\heavyweapons.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\heavyweapons.cfg )
	if exist %%i\cfg\engineer.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\engineer.cfg )
	if exist %%i\cfg\medic.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\medic.cfg )
	if exist %%i\cfg\sniper.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\sniper.cfg )
	if exist %%i\cfg\spy.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\spy.cfg )
	
	:: mastercomfig compatibility
	if exist %%i\cfg\scout_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\scout_c.cfg )
	if exist %%i\cfg\soldier_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\soldier_c.cfg )
	if exist %%i\cfg\pyro_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\pyro_c.cfg )
	if exist %%i\cfg\demoman_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\demoman_c.cfg )
	if exist %%i\cfg\heavyweapons_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\heavyweapons_c.cfg )
	if exist %%i\cfg\engineer_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\engineer_c.cfg )
	if exist %%i\cfg\medic_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\medic_c.cfg )
	if exist %%i\cfg\sniper_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\sniper_c.cfg )
	if exist %%i\cfg\spy_c.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\spy_c.cfg )
	
	:: mastercomfig compatibility futureproofing
	if exist %%i\cfg\user\scout.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\scout.cfg )
	if exist %%i\cfg\user\soldier.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\soldier.cfg )
	if exist %%i\cfg\user\pyro.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\pyro.cfg )
	if exist %%i\cfg\user\demoman.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\demoman.cfg )
	if exist %%i\cfg\user\heavyweapons.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\heavyweapons.cfg )
	if exist %%i\cfg\user\engineer.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\engineer.cfg )
	if exist %%i\cfg\user\medic.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\medic.cfg )
	if exist %%i\cfg\user\sniper.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\sniper.cfg )
	if exist %%i\cfg\user\spy.cfg ( type dev\ref\add_to_class.cfg >> %%i\cfg\user\spy.cfg )
)