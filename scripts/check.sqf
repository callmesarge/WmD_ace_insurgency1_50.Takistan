

player sidechat "INITIALIZING";
addonclear = false;
naughty = false;

#include "mando.h"
#include "slx.h"

da_lostkey = isClass(configFile >> "CfgPatches" >> "Loki_Lost_Key");

da_inkodisp = isClass(configFile >> "CfgPatches" >> "inko_disposable_oa");

da_jtd = isClass(configFile >> "CfgPatches" >> "JTD_FireAndSmoke");

sleep 0.5;

while {!addonclear} do
{

if (da_mando) then {
hintc "***ADDON DISALLOWED***\n\nMando Missile\n\nPlease disable this if you wish to play here.\n\nREASON: Undesired behavior";
player sidechat "***ADDON DISALLOWED***  Mando Missile   Please disable this if you wish to play here.   REASON: Undesired behavior";
naughty = true;
};
sleep 0.25;

if (da_lostkey) then {
hintc "***ADDON DISALLOWED***\n\nLost Key\n\nPlease disable this if you wish to play here.\n\nREASON: Undesired behavior";
player sidechat "***ADDON DISALLOWED***   Lost Key   Please disable this if you wish to play here.   REASON: Undesired behavior";
naughty = true;
};
sleep 0.25;

if (da_inkodisp) then {
hintc "***ADDON DISALLOWED***\n\nINKO Disposable\n\nPlease disable this if you wish to play here.\n\nREASON: ACE already does this, why are you running this addon?";
player sidechat "***ADDON DISALLOWED***   INKO Disposable   Please disable this if you wish to play here.   REASON: ACE already does this, why are you running this addon?";
naughty = true;
};
sleep 0.25;

if (da_jtd) then {
hintc "***ADDON DISALLOWED***\n\nJTD Fire and Smoke\n\nPlease disable this if you wish to play here.\n\nREASON: Multiplayer unfriendly";
player sidechat "***ADDON DISALLOWED***   JTD Fire and Smoke   Please disable this if you wish to play here.   REASON: Multiplayer unfriendly";

naughty = true;
};
sleep 0.25;

if (da_slx) then {
hintc "***ADDON DISALLOWED***\n\nSLX\n\nPlease disable this if you wish to play here.\n\nREASON: Multiplayer unfriendly";
player sidechat "***ADDON DISALLOWED***   SLX   Please disable this if you wish to play here.   REASON: Multiplayer unfriendly";
naughty = true;
};
sleep 0.25;

if (naughty) then {
player sidechat "YOU WILL NOW BE DISCONNECTED";
player action ["eject", vehicle player];
removeallweapons player;
removeallitems player;
player setPos (getmarkerpos "jail");
sleep 5;
endmission "end3";
};

if (!naughty) exitWith {
addonclear = true;
player sidechat "INITIALIZATION COMPLETE";
nul= [player] execVM "scripts\tkcheck.sqf";
hint "Welcome to 6th Airborne - Insurgency server, Do not forget to check out Notes in map or the signs for further information";
};

sleep 0.5;
};